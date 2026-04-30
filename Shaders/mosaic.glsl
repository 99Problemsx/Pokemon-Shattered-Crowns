// Mosaic Shader for MKXP-Z
// Variable-size pixelation. Censoring, retro, transition.
// Optional uniforms:
//   blockSize (8.0) — pixel block size

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float blockSize;

void main() {
    vec2 uv = v_texCoord;
    float bs = blockSize > 0.0 ? blockSize : 8.0;

    // Snap UV to block grid (assume 320x240-ish output; uses normalized scale)
    vec2 res = vec2(640.0, 480.0);
    vec2 snap = floor(uv * res / bs) * bs / res + (bs * 0.5) / res;

    gl_FragColor = texture2D(texture, snap);
}
