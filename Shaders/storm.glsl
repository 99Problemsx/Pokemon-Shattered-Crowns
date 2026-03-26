// Storm Shader for MKXP-Z
// Dark atmosphere with random lightning flashes

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float darkness;
uniform float flashRate;

float hash(float n) {
    return fract(sin(n) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;
    float dark = darkness > 0.0 ? darkness : 0.6;
    float rate = flashRate > 0.0 ? flashRate : 3.0;

    // Dark overcast
    color.rgb *= mix(vec3(1.0), vec3(0.45, 0.48, 0.58), dark);

    // Lightning flash — sharp random bursts
    float t = floor(time * rate);
    float chance = hash(t);
    float flash = 0.0;

    if (chance > 0.82) {
        float phase = fract(time * rate);
        // Quick flash: sharp rise, fast decay
        flash = exp(-phase * 12.0) * (1.0 + sin(phase * 80.0) * 0.3);
        flash *= 0.5 + hash(t + 7.0) * 0.5;
    }

    // Flash illumination — cool white
    color.rgb += flash * vec3(0.35, 0.38, 0.50);

    // Slight vignette
    vec2 center = uv - 0.5;
    float vig = 1.0 - dot(center, center) * 2.0;
    color.rgb *= clamp(vig, 0.4, 1.0);

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
