// Sunset Shader for MKXP-Z
// Applies a warm orange sunset tint

varying vec2 v_texCoord;
uniform sampler2D texture;

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec3 sunset = color.rgb * vec3(1.2, 0.9, 0.7);
    gl_FragColor = vec4(sunset, color.a);
}
