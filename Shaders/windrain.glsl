// Wind Rain Shader for MKXP-Z
// Diagonal rain blown sideways by wind

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float wind;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;
    float windStr = wind != 0.0 ? wind : 0.6;

    // Dark overcast tint
    color.rgb *= mix(vec3(1.0), vec3(0.78, 0.82, 0.92), str * 0.65);
    color.rgb *= mix(1.0, 0.80, str * 0.45);

    // Diagonal rain streaks — wind pushes sideways
    float rain = 0.0;
    for (int i = 0; i < 4; i++) {
        float fi = float(i);
        float scale = 12.0 + fi * 8.0;
        float speed = 5.0 + fi * 2.5;

        // Sheared coordinate: x shifts with y to create diagonal fall
        vec2 cell = uv * vec2(scale, scale * 0.3);
        cell.y -= time * speed;
        cell.x += time * speed * windStr + uv.y * windStr * scale * 0.4;
        vec2 id = floor(cell);
        vec2 local = fract(cell);

        float rnd = hash(id);

        if (rnd > 0.5) {
            float xOff = hash(id + 0.5) * 0.5 + 0.25;
            // Thinner, longer streaks for wind effect
            float streak = smoothstep(0.025, 0.0, abs(local.x - xOff));
            streak *= smoothstep(0.0, 0.15, local.y) * smoothstep(1.0, 0.4, local.y);
            rain += streak * (0.12 + fi * 0.04);
        }
    }

    color.rgb += rain * str * vec3(0.55, 0.6, 0.78);

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
