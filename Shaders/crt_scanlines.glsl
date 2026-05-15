// CRT Scanlines — retro CRT effect: scanlines + barrel distortion + RGB mask.
// Use with gbc_palette for a full retro Photo Mode preset.
//
// Optional uniforms:
//   scanline    (0..1, default 0.35) — scanline darkness
//   barrel      (0..1, default 0.10) — barrel distortion amount
//   maskOpacity (0..1, default 0.15) — RGB sub-pixel mask strength
//   vignette    (0..1, default 0.5)  — corner darkening

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform vec2  resolution;
uniform float scanline;
uniform float barrel;
uniform float maskOpacity;
uniform float vignette;

void main() {
    float scnl = scanline    > 0.0 ? scanline    : 0.35;
    float brl  = barrel      > 0.0 ? barrel      : 0.10;
    float mop  = maskOpacity > 0.0 ? maskOpacity : 0.15;
    float vig  = vignette    > 0.0 ? vignette    : 0.5;
    vec2  res  = resolution.x > 0.0 ? resolution : vec2(512.0, 384.0);

    // Barrel distortion — sample from a curved UV space
    vec2 uv = v_texCoord * 2.0 - 1.0;
    float r2 = dot(uv, uv);
    uv *= 1.0 + brl * r2;
    uv = uv * 0.5 + 0.5;

    // Outside the screen rect after warp → black
    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    vec4 c = texture2D(texture, uv);

    // Horizontal scanlines
    float line = sin(uv.y * res.y * 3.1415926) * 0.5 + 0.5;
    c.rgb *= 1.0 - scnl * (1.0 - line);

    // RGB sub-pixel mask (column triad)
    float xpx = floor(uv.x * res.x);
    float ph  = mod(xpx, 3.0);
    vec3 mask;
    if      (ph < 1.0) mask = vec3(1.0, 1.0 - mop, 1.0 - mop);
    else if (ph < 2.0) mask = vec3(1.0 - mop, 1.0, 1.0 - mop);
    else               mask = vec3(1.0 - mop, 1.0 - mop, 1.0);
    c.rgb *= mask;

    // Vignette
    vec2  d   = uv - 0.5;
    float dis = dot(d, d);
    c.rgb *= 1.0 - smoothstep(0.18, 0.55, dis) * vig;

    gl_FragColor = c;
}
