// Water Wave Shader for MKXP-Z
// Uses a tilemap water mask (1px per tile) for precise border detection.
// Supports connected maps (water routes). Waves never bleed into land.
//
// v2: Adds animated caustic light patterns and a slow "breathing" pulse
//     (water rises/sinks in brightness over time).

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

// Caustic / breathe uniforms (optional — sensible defaults when zero/unset)
uniform float causticStrength; // overall caustic brightness (0..2, default 0.55)
uniform float causticScale;    // tile density of the pattern (default 1.0)
uniform float pulseSpeed;      // breathing rate (default 0.6 = ~10s per pulse)
uniform float pulseDepth;      // how much it dims at the bottom of the pulse
                               //   0.0 = constant, 0.5 = strong, default 0.35
uniform float foamStrength;    // shoreline foam brightness (0 disables, default 0.7)

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

// Caustic light pattern — sampled in MAP space so it scrolls with the camera
// and doesn't slide across the water as the player moves.
float causticPattern(vec2 mapPx, float t, float sc) {
    vec2 p = mapPx / 32.0 * 0.55 * sc; // ~1 caustic cell per 1.8 tiles
    float a = sin(p.x + sin(p.y + t)) + sin(p.y - sin(p.x + t * 0.7));
    float b = sin(p.x * 1.3 + t * 1.2) * cos(p.y * 1.4 - t * 0.9);
    float c = 0.5 + 0.5 * (a + b * 0.6) / 2.5;
    // Sharpen into thin bright ridges
    return pow(clamp(c, 0.0, 1.0), 6.0) * 4.0;
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
    if (!isWaterTile(dispPx) || !isWaterColor(waveColor.rgb)) {
        gl_FragColor = original;
        return;
    }

    // ---- Caustic light pattern (in map-space → scrolls with camera) ----
    float caStr   = causticStrength > 0.0 ? causticStrength : 0.55;
    float caScale = causticScale    > 0.0 ? causticScale    : 1.0;
    float caTime  = time * speed * 0.4;
    vec2  mapPx   = screenPx + scrollOffset;
    float caustic = causticPattern(mapPx, caTime, caScale);

    // ---- Breathing pulse — water rises/sinks in brightness over time ----
    float pSpeed = pulseSpeed > 0.0 ? pulseSpeed : 0.6;
    float pDepth = pulseDepth > 0.0 ? pulseDepth : 0.35;
    // 1 at the top of the pulse, (1 - pDepth) at the bottom
    float breathe = 1.0 - pDepth * 0.5 * (1.0 - sin(time * pSpeed));

    // Existing fine highlight (kept for sparkle)
    float highlight = sin(uv.x * 35.0 + uv.y * 25.0 + time * 3.0 * speed) * 0.025
                    + sin(uv.x * 70.0 - time * 4.0 * speed) * 0.012;

    // Cool blue caustic tint, modulated by the breathing pulse
    vec3 causticColor = vec3(0.55, 0.85, 1.0) * caustic * caStr * 0.45;

    waveColor.rgb  = waveColor.rgb * breathe + causticColor * breathe;
    waveColor.rgb += highlight * strength;

    // ---- Shoreline foam — bright cyan-white edge where water meets land ----
    // Sample 4 neighbour pixels at ±1 tile offset; if any is non-water, this
    // pixel is at the shore. Pulse the foam slightly with the breathe phase.
    float fStr = foamStrength > 0.0 ? foamStrength : 0.7;
    if (fStr > 0.001) {
        float foamRadius = 6.0;  // pixels — width of the foam band
        bool nonWaterNeighbour = false;
        for (int k = 0; k < 4; k++) {
            vec2 off = vec2(0.0);
            if (k == 0) off = vec2( foamRadius, 0.0);
            if (k == 1) off = vec2(-foamRadius, 0.0);
            if (k == 2) off = vec2(0.0,  foamRadius);
            if (k == 3) off = vec2(0.0, -foamRadius);
            if (!isWaterTile(screenPx + off)) { nonWaterNeighbour = true; break; }
        }
        if (nonWaterNeighbour) {
            // Foam wobbles slightly so it isn't a static halo
            float foamWobble = 0.85 + 0.15 * sin(time * 1.5 + screenPx.x * 0.18);
            vec3  foamColor  = vec3(0.85, 1.0, 1.05);
            waveColor.rgb    = mix(waveColor.rgb, foamColor,
                                   fStr * 0.65 * foamWobble * breathe);
        }
    }

    gl_FragColor = vec4(clamp(waveColor.rgb, 0.0, 1.0), waveColor.a);
}
