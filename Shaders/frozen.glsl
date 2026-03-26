// Frozen Shader for MKXP-Z
// Cool blue-white frost tint with desaturation

varying vec2 v_texCoord;
uniform sampler2D texture;

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 frozen = mix(color.rgb, vec3(gray), 0.35) * vec3(0.85, 0.95, 1.2) + vec3(0.05, 0.05, 0.1);
    gl_FragColor = vec4(frozen, color.a);
}
