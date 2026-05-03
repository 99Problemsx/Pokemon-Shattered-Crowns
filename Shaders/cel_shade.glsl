// Cel Shade Shader for MKXP-Z
// Posterized colors + black outlines. Anime/comic look.
// Optional uniforms:
//   intensity (1.0), levels (5.0), edgeThreshold (0.20)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;
uniform float levels;
uniform float edgeThreshold;

float lum(vec3 c) { return dot(c, vec3(0.299, 0.587, 0.114)); }

void main() {
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;
    float lv  = levels    > 1.0 ? levels    : 5.0;
    float et  = edgeThreshold > 0.0 ? edgeThreshold : 0.20;

    vec4 orig = texture2D(texture, uv);
    vec3 c = orig.rgb;

    // Posterize each channel into 'lv' bands
    c = floor(c * lv) / (lv - 1.0);

    // Edge detection (Sobel)
    float k = 0.0028;
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
    float edge = step(et, length(vec2(gx, gy)));

    c *= 1.0 - edge;   // black outline

    gl_FragColor = vec4(mix(orig.rgb, c, str), orig.a);
}
