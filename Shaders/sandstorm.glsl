// Sandstorm Shader for MKXP-Z
// Horizontal sand streaks + warm tint + visibility reduction.
// Optional uniforms:
//   intensity (1.0), speed (1.0), tint (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform float tint;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;
    float tn  = tint      > 0.0 ? tint      : 1.0;

    // Multiple horizontal streak layers at different speeds
    float streak = 0.0;
    for (int i = 0; i < 3; i++) {
        float fi = float(i);
        float layerSpeed = 0.8 + fi * 0.5;
        float yScale = 80.0 + fi * 60.0;
        float xScroll = uv.x + time * spd * layerSpeed;
        float band = hash(vec2(floor(xScroll * 4.0 + fi * 13.0), floor(uv.y * yScale)));
        band = pow(band, 18.0) * 4.0;
        streak += band * (0.4 - fi * 0.1);
    }

    // Sandy tint applied to scene
    vec3 sandColor = vec3(0.95, 0.78, 0.50);
    c.rgb = mix(c.rgb, c.rgb * sandColor + vec3(0.10, 0.07, 0.03), 0.45 * tn);
    c.rgb *= 0.85 + streak * str * 0.15;     // brightness from passing sand
    c.rgb += sandColor * streak * str * 0.6;

    // Slight horizontal blur towards edges (visibility loss)
    vec2 center = uv - 0.5;
    float distMul = clamp(length(center) * 1.4, 0.0, 1.0);
    c.rgb = mix(c.rgb, sandColor * 0.55, distMul * 0.25 * tn);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
