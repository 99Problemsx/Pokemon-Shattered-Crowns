// Rain Shader for MKXP-Z
// Animated falling rain streaks with slight blue tint

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;

    // Slight blue-grey overcast tint
    color.rgb *= mix(vec3(1.0), vec3(0.82, 0.85, 0.95), str * 0.6);

    // Darken slightly
    color.rgb *= mix(1.0, 0.85, str * 0.4);

    // Rain streaks
    float rain = 0.0;
    for (int i = 0; i < 3; i++) {
        float fi = float(i);
        float scale = 15.0 + fi * 10.0;
        float speed = 4.0 + fi * 2.0;

        // Grid cells for rain drops
        vec2 cell = uv * vec2(scale, scale * 0.4);
        cell.y -= time * speed;
        vec2 id = floor(cell);
        vec2 local = fract(cell);

        float rnd = hash(id);

        // Only some cells have rain
        if (rnd > 0.55) {
            float xOff = hash(id + 0.5) * 0.6 + 0.2;
            float streak = smoothstep(0.03, 0.0, abs(local.x - xOff));
            streak *= smoothstep(0.0, 0.3, local.y) * smoothstep(1.0, 0.5, local.y);
            rain += streak * (0.15 + fi * 0.05);
        }
    }

    color.rgb += rain * str * vec3(0.6, 0.65, 0.8);

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
