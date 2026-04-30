// Falling Leaves Shader for MKXP-Z
// Autumn leaves with rotation and tumbling. Different from :petals (more chaotic).
// Optional uniforms:
//   intensity (1.0), count (28), speed (1.0), tint (0.0)
//   tint: 0 = mix of orange/red/yellow, 1 = green (spring), 2 = brown (late autumn)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;
uniform float tint;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

// Leaf shape — wider oval with pointed tip (rotated)
float leafShape(vec2 p, float angle) {
    float c = cos(angle), s = sin(angle);
    vec2 q = vec2(c * p.x - s * p.y, s * p.x + c * p.y);
    // Stretched along x with a pointed end
    float taper = abs(q.x) * 0.7;
    float dy = abs(q.y) - 0.4 * (1.0 - taper);
    float d = max(taper - 0.5, dy);
    return smoothstep(0.05, 0.0, d);
}

vec3 pickLeafColor(float seed, float tnt) {
    if (tnt < 0.5) {
        // Random autumn mix
        if (seed < 0.33) return vec3(1.0, 0.50, 0.15);
        if (seed < 0.66) return vec3(0.95, 0.30, 0.15);
        return vec3(1.0, 0.85, 0.30);
    } else if (tnt < 1.5) {
        return vec3(0.30, 0.70, 0.25);
    } else {
        return vec3(0.55, 0.35, 0.20);
    }
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n   = count     > 0.0 ? count     : 28.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;
    float tnt = clamp(tint, 0.0, 2.0);

    float coverage = 0.0;
    vec3 accColor  = vec3(0.0);

    for (int i = 0; i < 50; i++) {
        if (float(i) >= n) break;
        float fi    = float(i);
        float seedX = hash(vec2(fi,  3.0));
        float seedT = hash(vec2(fi, 13.0));
        float seedR = hash(vec2(fi, 31.0));
        float seedC = hash(vec2(fi, 47.0));

        float life = 6.0 + seedR * 5.0;
        float prog = mod(time * spd * 0.14 + seedT * life, life) / life;

        // Wider chaotic horizontal sway
        vec2 pos;
        pos.x = seedX
              + sin(time * (0.5 + seedR * 1.6) + fi * 1.5) * 0.18
              + sin(time * (0.2 + seedR * 0.8) + fi * 0.7) * 0.06;
        pos.y = prog;

        float angle = time * (2.0 + seedR * 4.0) + fi * 1.7;
        vec2 local = (uv - pos) / 0.030;
        float leaf = leafShape(local, angle);

        vec3 lcol = pickLeafColor(seedC, tnt);
        coverage += leaf;
        accColor += lcol * leaf;
    }

    if (coverage > 0.001) {
        accColor /= coverage;
        float alpha = clamp(coverage, 0.0, 1.0) * str * 0.9;
        color.rgb = mix(color.rgb, accColor, alpha);
    }

    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
