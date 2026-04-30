// Acid Rain Shader for MKXP-Z
// Greenish corrupted rain with toxic atmosphere.
// Optional uniforms:
//   intensity (1.0), speed (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;

    // Rain streaks (diagonal)
    float rain = 0.0;
    for (int i = 0; i < 3; i++) {
        float fi = float(i);
        vec2 q = uv;
        q.x += time * spd * (0.6 + fi * 0.3) * 0.8 + uv.y * 0.6;
        q.y += time * spd * (1.5 + fi * 0.5);
        float v = hash(vec2(floor(q.x * 100.0), floor(q.y * 250.0 + fi * 11.0)));
        rain += pow(v, 14.0) * 6.0 * (0.6 - fi * 0.15);
    }

    // Toxic green tint over the scene
    c.rgb = mix(c.rgb, c.rgb * vec3(0.75, 1.10, 0.70) + vec3(0.0, 0.05, 0.0), 0.35 * str);

    // Bright greenish streaks
    c.rgb += vec3(0.55, 1.00, 0.55) * rain * str * 0.6;

    // Slight bubbling sheen at bottom
    float bubble = sin(uv.x * 80.0 + time * 4.0 * spd) * sin(uv.x * 50.0 + time * 2.0);
    bubble = max(0.0, bubble) * smoothstep(0.6, 1.0, uv.y);
    c.rgb += vec3(0.35, 0.85, 0.40) * bubble * str * 0.12;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
