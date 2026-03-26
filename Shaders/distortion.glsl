// Distortion Shader for MKXP-Z
// Warped reality effect — wavy spatial distortion with inverted highlights

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float warp;

void main() {
    vec2 uv = v_texCoord;
    float str = warp > 0.0 ? warp : 1.0;

    // Multi-layer spatial distortion
    float dx = sin(uv.y * 12.0 + time * 1.8) * 0.006
             + sin(uv.y * 25.0 - time * 2.5) * 0.003;
    float dy = cos(uv.x * 10.0 + time * 1.5) * 0.005
             + cos(uv.x * 20.0 - time * 3.0) * 0.002;
    uv += vec2(dx, dy) * str;

    vec4 color = texture2D(texture, uv);

    // Shift hues — rotate toward purple/teal
    vec3 shifted = vec3(
        color.r * 0.7 + color.b * 0.3,
        color.g * 0.8 + color.r * 0.1,
        color.b * 0.6 + color.g * 0.3 + 0.05
    );
    color.rgb = mix(color.rgb, shifted, 0.5 * str);

    // Pulsing inverted highlight bands
    float band = sin(uv.y * 30.0 + time * 4.0) * sin(uv.x * 20.0 - time * 3.0);
    band = smoothstep(0.7, 0.9, band);
    color.rgb = mix(color.rgb, 1.0 - color.rgb, band * 0.25 * str);

    // Dark edges
    vec2 center = uv - 0.5;
    float vig = 1.0 - dot(center, center) * 2.5;
    color.rgb *= clamp(vig, 0.25, 1.0);

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
