// Blue Hour Shader for MKXP-Z
// Cool twilight after sunset / before sunrise. Blue-violet gradient.
// Optional uniforms:
//   intensity (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;

    // Cool blue tint
    vec3 cool = vec3(0.78, 0.86, 1.10);
    c.rgb = mix(c.rgb, c.rgb * cool, 0.55 * str);

    // Lower brightness toward magic-hour darkness
    c.rgb *= mix(1.0, 0.78, 0.5 * str);

    // Gradient: more violet at top, cooler at bottom
    vec3 topShift = vec3(0.10, 0.05, 0.18);
    vec3 botShift = vec3(0.02, 0.05, 0.12);
    c.rgb += mix(botShift, topShift, 1.0 - uv.y) * str;

    // Slight saturation lift
    float lum = dot(c.rgb, vec3(0.299, 0.587, 0.114));
    c.rgb = mix(vec3(lum), c.rgb, 1.10);

    gl_FragColor = vec4(clamp(c.rgb, 0.0, 1.0), c.a);
}
