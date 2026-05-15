// Low HP Vignette — auto-applied in battle when active mon is at <= 25% HP.
// Red pulse at screen edges, syncs with the classic HP-low beep.
//
// Optional uniforms:
//   intensity (0..2, default 1.0) — overall strength
//   speed     (0..4, default 1.5) — pulse rate (≈ beats per second)
//   radius    (0..1, default 0.55) — how far the vignette reaches inward

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform float radius;

void main() {
    vec4 c = texture2D(texture, v_texCoord);

    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.5;
    float rad = radius    > 0.0 ? radius    : 0.55;

    // Pulse 0..1 (sharper than a plain sine — quick beat, slow decay)
    float t     = time * spd;
    float pulse = 0.5 + 0.5 * sin(t * 6.2831853);
    pulse       = pow(pulse, 1.8);

    // Vignette: 0 in centre, 1 at corners
    vec2  d   = v_texCoord - 0.5;
    float dis = length(d * vec2(1.1, 1.0));  // slight horizontal stretch
    float vig = smoothstep(rad * 0.55, rad, dis);

    // Red wash on the edges
    vec3 red = vec3(1.0, 0.10, 0.10);
    c.rgb    = mix(c.rgb, red, vig * pulse * 0.55 * str);

    // Darken corners a touch so it still reads at high pulse
    c.rgb *= 1.0 - vig * 0.25 * str;

    gl_FragColor = c;
}
