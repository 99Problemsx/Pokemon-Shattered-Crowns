// Fog Shader for MKXP-Z
// Thick animated fog that drifts across the screen

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float thickness;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

// Value noise
float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    f = f * f * (3.0 - 2.0 * f);

    float a = hash(i);
    float b = hash(i + vec2(1.0, 0.0));
    float c = hash(i + vec2(0.0, 1.0));
    float d = hash(i + vec2(1.0, 1.0));

    return mix(mix(a, b, f.x), mix(c, d, f.x), f.y);
}

// Layered noise (fbm)
float fog(vec2 p) {
    float f = 0.0;
    f += 0.5 * noise(p); p *= 2.01;
    f += 0.25 * noise(p); p *= 2.02;
    f += 0.125 * noise(p); p *= 2.03;
    f += 0.0625 * noise(p);
    return f;
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;
    float thick = thickness > 0.0 ? thickness : 0.5;

    // Drifting fog layers
    float f1 = fog(uv * 4.0 + vec2(time * 0.15, time * 0.05));
    float f2 = fog(uv * 3.0 + vec2(-time * 0.1, time * 0.08) + 5.0);
    float fogVal = (f1 + f2) * 0.5;

    // Thicker at bottom
    fogVal *= 0.7 + 0.3 * uv.y;

    // Apply fog — blend toward grey-white
    vec3 fogColor = vec3(0.78, 0.80, 0.82);
    color.rgb = mix(color.rgb, fogColor, fogVal * thick);

    // Slight desaturation
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    color.rgb = mix(color.rgb, vec3(gray), thick * 0.2);

    gl_FragColor = vec4(color.rgb, color.a);
}
