// Ghost Trail Shader for MKXP-Z
// Multi-sample displaced afterimage — gives a ghostly trail effect.
// Best when applied while moving (player or camera).
// Optional uniforms:
//   intensity (0.6), offset ([0.01, 0.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform vec2  offset;

void main() {
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 0.6;
    vec2  off = (offset.x != 0.0 || offset.y != 0.0) ? offset : vec2(0.01, 0.0);

    vec4 base = texture2D(texture, uv);
    vec4 t1   = texture2D(texture, uv + off * 1.0);
    vec4 t2   = texture2D(texture, uv + off * 2.5);
    vec4 t3   = texture2D(texture, uv + off * 4.0);

    // Trails fade rapidly and tint cyan/violet
    vec3 ghost = t1.rgb * 0.45 + t2.rgb * 0.25 + t3.rgb * 0.15;
    ghost *= mix(vec3(1.0), vec3(0.6, 0.85, 1.10), 0.6);

    base.rgb = mix(base.rgb, base.rgb + ghost, str);

    gl_FragColor = vec4(min(base.rgb, 1.0), base.a);
}
