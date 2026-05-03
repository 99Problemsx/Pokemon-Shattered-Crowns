// Slow Motion Shader for MKXP-Z
// Duotone tint + soft pulse to feel like time-stretched action.
// Optional uniforms:
//   intensity (1.0), tintA ([0.20, 0.05, 0.40]), tintB ([1.00, 0.85, 0.55])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform vec3  tintA;
uniform vec3  tintB;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    vec3  cA  = (tintA.r + tintA.g + tintA.b > 0.0) ? tintA : vec3(0.20, 0.05, 0.40);
    vec3  cB  = (tintB.r + tintB.g + tintB.b > 0.0) ? tintB : vec3(1.00, 0.85, 0.55);

    // Duotone mapping
    float lum = dot(c.rgb, vec3(0.299, 0.587, 0.114));
    vec3 duo = mix(cA, cB, lum);

    // Slow pulse
    float pulse = 0.85 + 0.15 * sin(time * 1.0);

    c.rgb = mix(c.rgb, duo * pulse, 0.65 * str);

    // Wide vignette to focus attention
    vec2 ctr = uv - 0.5;
    float vig = 1.0 - dot(ctr, ctr) * 1.4;
    c.rgb *= clamp(vig, 0.55, 1.0);

    gl_FragColor = vec4(clamp(c.rgb, 0.0, 1.0), c.a);
}
