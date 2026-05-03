// Heat Shimmer Shader for MKXP-Z
// Pure rising heat distortion — no color tint, no glow. Use for deserts,
// hot summer days, sun-baked rocks. Stack with :sunset for warm look,
// or :volcano for full lava ambience.
//
// Optional uniforms:
//   strength (default 1.0)  - distortion amplitude
//   speed    (default 1.0)  - shimmer speed
//   altitude (default 0.6)  - vertical fade-in start (0 = top, 1 = bottom)
//                            shimmer is strongest below this line

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float strength;
uniform float speed;
uniform float altitude;

void main() {
    vec2 uv = v_texCoord;
    float str = strength > 0.0 ? strength : 1.0;
    float spd = speed    > 0.0 ? speed    : 1.0;
    float alt = altitude > 0.0 ? altitude : 0.6;

    // Stronger near ground, fades upward
    float groundMask = smoothstep(alt - 0.15, 1.0, uv.y);

    // Rising heat: distortion shifts upward as it propagates
    float t = time * spd;
    float distort = str * 0.0035 * groundMask;
    uv.x += sin(uv.y * 50.0 - t * 4.0) * distort;
    uv.x += sin(uv.y * 22.0 + t * 2.5) * distort * 0.6;
    uv.y += cos(uv.x * 35.0 + t * 3.0) * distort * 0.4;

    gl_FragColor = texture2D(texture, uv);
}
