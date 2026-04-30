// Old Film Shader for MKXP-Z
// Sepia + film scratches + flicker + vignette. Silent-movie feel.
// Optional uniforms:
//   intensity (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;

    vec4 orig = texture2D(texture, uv);
    vec3 c = orig.rgb;

    // Sepia
    float gray = dot(c, vec3(0.30, 0.59, 0.11));
    vec3 sepia = vec3(gray) * vec3(1.10, 0.95, 0.70);
    c = mix(c, sepia, 0.85 * str);

    // Brightness flicker — frame-by-frame variance
    float frame = floor(time * 24.0);   // 24 fps simulation
    float flicker = 0.85 + 0.15 * hash(vec2(frame, 7.0));
    c *= mix(1.0, flicker, 0.6 * str);

    // Vertical scratches — random columns become bright lines
    float colSeed = hash(vec2(floor(uv.x * 220.0), floor(time * 8.0)));
    if (colSeed > 0.985) c += vec3(0.5) * str;

    // Random dust specks
    float speck = hash(uv * 1500.0 + frame);
    if (speck > 0.998) c += vec3(0.4) * str;

    // Heavy grain
    c += (hash(uv * 800.0 + time * 13.0) - 0.5) * 0.08 * str;

    // Strong vignette
    vec2 ctr = uv - 0.5;
    float vig = 1.0 - dot(ctr, ctr) * 1.6;
    c *= clamp(vig, 0.45, 1.0);

    gl_FragColor = vec4(clamp(c, 0.0, 1.0), orig.a);
}
