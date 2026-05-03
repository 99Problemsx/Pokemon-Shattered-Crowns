// Watercolor Shader for MKXP-Z
// Soft edges, color bleeding, subtle paper texture.
// Optional uniforms:
//   intensity (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;

    // Slightly distorted UV for paint bleed
    vec2 jitter = vec2(hash(uv * 800.0), hash(uv * 800.0 + 17.0)) - 0.5;
    vec2 sUV = uv + jitter * 0.005 * str;

    // Box blur (3x3 small) for softening
    vec3 sum = vec3(0.0);
    float total = 0.0;
    for (int x = -1; x <= 1; x++) {
        for (int y = -1; y <= 1; y++) {
            vec2 off = vec2(float(x), float(y)) * 0.0028;
            sum += texture2D(texture, sUV + off).rgb;
            total += 1.0;
        }
    }
    vec3 c = sum / total;

    // Boost saturation for painterly feel
    float lum = dot(c, vec3(0.299, 0.587, 0.114));
    c = mix(vec3(lum), c, 1.25);

    // Paper grain
    float grain = hash(uv * 1500.0) - 0.5;
    c += grain * 0.04 * str;

    // Soft vignette
    vec2 ctr = uv - 0.5;
    float vig = 1.0 - dot(ctr, ctr) * 0.4;
    c *= clamp(vig, 0.85, 1.0);

    gl_FragColor = vec4(clamp(c, 0.0, 1.0), 1.0);
}
