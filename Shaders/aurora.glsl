// Aurora Borealis Shader for MKXP-Z
// Wavering green-violet light curtains across the upper half of the screen
// Best used on Norse / northern / cold maps. Pairs well with :night.
//
// Optional uniforms:
//   intensity (default 1.0) - overall aurora brightness
//   altitude  (default 0.45) - top of the band as fraction of screen height (0=top, 1=bottom)
//   bandSize  (default 0.30) - how thick the aurora curtain is
//   speed     (default 1.0)  - drift speed multiplier

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float altitude;
uniform float bandSize;
uniform float speed;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(mix(hash(i + vec2(0.0, 0.0)), hash(i + vec2(1.0, 0.0)), u.x),
               mix(hash(i + vec2(0.0, 1.0)), hash(i + vec2(1.0, 1.0)), u.x), u.y);
}

float fbm(vec2 p) {
    float v = 0.0;
    float a = 0.5;
    for (int i = 0; i < 5; i++) {
        v += a * noise(p);
        p *= 2.0;
        a *= 0.5;
    }
    return v;
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str  = intensity > 0.0 ? intensity : 1.0;
    float top  = altitude  > 0.0 ? altitude  : 0.45;
    float band = bandSize  > 0.0 ? bandSize  : 0.30;
    float spd  = speed     > 0.0 ? speed     : 1.0;

    // Vertical mask — soft band across the upper part of the screen
    float dy = uv.y - top;
    float vBand = exp(-dy * dy / (band * band)) * smoothstep(top + band, top - band * 0.5, uv.y);
    if (vBand < 0.001) {
        gl_FragColor = color;
        return;
    }

    // Curtain shape: layered wavy noise that drifts horizontally
    float t = time * 0.15 * spd;
    float curtain1 = fbm(vec2(uv.x * 3.0 + t, uv.y * 8.0 - t * 0.5));
    float curtain2 = fbm(vec2(uv.x * 5.0 - t * 1.3, uv.y * 12.0 + t * 0.8));
    float wave = pow(curtain1 * curtain2, 1.4);

    // Vertical streaks add the curtain look
    float streaks = 0.5 + 0.5 * sin(uv.x * 40.0 + curtain1 * 8.0 + time * 0.3 * spd);
    streaks = pow(streaks, 3.0);

    float aurora = wave * (0.5 + streaks * 0.5) * vBand;

    // Color: green core, violet edges, hint of pink at top
    vec3 cGreen  = vec3(0.15, 1.00, 0.45);
    vec3 cViolet = vec3(0.55, 0.20, 0.95);
    vec3 cPink   = vec3(1.00, 0.30, 0.80);
    float blend = curtain2;
    vec3 auroraColor = mix(cGreen, cViolet, blend);
    auroraColor = mix(auroraColor, cPink, smoothstep(0.0, 0.15, top - uv.y) * 0.4);

    color.rgb += auroraColor * aurora * str * 0.9;

    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
