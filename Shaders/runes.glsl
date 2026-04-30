// Rune Glow Shader for MKXP-Z
// Pulsing circular glow hotspots at configurable positions — for rune altars,
// forging stations, magical inscriptions. Pairs well with [SC] Rune System.
//
// Each rune position is a vec2 in normalized [0..1] screen coords.
// Pass nonzero positions to activate that slot; zero/unset slots are skipped.
//
// Optional uniforms:
//   rune1..rune6 (default [0,0]) - up to six rune center positions
//   intensity    (default 1.0)   - overall glow brightness
//   radius       (default 0.10)  - glow radius in screen units
//   pulseSpeed   (default 1.0)   - pulse cycles per second multiplier
//   color        (default [1.0, 0.55, 0.15]) - rune glow color (default amber)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform vec2  rune1;
uniform vec2  rune2;
uniform vec2  rune3;
uniform vec2  rune4;
uniform vec2  rune5;
uniform vec2  rune6;
uniform float intensity;
uniform float radius;
uniform float pulseSpeed;
uniform vec3  color;

float runeGlow(vec2 uv, vec2 pos, float r, float phase) {
    if (pos.x <= 0.0001 && pos.y <= 0.0001) return 0.0;
    float d = length(uv - pos);
    // Pulsing radius
    float pulse = 0.6 + 0.4 * sin(phase);
    float core  = exp(-d * d / (r * r * 0.10)) * 1.20;
    float halo  = exp(-d * d / (r * r * 0.55)) * 0.45;
    // Soft ring at the boundary that sweeps outward
    float ringR = r * (0.5 + 0.5 * fract(phase / 6.2832));
    float ring  = exp(-pow((d - ringR) * 14.0, 2.0)) * 0.35;
    return (core + halo + ring) * pulse;
}

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity  > 0.0 ? intensity  : 1.0;
    float r   = radius     > 0.0 ? radius     : 0.10;
    float spd = pulseSpeed > 0.0 ? pulseSpeed : 1.0;
    vec3  col = (color.r + color.g + color.b > 0.0) ? color : vec3(1.0, 0.55, 0.15);

    float t = time * spd;
    float glow = 0.0;
    glow += runeGlow(uv, rune1, r, t * 1.30 + 0.0);
    glow += runeGlow(uv, rune2, r, t * 1.10 + 1.7);
    glow += runeGlow(uv, rune3, r, t * 1.45 + 3.2);
    glow += runeGlow(uv, rune4, r, t * 1.20 + 4.5);
    glow += runeGlow(uv, rune5, r, t * 1.55 + 5.8);
    glow += runeGlow(uv, rune6, r, t * 1.05 + 2.4);

    c.rgb += col * glow * str * 0.6;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
