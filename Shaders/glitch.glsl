// Memory Glitch Shader for MKXP-Z
// Horizontal slicing, RGB-shift, sporadic frame jumps — for [SC] Flashback System,
// [SC] Memory Lane transitions, and unstable/dream sequences.
//
// Optional uniforms:
//   intensity (default 1.0) - 0..1 dampens the effect, >1 amplifies
//   speed     (default 1.0) - how fast the glitch state cycles
//   blockSize (default 80.0) - height in lines per slice band
//   chromatic (default 1.0) - separate RGB-shift strength multiplier

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform float blockSize;
uniform float chromatic;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec2 uv = v_texCoord;
    float str  = intensity > 0.0 ? intensity : 1.0;
    float spd  = speed     > 0.0 ? speed     : 1.0;
    float bsz  = blockSize > 0.0 ? blockSize : 80.0;
    float chr  = chromatic > 0.0 ? chromatic : 1.0;

    // Discretize time so glitches happen in sudden jumps, not continuously
    float tStep = floor(time * spd * 10.0) / 10.0;

    // Horizontal slice band index
    float slice = floor(uv.y * bsz);
    float seed  = hash(vec2(slice, tStep));

    // Most slices are normal, occasional ones get displaced
    float trigger = step(0.92, seed);    // ~8% of slices glitch
    float shift   = (hash(vec2(slice + 1.0, tStep)) - 0.5) * 0.15 * trigger * str;
    uv.x += shift;

    // Wrap horizontally so we never sample out of bounds
    uv.x = fract(uv.x);

    // Chromatic aberration on glitched slices
    float ca = 0.005 * (0.3 + trigger * 1.5) * str * chr;
    float r = texture2D(texture, vec2(uv.x + ca, uv.y)).r;
    float g = texture2D(texture, uv).g;
    float b = texture2D(texture, vec2(uv.x - ca, uv.y)).b;
    float a = texture2D(texture, uv).a;

    vec3 col = vec3(r, g, b);

    // Sporadic vertical jump — picks a different y for the entire screen briefly
    float jumpSeed = hash(vec2(0.0, tStep));
    if (jumpSeed > 0.97 && str > 0.5) {
        float jy = uv.y + (hash(vec2(1.0, tStep)) - 0.5) * 0.1 * str;
        col = texture2D(texture, vec2(uv.x, fract(jy))).rgb;
    }

    // Faint scanlines for that broken-screen feel
    float scan = 0.92 + 0.08 * sin(uv.y * 800.0);
    col *= mix(1.0, scan, str * 0.3);

    // Random pixel noise on heavily glitched slices
    if (trigger > 0.5) {
        float n = hash(vec2(floor(uv.x * 200.0), tStep + slice)) - 0.5;
        col += n * 0.10 * str;
    }

    gl_FragColor = vec4(clamp(col, 0.0, 1.0), a);
}
