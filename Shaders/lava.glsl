// Lava Wave Shader for MKXP-Z
// Detects red/orange lava pixels and applies slow, heavy wave distortion
// Non-lava pixels stay untouched

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float waveSpeed;
uniform float waveStrength;

// Check if a color is "lava" based on red/orange dominance
bool isLava(vec3 c) {
    float maxC = max(c.r, max(c.g, c.b));
    float minC = min(c.r, min(c.g, c.b));

    // Red dominant, warm hue (red-orange-yellow range)
    bool redDominant = c.r > c.b * 1.5 && c.r > 0.3;
    bool warmTone = c.r > c.b && c.g < c.r;

    return redDominant && warmTone && maxC > 0.2;
}

void main() {
    vec2 uv = v_texCoord;
    vec4 original = texture2D(texture, uv);
    float speed = waveSpeed > 0.0 ? waveSpeed : 0.6;
    float strength = waveStrength > 0.0 ? waveStrength : 1.2;

    if (!isLava(original.rgb)) {
        gl_FragColor = original;
        return;
    }

    // Slow, heavy lava displacement
    float waveX = sin(uv.y * 25.0 + time * 1.5 * speed) * 0.003 * strength
                + sin(uv.y * 12.0 - time * 0.8 * speed) * 0.002 * strength;
    float waveY = cos(uv.x * 20.0 + time * 1.2 * speed) * 0.0025 * strength
                + sin(uv.x * 10.0 + time * 0.6 * speed) * 0.0018 * strength;

    vec2 displaced = uv + vec2(waveX, waveY);
    vec4 waveColor = texture2D(texture, displaced);

    if (isLava(waveColor.rgb)) {
        // Pulsing ember glow
        float glow = sin(uv.x * 15.0 + uv.y * 10.0 + time * 2.0 * speed) * 0.04
                   + sin(uv.x * 30.0 - time * 3.0 * speed) * 0.02;
        waveColor.r += glow * strength;
        waveColor.g += glow * strength * 0.3;

        gl_FragColor = vec4(clamp(waveColor.rgb, 0.0, 1.0), waveColor.a);
    } else {
        gl_FragColor = original;
    }
}
