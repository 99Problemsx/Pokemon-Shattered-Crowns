// Ink Wash Shader for MKXP-Z
// Black-ink-on-paper look. Heavy darks, soft mid-tones, paper texture.
// Optional uniforms:
//   intensity (1.0), paper ([0.97, 0.94, 0.86])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;
uniform vec3  paper;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;
    vec3  pp  = (paper.r + paper.g + paper.b > 0.0) ? paper : vec3(0.97, 0.94, 0.86);

    vec4 orig = texture2D(texture, uv);
    float L = dot(orig.rgb, vec3(0.299, 0.587, 0.114));

    // Compress mid-tones — strong contrast, ink pools in shadows
    float ink = smoothstep(0.55, 0.10, L);

    // Subtle bleeding at edges of ink areas
    float kx = hash(uv * 800.0) - 0.5;
    float ky = hash(uv * 800.0 + 17.0) - 0.5;
    L += (kx + ky) * 0.04 * str;

    // Paper grain
    float grain = (hash(uv * 1300.0) - 0.5) * 0.06 * str;

    // Build final color: paper minus ink amount
    vec3 result = pp * (1.0 - ink * 0.95);
    result += grain;

    gl_FragColor = vec4(mix(orig.rgb, clamp(result, 0.0, 1.0), str), orig.a);
}
