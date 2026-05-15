// Screen Freeze — ice crystals creep in from the screen edges.
// Use for: cold zones, ice status afflictions, "frozen heart" boss tells.
//
// Optional uniforms:
//   progress (0..1, default 0.6) — 0 = no ice, 1 = fully frozen
//   speed    (0..2, default 1.0) — crystal animation speed
//   tint     (0..1, default 0.6) — cyan tint strength

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float progress;
uniform float speed;
uniform float tint;

float hash21(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

// Cheap voronoi-ish: distance to the nearest random point on a grid
float crystal(vec2 p) {
    vec2 g = floor(p);
    vec2 f = fract(p);
    float best = 1.0;
    for (int j = -1; j <= 1; j++) {
        for (int i = -1; i <= 1; i++) {
            vec2 nb = vec2(float(i), float(j));
            vec2 pt = vec2(hash21(g + nb), hash21(g + nb + 17.0));
            float dist = length(nb + pt - f);
            best = min(best, dist);
        }
    }
    return best;
}

void main() {
    vec4 c = texture2D(texture, v_texCoord);

    float prog = clamp(progress > 0.0 ? progress : 0.6, 0.0, 1.0);
    float spd  = speed    > 0.0 ? speed    : 1.0;
    float tStr = tint     > 0.0 ? tint     : 0.6;

    // Edge mask — 0 in centre, 1 at the corners
    vec2  d    = v_texCoord - 0.5;
    float edge = max(abs(d.x), abs(d.y)) * 2.0;
    edge       = pow(edge, 1.5);

    // How far the ice has spread inward — `prog` controls reach
    float reach = smoothstep(1.0 - prog, 1.0 - prog * 0.3, edge);

    // Crystal pattern in screen space, slowly shifting
    vec2 p = v_texCoord * vec2(28.0, 22.0) + vec2(time * 0.06 * spd, 0.0);
    float v = crystal(p);
    // Bright ridges — the crystal cell walls
    float ridge = smoothstep(0.05, 0.0, v);

    // Compose: ice cyan-white over the reach zone, modulated by crystal ridges
    vec3 ice = mix(vec3(0.70, 0.90, 1.05), vec3(1.0), ridge);
    c.rgb = mix(c.rgb, ice, reach * (0.55 + 0.45 * ridge) * tStr);

    // Slight overall blue cast on the iced area
    c.rgb = mix(c.rgb, c.rgb * vec3(0.85, 0.95, 1.10), reach * 0.35);

    gl_FragColor = c;
}
