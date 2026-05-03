// Holy Light Shader for MKXP-Z
// Bright halo + lens-flare-like rays. Divine moments, healing, blessings.
// Optional uniforms:
//   intensity (1.0), source ([0.5, 0.4])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform vec2  source;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    vec2  src = (source.x != 0.0 || source.y != 0.0) ? source : vec2(0.5, 0.4);

    vec2 dir = uv - src;
    float dist = length(dir);
    float angle = atan(dir.y, dir.x);

    // Big soft halo
    float halo = exp(-dist * dist * 8.0) * 1.4;
    // 6 cardinal-ray spokes
    float spokes = abs(cos(angle * 6.0));
    spokes = pow(spokes, 30.0);
    float ray = spokes * exp(-dist * 4.0) * 0.8;

    // Pulse
    float pulse = 0.85 + 0.15 * sin(time * 1.3);

    vec3 holyColor = vec3(1.0, 0.97, 0.85);
    c.rgb += holyColor * (halo + ray) * pulse * str * 0.55;

    // Subtle white-out at very bright spots
    float lum = dot(c.rgb, vec3(0.299, 0.587, 0.114));
    if (lum > 0.85) c.rgb = mix(c.rgb, vec3(1.0), (lum - 0.85) * 2.0);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
