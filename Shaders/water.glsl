// Water Wave Shader for MKXP-Z
// Detects blue water pixels and applies wave distortion only to them
// Non-water pixels (land, sprites, objects) stay untouched
// Creates the illusion of animated water that flows around objects

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float waveSpeed;
uniform float waveStrength;
uniform float blueThreshold;

// Check if a color is "water blue" based on channel ratios
bool isWater(vec3 c) {
    float threshold = blueThreshold > 0.0 ? blueThreshold : 0.35;
    // Water: blue channel dominant, reasonable saturation
    float maxC = max(c.r, max(c.g, c.b));
    float minC = min(c.r, min(c.g, c.b));
    float sat = (maxC > 0.01) ? (maxC - minC) / maxC : 0.0;

    // Blue is dominant or near-dominant, with some saturation
    bool blueDominant = c.b > c.r * 1.1 && c.b > threshold;
    bool blueGreen = c.b > threshold && c.g > threshold && c.r < c.b * 0.85;

    return (blueDominant || blueGreen) && sat > 0.15 && maxC > 0.15;
}

void main() {
    vec2 uv = v_texCoord;
    vec4 original = texture2D(texture, uv);
    float speed = waveSpeed > 0.0 ? waveSpeed : 1.0;
    float strength = waveStrength > 0.0 ? waveStrength : 1.0;

    // If current pixel is not water, output unchanged
    if (!isWater(original.rgb)) {
        gl_FragColor = original;
        return;
    }

    // Calculate wave displacement for water pixels
    float waveX = sin(uv.y * 60.0 + time * 3.0 * speed) * 0.0025 * strength
                + sin(uv.y * 30.0 - time * 2.0 * speed) * 0.0015 * strength;
    float waveY = cos(uv.x * 50.0 + time * 2.5 * speed) * 0.002 * strength
                + sin(uv.x * 25.0 + time * 1.8 * speed) * 0.0012 * strength;

    vec2 displaced = uv + vec2(waveX, waveY);

    // Sample the displaced position
    vec4 waveColor = texture2D(texture, displaced);

    // Only use displaced color if that pixel is also water
    // This prevents pulling land/sprite pixels into water area
    if (isWater(waveColor.rgb)) {
        // Subtle brightness variation for wave highlights
        float highlight = sin(uv.x * 40.0 + uv.y * 30.0 + time * 4.0 * speed) * 0.03
                        + sin(uv.x * 80.0 - time * 5.0 * speed) * 0.015;
        waveColor.rgb += highlight * strength;

        gl_FragColor = vec4(clamp(waveColor.rgb, 0.0, 1.0), waveColor.a);
    } else {
        // Edge of water — use original to keep clean boundary
        gl_FragColor = original;
    }
}
