// Pencil Sketch Shader for MKXP-Z
// Black-and-white sketched-line look. Edge detection + cross-hatch shading.
// Optional uniforms:
//   intensity (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;

float lum(vec3 c) { return dot(c, vec3(0.299, 0.587, 0.114)); }

void main() {
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;

    // Sobel edge detection
    float k = 0.003;
    float tl = lum(texture2D(texture, uv + vec2(-k,-k)).rgb);
    float t  = lum(texture2D(texture, uv + vec2( 0,-k)).rgb);
    float tr = lum(texture2D(texture, uv + vec2( k,-k)).rgb);
    float l  = lum(texture2D(texture, uv + vec2(-k, 0)).rgb);
    float r  = lum(texture2D(texture, uv + vec2( k, 0)).rgb);
    float bl = lum(texture2D(texture, uv + vec2(-k, k)).rgb);
    float b  = lum(texture2D(texture, uv + vec2( 0, k)).rgb);
    float br = lum(texture2D(texture, uv + vec2( k, k)).rgb);
    float gx = -tl - 2.0*l - bl + tr + 2.0*r + br;
    float gy = -tl - 2.0*t - tr + bl + 2.0*b + br;
    float edge = clamp(length(vec2(gx, gy)) * 1.5, 0.0, 1.0);

    // Cross-hatch shading based on luminance
    float L = lum(texture2D(texture, uv).rgb);
    float hatch = 0.0;
    if (L < 0.85) hatch = max(hatch, smoothstep(0.0, 1.0, sin(uv.y * 360.0 + uv.x * 100.0)));
    if (L < 0.65) hatch = max(hatch, smoothstep(0.0, 1.0, sin(uv.x * 360.0 - uv.y * 100.0)));
    if (L < 0.45) hatch = max(hatch, smoothstep(0.0, 1.0, sin((uv.x + uv.y) * 320.0)));
    if (L < 0.25) hatch = max(hatch, smoothstep(0.0, 1.0, sin((uv.x - uv.y) * 320.0)));

    float darkness = clamp(edge + hatch * 0.6, 0.0, 1.0);
    vec3 sketched = vec3(1.0 - darkness);

    // Slight paper warmth
    sketched *= vec3(0.99, 0.97, 0.92);

    vec4 orig = texture2D(texture, uv);
    gl_FragColor = vec4(mix(orig.rgb, sketched, str), orig.a);
}
