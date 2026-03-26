// Dream Shader for MKXP-Z
// Soft pastel glow with slight blur effect

varying vec2 v_texCoord;
uniform sampler2D texture;

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 dream = mix(color.rgb, vec3(gray), 0.3) * vec3(1.1, 1.0, 1.15) + vec3(0.05);
    gl_FragColor = vec4(dream, color.a);
}
