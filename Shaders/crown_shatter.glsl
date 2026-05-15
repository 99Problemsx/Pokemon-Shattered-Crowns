// Crown Shatter — transition shader for [SC] Crown Shatter
// Procedural glass-crack lines fan out from the center, paired with
// a slight chromatic shift along each crack.
//
// Use as a TRANSITION (animate `progress` from 0 → 1 then remove).
//
// Optional uniforms:
//   progress (0..1, default driven by time) — crack growth
//   cracks   (1..16, default 9) — number of crack lines
//   rgbSplit (0..2, default 1.0) — chromatic aberration along cracks

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float progress;
uniform float cracks;
uniform float rgbSplit;

float hash(float n) { return fract(sin(n) * 43758.5453); }

void main() {
    float prog = clamp(progress > 0.0 ? progress : fract(time * 0.4), 0.0, 1.0);
    float n    = cracks   > 0.0 ? cracks   : 9.0;
    float ab   = rgbSplit > 0.0 ? rgbSplit : 1.0;

    vec2  uv  = v_texCoord;
    vec2  d   = uv - 0.5;
    float r   = length(d);
    float ang = atan(d.y, d.x);

    // Build N cracks at fixed angles (with jitter per crack)
    float crackMask  = 0.0;
    float crackAlong = 0.0;
    for (int i = 0; i < 16; i++) {
        if (float(i) >= n) break;
        float baseAng = (float(i) + 0.5) / n * 6.2831853 - 3.1415926;
        float jitter  = (hash(float(i)) - 0.5) * 0.25;
        float a       = baseAng + jitter;
        float da      = ang - a;
        // Wrap into [-pi, pi]
        da = mod(da + 3.1415926, 6.2831853) - 3.1415926;

        // Subtle wobble along the crack
        float wob   = sin(r * (20.0 + hash(float(i) + 11.0) * 30.0) +
                          hash(float(i) + 7.0) * 6.28) * 0.04;
        float width = 0.02 + 0.04 * hash(float(i) + 3.0);

        float along = smoothstep(width, 0.0, abs(da + wob));
        // Crack only extends out to `prog`
        along *= smoothstep(prog + 0.05, prog - 0.05, r);
        crackMask  = max(crackMask, along);
        crackAlong = max(crackAlong, along * smoothstep(0.0, prog, r));
    }

    // Sample base + RGB-split along the radial direction near cracks
    vec2 dir = (r > 0.0) ? d / r : vec2(0.0);
    float split = 0.006 * ab * crackMask;
    float cR = texture2D(texture, uv + dir * split).r;
    float cG = texture2D(texture, uv).g;
    float cB = texture2D(texture, uv - dir * split).b;
    vec3  col = vec3(cR, cG, cB);

    // Bright fracture line
    col += vec3(1.0) * crackMask * 0.9;
    // Darker shards either side of the crack
    col -= vec3(0.10, 0.10, 0.15) * crackAlong * 0.3;

    // After full progress: black out beyond the crack front
    float wipe = smoothstep(prog - 0.02, prog + 0.02, r);
    col       *= 1.0 - wipe;

    gl_FragColor = vec4(clamp(col, 0.0, 1.0), 1.0);
}
