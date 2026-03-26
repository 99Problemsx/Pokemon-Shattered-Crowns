// Underwater Shader for MKXP-Z
// Applies a blue-green underwater tint with slight wave distortion

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;

void main() {
    vec2 uv = v_texCoord;
    uv.x += sin(uv.y * 20.0 + time * 2.0) * 0.003;
    uv.y += cos(uv.x * 15.0 + time * 1.5) * 0.002;
    vec4 color = texture2D(texture, uv);
    vec3 water = color.rgb * vec3(0.7, 0.9, 1.1);
    gl_FragColor = vec4(water, color.a);
}
