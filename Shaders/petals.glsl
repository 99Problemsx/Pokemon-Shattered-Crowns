// Petals Shader for MKXP-Z
// Falling petals / leaves with rotation and wider drift than snow.
// Festival maps, autumn routes, cherry blossom paths.
//
// Optional uniforms:
//   intensity (default 1.0)  - petal opacity / brightness
//   count     (default 30)   - petal count (capped at 50)
//   speed     (default 1.0)  - fall speed
//   sway      (default 0.12) - horizontal drift amplitude
//   tint      (default 0.0)  - 0 = pink (sakura), 1 = orange (autumn), 2 = white

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;
uniform float sway;
uniform float tint;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

// Petal SDF: oriented oval (longer along rotated axis)
float petalShape(vec2 p, float angle) {
    float c = cos(angle);
    float s = sin(angle);
    vec2 q = vec2(c * p.x - s * p.y, s * p.x + c * p.y);
    // Stretched ellipse
    float d = length(q * vec2(1.4, 0.55));
    return d;
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n     = count     > 0.0 ? count     : 30.0;
    float str   = intensity > 0.0 ? intensity : 1.0;
    float spd   = speed     > 0.0 ? speed     : 1.0;
    float swayA = sway      > 0.0 ? sway      : 0.12;

    vec3 petalColor;
    if (tint < 0.5) {
        petalColor = vec3(1.0, 0.65, 0.80);  // sakura pink
    } else if (tint < 1.5) {
        petalColor = vec3(1.0, 0.55, 0.20);  // autumn orange
    } else {
        petalColor = vec3(1.0, 0.95, 0.85);  // soft white
    }

    float coverage = 0.0;
    vec3 accColor  = vec3(0.0);

    for (int i = 0; i < 50; i++) {
        if (float(i) >= n) break;
        float fi    = float(i);
        float seedX = hash(vec2(fi,  3.0));
        float seedT = hash(vec2(fi, 17.0));
        float seedR = hash(vec2(fi, 29.0));

        float life = 5.0 + seedR * 4.0;
        float prog = mod(time * spd * 0.16 + seedT * life, life) / life;

        vec2 pos;
        pos.x = seedX + sin(time * (0.4 + seedR * 1.3) + fi * 2.7) * swayA;
        pos.y = prog;

        // Per-petal rotation that turns over time
        float angle = time * (1.5 + seedR * 2.5) + fi * 1.1;

        vec2 local = (uv - pos) / 0.022;
        float d = petalShape(local, angle);

        // Soft petal mask
        float petal = 1.0 - smoothstep(0.6, 1.0, d);
        // Slight color variation across the petal
        vec3 c = petalColor * (0.85 + 0.15 * sin(d * 3.14));

        coverage += petal;
        accColor += c * petal;
    }

    if (coverage > 0.001) {
        accColor /= coverage;
        float alpha = clamp(coverage, 0.0, 1.0) * str * 0.85;
        color.rgb = mix(color.rgb, accColor, alpha);
    }

    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
