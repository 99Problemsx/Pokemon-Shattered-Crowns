// Time Travel Tunnel — transition effect for [SC] Time Travel
// Radial blur + chromatic aberration + tunnel-warp spiraling outward.
//
// Use as a TRANSITION (apply, fade, remove) — not a constant filter.
//
// Optional uniforms:
//   strength (0..2, default 1.0) — overall warp intensity
//   speed    (0..2, default 1.0) — spin/blur speed
//   rgbSplit (0..2, default 1.0) — chromatic aberration

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float strength;
uniform float speed;
uniform float rgbSplit;

void main() {
    float sStr = strength > 0.0 ? strength : 1.0;
    float spd  = speed    > 0.0 ? speed    : 1.0;
    float ab   = rgbSplit > 0.0 ? rgbSplit : 1.0;

    vec2  uv  = v_texCoord;
    vec2  dir = uv - 0.5;
    float r   = length(dir);
    float ang = atan(dir.y, dir.x);

    // Spiral twist — stronger toward edges
    ang += sin(time * 1.5 * spd) * 0.6 * sStr * r;

    // Radial pull (tunnel) — pixels lerp toward center over time
    float pull = 0.10 * sStr * (0.5 + 0.5 * sin(time * 0.8 * spd));
    float r2   = r * (1.0 - pull);

    vec2 warped = vec2(cos(ang), sin(ang)) * r2 + 0.5;

    // Radial blur: average a few samples along the radius
    vec3 accum = vec3(0.0);
    const int SAMPLES = 6;
    for (int i = 0; i < SAMPLES; i++) {
        float t  = float(i) / float(SAMPLES - 1);
        float rr = mix(r * 0.92, r * 1.08, t) * (1.0 - pull);
        vec2  pp = vec2(cos(ang), sin(ang)) * rr + 0.5;
        // Chromatic aberration: each channel sampled at a different radius
        float off = (t - 0.5) * 0.02 * ab * sStr;
        accum.r += texture2D(texture, pp + dir * off).r;
        accum.g += texture2D(texture, pp).g;
        accum.b += texture2D(texture, pp - dir * off).b;
    }
    accum /= float(SAMPLES);

    // Bright center flash that pulses
    float pulse = 0.5 + 0.5 * sin(time * 4.0 * spd);
    accum += vec3(0.6, 0.8, 1.0) * smoothstep(0.30, 0.0, r) * pulse * sStr * 0.5;

    gl_FragColor = vec4(clamp(accum, 0.0, 1.5), 1.0);
}
