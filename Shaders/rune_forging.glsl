// Rune Forging Glow — for [SC] Rune Forging crafting scene.
// Golden radial glow centred on a forge point (default = screen centre) +
// pulsing core + rotating spark ring.
//
// Optional uniforms:
//   center    (vec2, default 0.5,0.5) — glow centre in UV space
//   intensity (0..2, default 1.0) — overall strength
//   pulse     (0..2, default 1.0) — pulse speed
//   spark     (0..2, default 1.0) — spark visibility

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform vec2  center;
uniform float intensity;
uniform float pulse;
uniform float spark;

void main() {
    vec4 c = texture2D(texture, v_texCoord);

    vec2 ctr = (center.x > 0.0 || center.y > 0.0) ? center : vec2(0.5, 0.5);
    float str = intensity > 0.0 ? intensity : 1.0;
    float plr = pulse     > 0.0 ? pulse     : 1.0;
    float spr = spark     > 0.0 ? spark     : 1.0;

    vec2  d   = v_texCoord - ctr;
    float r   = length(d * vec2(1.1, 1.0));
    float ang = atan(d.y, d.x);

    // Pulsing radial glow (warm gold)
    float pulseAmt = 0.7 + 0.3 * sin(time * 2.2 * plr);
    float glow     = smoothstep(0.45, 0.0, r) * pulseAmt;
    vec3  gold     = vec3(1.10, 0.75, 0.30);
    c.rgb += gold * glow * 0.6 * str;

    // Hot white core
    float core = smoothstep(0.10, 0.0, r) * pulseAmt;
    c.rgb += vec3(1.0, 0.95, 0.80) * core * 0.8 * str;

    // Rotating spark ring at radius ≈ 0.18
    float ringR     = 0.18;
    float ringWidth = 0.012;
    float ringMask  = smoothstep(ringWidth, 0.0, abs(r - ringR));
    // 8 sparks evenly spaced + rotating
    float sparks    = 0.5 + 0.5 * sin(ang * 8.0 + time * 3.0 * plr);
    sparks          = pow(sparks, 12.0);
    c.rgb += vec3(1.0, 0.80, 0.40) * ringMask * sparks * spr * str;

    gl_FragColor = vec4(clamp(c.rgb, 0.0, 1.4), c.a);
}
