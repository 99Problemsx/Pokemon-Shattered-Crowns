// Sepia Tone Shader for MKXP-Z
// Converts the viewport rendering to a sepia tone effect

varying vec2 v_texCoord;
uniform sampler2D texture;

void main() {
    vec4 color = texture2D(texture, v_texCoord);

    // Convert to grayscale using luminance weights
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));

    // Apply sepia tone
    vec3 sepia = vec3(gray) * vec3(1.2, 1.0, 0.8);

    gl_FragColor = vec4(sepia, color.a);
}