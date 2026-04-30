// Ash Fall Shader for MKXP-Z
// Slow falling gray ash particles with desaturation tint. Volcanic areas.
// Optional uniforms:
//   intensity (1.0), count (45), speed (1.0)

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

    float n   = count     > 0.0 ? count     : 45.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;

    // Ash haze / desaturation
    float gray = dot(c.rgb, vec3(0.30, 0.59, 0.11));
    c.rgb = mix(c.rgb, vec3(gray) * vec3(1.05, 1.0, 0.92), 0.35 * str);

    // Falling particles
    float ash = 0.0;
    for (int i = 0; i < 80; i++) {
        if (float(i) >= n) break;
        float fi = float(i);
        float seedX = hash(vec2(fi, 6.0));
        float seedT = hash(vec2(fi, 14.0));
        float seedS = hash(vec2(fi, 28.0));

        float life = 5.0 + seedS * 4.0;
        float prog = mod(time * spd * 0.10 + seedT * life, life) / life;

        vec2 pos;
        pos.x = seedX + sin(time * (0.3 + seedS * 0.8) + fi * 1.2) * 0.05;
        pos.y = prog;

        float d = length(uv - pos);
        ash += 0.0008 / (d * d + 0.0008);
    }

    c.rgb += vec3(0.6, 0.58, 0.55) * ash * str * 0.4;
    c.rgb *= 0.85;   // overall darkening from sky overcast

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
