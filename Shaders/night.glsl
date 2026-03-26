// Night Shader for MKXP-Z
// Applies a dark blue night tint

varying vec2 v_texCoord;
uniform sampler2D texture;

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec3 night = color.rgb * vec3(0.5, 0.5, 0.7);
    gl_FragColor = vec4(night, color.a);
}
