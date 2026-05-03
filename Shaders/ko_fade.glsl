// KO Fade Shader for MKXP-Z
// Desaturation + vignette + slow tint shift on Pokemon faint.
// Optional uniforms:
//   triggerTime (0.0), duration (1.20)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    if (triggerTime <= 0.0) {
        gl_FragColor = c;
        return;
    }

    float dur = duration > 0.0 ? duration : 1.20;

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) {
        gl_FragColor = c;
        return;
    }

    float t = clamp(dt / dur, 0.0, 1.0);
    // Ramp in then hold then ramp out
    float weight = sin(t * 3.14159);

    // Desaturate
    float lum = dot(c.rgb, vec3(0.30, 0.59, 0.11));
    c.rgb = mix(c.rgb, vec3(lum), weight * 0.85);

    // Cool blue death tint
    c.rgb = mix(c.rgb, c.rgb * vec3(0.7, 0.85, 1.10), weight * 0.45);

    // Heavy vignette during peak
    vec2 ctr = uv - 0.5;
    float vig = 1.0 - dot(ctr, ctr) * 2.5 * weight;
    c.rgb *= clamp(vig, 0.30, 1.0);

    // Pulse darkening
    c.rgb *= 1.0 - weight * 0.20;

    gl_FragColor = vec4(clamp(c.rgb, 0.0, 1.0), c.a);
}
