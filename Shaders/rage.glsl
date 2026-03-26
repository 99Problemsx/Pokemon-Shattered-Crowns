// Rage Shader for MKXP-Z
// Intense red tint with contrast boost

varying vec2 v_texCoord;
uniform sampler2D texture;

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 rage = mix(color.rgb, vec3(gray), 0.25) * vec3(1.3, 0.7, 0.7);
    rage = (rage - 0.5) * 1.15 + 0.5;
    gl_FragColor = vec4(clamp(rage, 0.0, 1.0), color.a);
}
