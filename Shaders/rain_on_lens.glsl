// Rain on Lens Shader for MKXP-Z
// Water droplets stuck to a virtual lens — they slowly slide and refract.
// Optional uniforms:
//   intensity (1.0), count (12), speed (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec2 uv = v_texCoord;

    float n   = count     > 0.0 ? count     : 12.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;

    vec2 dropOffset = vec2(0.0);
    float coverage = 0.0;

    for (int i = 0; i < 20; i++) {
        if (float(i) >= n) break;
        float fi = float(i);
        float seedX = hash(vec2(fi, 3.0));
        float seedT = hash(vec2(fi, 11.0));
        float seedR = hash(vec2(fi, 17.0));

        // Slow downward slide
        float life = 8.0 + seedR * 8.0;
        float prog = mod(time * spd * 0.07 + seedT * life, life) / life;

        vec2 pos;
        pos.x = seedX;
        pos.y = prog;

        float radius = 0.020 + seedR * 0.025;
        vec2 d = uv - pos;
        // Stretched droplet (taller than wide)
        d.y *= 0.75;
        float dist = length(d);

        if (dist < radius) {
            float depth = 1.0 - dist / radius;
            // Refraction direction — droplet acts like a lens
            dropOffset += d * depth * 0.4;
            coverage += depth;
        }
    }

    coverage = clamp(coverage, 0.0, 1.0);
    vec2 sampledUV = uv - dropOffset * 0.05 * str;
    vec4 c = texture2D(texture, sampledUV);

    // Slight brightness lift on the droplets
    c.rgb += vec3(0.10) * coverage * str;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
