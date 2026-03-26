// Water Wave Shader for MKXP-Z
// Uses a tilemap water mask (1px per tile) for precise border detection.
// Supports connected maps (water routes). Waves never bleed into land.

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform sampler2D waterMask;   // 1px per tile, white = water
uniform float time;
uniform vec2  resolution;      // screen size in pixels (512, 384)
uniform vec2  mapSize;         // mask size in tiles (covers all connected maps)
uniform vec2  scrollOffset;    // camera scroll in pixels (from display_x/y)
uniform vec2  maskOffset;      // pixel offset from current map origin to mask origin
uniform float waveSpeed;
uniform float waveStrength;
uniform float pixelSize;

// Is this screen pixel over a water tile?
bool isWaterTile(vec2 screenPx) {
    vec2 mapPx     = screenPx + scrollOffset;
    vec2 maskPx    = mapPx - maskOffset;
    vec2 tileCoord = (floor(maskPx / 32.0) + 0.5) / mapSize;
    if (tileCoord.x < 0.0 || tileCoord.x > 1.0 ||
        tileCoord.y < 0.0 || tileCoord.y > 1.0)
        return false;
    return texture2D(waterMask, tileCoord).r > 0.5;
}

// Does the pixel color look like water? (catches sprites/objects on top)
bool isWaterColor(vec3 c) {
    float maxC = max(c.r, max(c.g, c.b));
    float minC = min(c.r, min(c.g, c.b));
    float sat  = (maxC > 0.01) ? (maxC - minC) / maxC : 0.0;
    bool blueDom   = c.b > c.r * 1.15 && c.b > 0.3;
    bool blueGreen = c.b > 0.3 && c.g > 0.2 && c.r < c.b * 0.85;
    return (blueDom || blueGreen) && sat > 0.12 && maxC > 0.12;
}

void main() {
    vec2 uv       = v_texCoord;
    vec4 original = texture2D(texture, uv);
    vec2 res      = resolution.x > 0.0 ? resolution : vec2(512.0, 384.0);
    vec2 screenPx = uv * res;

    // Not a water tile, or sprite/object sitting on water → pass through
    if (!isWaterTile(screenPx) || !isWaterColor(original.rgb)) {
        gl_FragColor = original;
        return;
    }

    float speed    = waveSpeed    > 0.0 ? waveSpeed    : 1.0;
    float strength = waveStrength > 0.0 ? waveStrength : 1.0;
    float minPx    = pixelSize    > 0.0 ? pixelSize    : 2.0;
    vec2  pxUV     = minPx / res;

    // Sinusoidal wave displacement (two layers)
    float waveX = sin(uv.y * 50.0 + time * 2.5 * speed) * 0.003 * strength
                + sin(uv.y * 25.0 - time * 1.8 * speed) * 0.002 * strength;
    float waveY = cos(uv.x * 40.0 + time * 2.0 * speed) * 0.0025 * strength
                + sin(uv.x * 20.0 + time * 1.5 * speed) * 0.0015 * strength;

    // Snap to pixel grid (2px min — no sub-pixel mixels)
    waveX = floor(waveX / pxUV.x + 0.5) * pxUV.x;
    waveY = floor(waveY / pxUV.y + 0.5) * pxUV.y;

    vec2 displaced = uv + vec2(waveX, waveY);
    vec2 dispPx    = displaced * res;
    vec4 waveColor = texture2D(texture, displaced);

    // Border: displaced must also be a water tile AND look like water
    if (isWaterTile(dispPx) && isWaterColor(waveColor.rgb)) {
        float highlight = sin(uv.x * 35.0 + uv.y * 25.0 + time * 3.0 * speed) * 0.025
                        + sin(uv.x * 70.0 - time * 4.0 * speed) * 0.012;
        waveColor.rgb += highlight * strength;
        gl_FragColor = vec4(clamp(waveColor.rgb, 0.0, 1.0), waveColor.a);
    } else {
        gl_FragColor = original;
    }
}
