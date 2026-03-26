// Horror Shader for MKXP-Z
// Desaturates and applies a dark reddish tint

varying vec2 v_texCoord;
uniform sampler2D texture;

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 horror = mix(vec3(gray), color.rgb, 0.4) * vec3(1.1, 0.7, 0.7);
    gl_FragColor = vec4(horror, color.a);
}
