// Volcano Shader for MKXP-Z
// Heat shimmer distortion with fiery red-orange atmosphere
// Requires: uniform float time (auto-updated)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float heat;

void main() {
    float str = heat > 0.0 ? heat : 1.0;
    vec2 uv = v_texCoord;

    // Heat shimmer distortion — rising waves
    float distort = str * 0.003;
    uv.x += sin(uv.y * 40.0 + time * 3.0) * distort;
    uv.y += cos(uv.x * 30.0 + time * 2.5) * distort * 0.5;

    vec4 color = texture2D(texture, uv);

    // Fiery warm tint
    color.rgb *= vec3(1.15, 0.88, 0.72);

    // Pulsing ember glow from below
    float lava = smoothstep(0.3, 1.0, uv.y);
    float pulse = 0.5 + 0.5 * sin(time * 1.5);
    color.rgb += lava * pulse * vec3(0.08, 0.02, 0.0) * str;

    // Slight vignette
    vec2 center = uv - 0.5;
    float vig = 1.0 - dot(center, center) * 1.5;
    color.rgb *= clamp(vig, 0.3, 1.0);

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
