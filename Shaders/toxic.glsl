// Toxic Shader for MKXP-Z
// Sickly green-yellow tint with slight desaturation

varying vec2 v_texCoord;
uniform sampler2D texture;

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 toxic = mix(color.rgb, vec3(gray), 0.3) * vec3(0.85, 1.15, 0.7);
    gl_FragColor = vec4(toxic, color.a);
}
