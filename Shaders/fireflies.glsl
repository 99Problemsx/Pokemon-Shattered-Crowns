// Fireflies Shader for MKXP-Z
// Animated glowing particles floating across the screen
// Requires: uniform float time (updated from Ruby each frame)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;
    float numFireflies = count > 0.0 ? count : 15.0;
    float str = intensity > 0.0 ? intensity : 1.0;

    float glow = 0.0;

    for (int i = 0; i < 30; i++) {
        if (float(i) >= numFireflies) break;
        float fi = float(i);
        vec2 base = vec2(hash(vec2(fi, 0.0)), hash(vec2(0.0, fi)));

        vec2 pos = base;
        pos.x += sin(time * (0.3 + fi * 0.07) + fi * 1.3) * 0.1;
        pos.y += cos(time * (0.2 + fi * 0.05) + fi * 2.1) * 0.08;

        float pulse = 0.5 + 0.5 * sin(time * (1.5 + fi * 0.4) + fi * 4.0);
        pulse *= pulse;

        float d = length(uv - pos);
        glow += pulse * 0.002 / (d * d + 0.0008);
    }

    vec3 fireflyColor = vec3(1.0, 0.9, 0.3) * str;
    color.rgb += glow * fireflyColor;

    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
