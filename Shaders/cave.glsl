// Cave Shader for MKXP-Z
// Dark vignette, flickering torchlight, cool damp atmosphere
// Requires: uniform float time (auto-updated)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float darkness;
uniform float flicker;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;
    float dark = darkness > 0.0 ? darkness : 0.55;
    float flickStr = flicker > 0.0 ? flicker : 0.08;

    // Cool damp color shift (slight blue-grey)
    color.rgb *= vec3(0.82, 0.85, 0.95);

    // Vignette — darkness from edges
    vec2 center = uv - 0.5;
    float vignette = 1.0 - dot(center, center) * 2.8;
    vignette = clamp(vignette, 0.0, 1.0);
    vignette = mix(dark, 1.0, vignette);
    color.rgb *= vignette;

    // Torch flicker — subtle warm light variation
    float f1 = sin(time * 8.0) * 0.3;
    float f2 = sin(time * 13.0 + 2.0) * 0.2;
    float f3 = sin(time * 21.0 + 5.0) * 0.15;
    float flickerVal = 1.0 + (f1 + f2 + f3) * flickStr;
    color.rgb *= flickerVal;

    // Warm torchlight tint near center
    float warmth = smoothstep(0.6, 0.0, length(center));
    color.rgb += warmth * vec3(0.06, 0.03, 0.0) * flickerVal;

    // Floating dust particles in light
    float dust = 0.0;
    for (int i = 0; i < 12; i++) {
        float fi = float(i);
        vec2 pos = vec2(
            hash(vec2(fi * 1.3, fi * 0.7)),
            hash(vec2(fi * 2.1, fi * 0.3))
        );
        pos.x += sin(time * 0.4 + fi * 2.0) * 0.15;
        pos.y -= fract(time * (0.02 + fi * 0.005) + fi * 0.3);
        pos.y = fract(pos.y);

        float d = length(uv - pos);
        float visible = smoothstep(0.5, 0.0, length(pos - 0.5));
        dust += visible * 0.0003 / (d * d + 0.0005);
    }
    color.rgb += dust * vec3(0.9, 0.85, 0.7);

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
