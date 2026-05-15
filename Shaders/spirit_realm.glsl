// Spirit Realm Filter — for [SC] Spirit Realm maps
// Ghostly cyan/purple tint + slow vertical drift + chromatic edges.
//
// Optional uniforms:
//   tint      (0..2, default 1.0) — overall tint strength
//   drift     (0..2, default 1.0) — vertical floating speed
//   aberration (0..2, default 1.0) — RGB-split intensity
//   desat     (0..1, default 0.5) — desaturation amount

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float tint;
uniform float drift;
uniform float aberration;
uniform float desat;

void main() {
    float tStr  = tint       > 0.0 ? tint       : 1.0;
    float dStr  = drift      > 0.0 ? drift      : 1.0;
    float abStr = aberration > 0.0 ? aberration : 1.0;
    float dsat  = desat      > 0.0 ? desat      : 0.5;

    // Slow vertical drift — world feels like it's floating
    vec2 uv = v_texCoord;
    uv.y += sin(time * 0.3 * dStr) * 0.004;
    uv.x += sin(time * 0.2 * dStr + uv.y * 4.0) * 0.002;

    // Chromatic aberration — RGB channels split slightly outward from center
    vec2 dir = uv - 0.5;
    float ab = abStr * 0.004;
    float r  = texture2D(texture, uv + dir * ab).r;
    float g  = texture2D(texture, uv).g;
    float b  = texture2D(texture, uv - dir * ab).b;
    float a  = texture2D(texture, uv).a;
    vec3  c  = vec3(r, g, b);

    // Desaturate then re-tint cyan-purple
    float lum  = dot(c, vec3(0.299, 0.587, 0.114));
    vec3  gray = vec3(lum);
    c = mix(c, gray, dsat);

    vec3 tintCol = vec3(0.55, 0.75, 1.05);                // cyan base
    tintCol     += vec3(0.35, 0.0, 0.45) * 0.5;           // purple ghost lift
    c *= mix(vec3(1.0), tintCol, 0.35 * tStr);

    // Subtle inner-edge glow (pixel near border gets brighter)
    float edge = max(abs(uv.x - 0.5), abs(uv.y - 0.5)) * 2.0;
    c += vec3(0.15, 0.25, 0.40) * smoothstep(0.85, 1.05, edge) * tStr;

    gl_FragColor = vec4(clamp(c, 0.0, 1.2), a);
}
