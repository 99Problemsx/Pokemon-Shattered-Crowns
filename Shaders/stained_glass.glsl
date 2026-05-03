// Stained Glass Shader for MKXP-Z
// Procedural stained-glass colored light patches projected onto the scene.
// Cathedrals, temples, magical halls.
// Optional uniforms:
//   intensity (1.0), scale (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;
uniform float scale;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

// Voronoi-like cell pattern returning cell ID
vec2 voronoi(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 best = vec2(0.0);
    float bestD = 99.0;
    for (int y = -1; y <= 1; y++) {
        for (int x = -1; x <= 1; x++) {
            vec2 g = vec2(float(x), float(y));
            vec2 o = vec2(hash(i + g + 1.7), hash(i + g + 9.3));
            vec2 r = g + o - f;
            float d = dot(r, r);
            if (d < bestD) {
                bestD = d;
                best = i + g;
            }
        }
    }
    return best;
}

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float sc  = scale     > 0.0 ? scale     : 1.0;

    vec2 cell = voronoi(uv * 5.0 * sc);
    // Pseudo-random colored pane per cell
    vec3 pane;
    pane.r = hash(cell + 1.0);
    pane.g = hash(cell + 2.0);
    pane.b = hash(cell + 3.0);
    // Bias toward saturated jewel tones
    pane = mix(pane, vec3(0.8, 0.2, 0.6), 0.3);
    pane = pow(pane, vec3(0.6));

    c.rgb = mix(c.rgb, c.rgb * pane * 1.4 + pane * 0.3, 0.45 * str);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
