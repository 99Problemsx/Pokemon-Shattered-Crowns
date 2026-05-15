// Flashback Filter — for [SC] Flashback System / Memory Lane cutscenes
// Desaturate + sepia + vignette + film grain + faint horizontal jitter.
//
// Optional uniforms:
//   sepia   (0..1, default 0.7) — sepia mix strength
//   grain   (0..1, default 0.15) — film grain amount
//   vignette(0..2, default 1.0) — vignette darkness
//   jitter  (0..2, default 1.0) — old-projector horizontal jitter

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float sepia;
uniform float grain;
uniform float vignette;
uniform float jitter;

// Cheap hash for grain
float hash(vec2 p) {
    p = fract(p * vec2(123.34, 456.21));
    p += dot(p, p + 78.233);
    return fract(p.x * p.y);
}

void main() {
    float sStr = sepia    > 0.0 ? sepia    : 0.7;
    float gStr = grain    > 0.0 ? grain    : 0.15;
    float vStr = vignette > 0.0 ? vignette : 1.0;
    float jStr = jitter   > 0.0 ? jitter   : 1.0;

    // Subtle horizontal jitter (every ~0.4s a new row offset)
    vec2 uv = v_texCoord;
    float row    = floor(uv.y * 80.0);
    float jPhase = floor(time * 2.5);
    float jOff   = (hash(vec2(row, jPhase)) - 0.5) * 0.004 * jStr;
    uv.x += jOff;

    vec4 c = texture2D(texture, uv);

    // Desaturate fully, then re-tint sepia
    float lum  = dot(c.rgb, vec3(0.299, 0.587, 0.114));
    vec3  gray = vec3(lum);
    vec3  sep  = gray * vec3(1.10, 0.85, 0.60);
    c.rgb = mix(c.rgb, sep, sStr);

    // Vignette
    vec2  d   = v_texCoord - 0.5;
    float dis = dot(d, d);
    c.rgb *= 1.0 - smoothstep(0.18, 0.55, dis) * 0.6 * vStr;

    // Film grain
    float g = (hash(v_texCoord * vec2(640.0, 480.0) + time * 60.0) - 0.5) * gStr;
    c.rgb += g;

    // Occasional scratch line
    float scratch = step(0.997, hash(vec2(floor(time * 6.0), 1.0)));
    float xpos    = hash(vec2(floor(time * 6.0), 2.0));
    c.rgb += scratch * smoothstep(0.002, 0.0, abs(v_texCoord.x - xpos)) * 0.4;

    gl_FragColor = c;
}
