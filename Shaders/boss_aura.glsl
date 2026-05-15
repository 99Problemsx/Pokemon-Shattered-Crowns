// Boss Aura — atmospheric filter for boss intros / Nemesis encounters.
// Dark vignette + ambient red shimmer + creeping shadow tendrils.
//
// Optional uniforms:
//   intensity (0..2, default 1.0) — overall strength
//   redShift  (0..1, default 0.5) — how red the ambient tint gets
//   shimmer   (0..2, default 1.0) — animated shadow shimmer

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float redShift;
uniform float shimmer;

void main() {
    vec4 c = texture2D(texture, v_texCoord);

    float str = intensity > 0.0 ? intensity : 1.0;
    float red = redShift  > 0.0 ? redShift  : 0.5;
    float shi = shimmer   > 0.0 ? shimmer   : 1.0;

    // Slightly desaturate, then tint slightly red
    float lum  = dot(c.rgb, vec3(0.299, 0.587, 0.114));
    vec3  gray = vec3(lum);
    c.rgb = mix(c.rgb, gray, 0.25 * str);
    c.rgb = mix(c.rgb, c.rgb * vec3(1.10, 0.85, 0.85), red * str);

    // Hard vignette
    vec2  d   = v_texCoord - 0.5;
    float dis = length(d);
    float vig = smoothstep(0.30, 0.65, dis);
    c.rgb *= 1.0 - vig * 0.55 * str;

    // Shadow shimmer at the edges (animated noisy waves)
    float wave = sin(v_texCoord.y * 18.0 + time * 1.5) *
                 cos(v_texCoord.x * 22.0 - time * 1.1);
    wave = wave * 0.5 + 0.5;
    c.rgb -= vec3(0.08, 0.05, 0.05) * wave * vig * shi * str;

    // Faint red ember pulse near the corners
    float pulse = 0.5 + 0.5 * sin(time * 1.2);
    c.rgb += vec3(0.20, 0.05, 0.05) * vig * pulse * red * 0.4 * str;

    gl_FragColor = vec4(clamp(c.rgb, 0.0, 1.2), c.a);
}
