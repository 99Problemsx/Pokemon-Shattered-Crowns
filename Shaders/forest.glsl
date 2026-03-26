// Forest Shader for MKXP-Z
// Dappled sunlight / god rays through tree canopy

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float density;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;
    float dens = density > 0.0 ? density : 0.6;

    // Green canopy tint
    color.rgb *= vec3(0.92, 1.0, 0.88);

    // God rays — diagonal light beams from top-right
    float rays = 0.0;
    for (int i = 0; i < 6; i++) {
        float fi = float(i);
        float offset = hash(vec2(fi, fi * 3.7)) * 1.5;
        float speed = 0.03 + hash(vec2(fi * 2.3, 0.0)) * 0.02;
        float width = 0.03 + hash(vec2(0.0, fi * 1.9)) * 0.04;

        // Diagonal beam position (top-right to bottom-left)
        float beam = uv.x * 0.7 - uv.y * 0.3 + offset;
        beam += sin(time * speed + fi) * 0.05;
        beam = fract(beam * (2.0 + fi * 0.3));

        float ray = smoothstep(width, 0.0, abs(beam - 0.5));
        ray *= smoothstep(0.0, 0.4, 1.0 - uv.y); // stronger at top
        rays += ray;
    }

    // Sway with wind
    rays *= 0.9 + 0.1 * sin(time * 0.8);

    // Warm sunlight color
    color.rgb += rays * dens * vec3(0.12, 0.10, 0.04);

    // Subtle leaf shadow flicker
    float shadow = 0.95 + 0.05 * sin(uv.x * 50.0 + time * 2.0)
                              * cos(uv.y * 40.0 + time * 1.5);
    color.rgb *= shadow;

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
