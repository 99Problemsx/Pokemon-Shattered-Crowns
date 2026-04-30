// Blizzard Shader for MKXP-Z
// Heavy snow + white-out + wind streaks. Visibility reduction at distance.
// Optional uniforms:
//   intensity (1.0), speed (1.0), wind (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform float wind;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;
    float wnd = wind      > 0.0 ? wind      : 1.0;

    // Layered streaks with diagonal wind
    float streak = 0.0;
    for (int i = 0; i < 4; i++) {
        float fi = float(i);
        float lyr = 1.0 + fi * 0.7;
        vec2 q = uv;
        q.x += time * spd * lyr * 0.4 + uv.y * wnd * 0.5;
        q.y += time * spd * lyr * 0.6;
        float v = hash(vec2(floor(q.x * 80.0), floor(q.y * 200.0 + fi * 7.0)));
        streak += pow(v, 12.0) * 6.0 * (0.6 - fi * 0.12);
    }

    // White-out fog
    vec2 center = uv - 0.5;
    float dist = length(center);
    float whiteout = smoothstep(0.15, 0.85, dist) * 0.6;

    c.rgb = mix(c.rgb, vec3(0.92, 0.95, 1.0), whiteout * str);
    c.rgb += vec3(1.0) * streak * str * 0.7;

    // Slight cool tint overall
    c.rgb *= mix(vec3(1.0), vec3(0.85, 0.92, 1.05), 0.4 * str);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
