// Dust Motes Shader for MKXP-Z
// Tiny floating particles drifting slowly in light. Caves, ruins, shrines —
// pairs well with [SC] Ancestral Weapons altars and indoor sunbeams.
//
// Optional uniforms:
//   intensity (default 1.0) - mote brightness
//   count     (default 50)  - number of motes (capped at 80)
//   speed     (default 1.0) - drift speed
//   warmth    (default 0.5) - 0 = cool white, 1 = warm gold

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;
uniform float warmth;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n   = count     > 0.0 ? count     : 50.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;
    float w   = warmth    >= 0.0 ? warmth   : 0.5;

    float glow = 0.0;
    for (int i = 0; i < 80; i++) {
        if (float(i) >= n) break;
        float fi = float(i);
        vec2 base = vec2(hash(vec2(fi, 0.0)), hash(vec2(0.0, fi)));

        // Drift slowly in both directions, looping around the unit square
        vec2 pos;
        pos.x = fract(base.x + sin(time * (0.05 + fi * 0.013) * spd + fi) * 0.20);
        pos.y = fract(base.y + cos(time * (0.04 + fi * 0.011) * spd + fi * 1.7) * 0.15);

        float pulse = 0.6 + 0.4 * sin(time * (0.8 + fi * 0.07) * spd);

        float d = length(uv - pos);
        // Tiny, sharp specks — much smaller than fireflies
        glow += pulse * 0.0003 / (d * d + 0.00012);
    }

    vec3 cool = vec3(0.95, 0.98, 1.00);
    vec3 warm = vec3(1.00, 0.85, 0.55);
    vec3 dustColor = mix(cool, warm, clamp(w, 0.0, 1.0));

    color.rgb += dustColor * glow * str * 0.55;
    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
