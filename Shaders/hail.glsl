// Hail Shader for MKXP-Z
// Hard, fast-falling small ice balls with bright glints.
// Optional uniforms:
//   intensity (1.0), count (40), speed (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n   = count     > 0.0 ? count     : 40.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;

    float ice = 0.0;
    float glint = 0.0;

    for (int i = 0; i < 60; i++) {
        if (float(i) >= n) break;
        float fi = float(i);
        float seedX = hash(vec2(fi, 8.0));
        float seedT = hash(vec2(fi, 16.0));
        float seedS = hash(vec2(fi, 32.0));

        // Fast fall, short life
        float life = 1.2 + seedS * 1.0;
        float prog = mod(time * spd * 0.55 + seedT * life, life) / life;

        vec2 pos;
        // Slight diagonal drift
        pos.x = seedX + (1.0 - prog) * 0.04;
        pos.y = prog;

        float d = length(uv - pos);
        // Hard core + bright glint
        ice  += 0.0006 / (d * d + 0.0004);
        if (d < 0.005) glint += 1.0;
    }

    c.rgb += vec3(0.85, 0.92, 1.0) * ice * str * 0.55;
    c.rgb += vec3(1.0, 1.0, 1.0) * glint * str * 0.4;
    // Cool tint for cold weather
    c.rgb *= mix(vec3(1.0), vec3(0.92, 0.96, 1.05), 0.25 * str);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
