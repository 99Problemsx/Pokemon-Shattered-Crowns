// Golden Hour Shader for MKXP-Z
// Warm soft directional light, gentle haze, slight bloom. Late afternoon.
// Optional uniforms:
//   intensity (1.0), warmth (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;
uniform float warmth;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float wm  = warmth    > 0.0 ? warmth    : 1.0;

    // Warm color shift
    vec3 warm = vec3(1.10, 0.95, 0.78);
    c.rgb = mix(c.rgb, c.rgb * warm, 0.55 * wm);

    // Top-down golden gradient
    float gradient = smoothstep(1.0, 0.0, uv.y) * 0.5 + 0.5;
    c.rgb += vec3(0.18, 0.10, 0.02) * gradient * str * 0.55;

    // Subtle vignette to lift the center
    vec2 ctr = uv - 0.5;
    float vig = 1.0 - dot(ctr, ctr) * 0.8;
    c.rgb *= clamp(vig, 0.7, 1.05);

    // Soft bloom approximation by gentle desaturation lift
    float lum = dot(c.rgb, vec3(0.299, 0.587, 0.114));
    if (lum > 0.7) c.rgb += (lum - 0.7) * vec3(1.0, 0.85, 0.55) * 0.4;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
