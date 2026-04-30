// Halftone Shader for MKXP-Z
// Dot-pattern comic/pop-art rendering.
// Optional uniforms:
//   intensity (1.0), dotSize (3.0), angle (0.78)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;
uniform float dotSize;
uniform float angle;

void main() {
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;
    float ds  = dotSize   > 0.0 ? dotSize   : 3.0;
    float ag  = angle     > 0.0 ? angle     : 0.78;

    vec4 orig = texture2D(texture, uv);
    float L = dot(orig.rgb, vec3(0.299, 0.587, 0.114));

    // Rotated grid
    float c = cos(ag), s = sin(ag);
    vec2 r = vec2(c * uv.x - s * uv.y, s * uv.x + c * uv.y);

    // Cell-local position
    vec2 grid = fract(r * 200.0 / ds) - 0.5;
    float dot_d = length(grid);

    // Dot radius scales with darkness (1 - L)
    float radius = (1.0 - L) * 0.5;
    float dotMask = smoothstep(radius, radius - 0.05, dot_d);

    // Tinted dots — keep some color from the original
    vec3 dotColor = mix(vec3(0.0), orig.rgb * 0.3, 0.5);
    vec3 paper = vec3(0.98, 0.96, 0.92);
    vec3 result = mix(paper, dotColor, dotMask);

    gl_FragColor = vec4(mix(orig.rgb, result, str), orig.a);
}
