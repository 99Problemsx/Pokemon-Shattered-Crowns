// Lightning Flash Shader for MKXP-Z
// Sudden full-screen white flash with decay. Best driven manually:
// set `triggerTime` to the current `time` value the moment you want a strike,
// then the flash plays out automatically. Re-set triggerTime for another flash.
//
// Optional uniforms:
//   triggerTime (default 0.0) - the `time` value at which a flash was fired
//   duration    (default 0.45) - how long the flash takes to fully decay (seconds)
//   intensity   (default 1.0) - peak brightness multiplier
//   tint        (default [1.0, 1.0, 1.05]) - flash color (slight blue-white default)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform float intensity;
uniform vec3  tint;

void main() {
    vec4 c = texture2D(texture, v_texCoord);

    if (triggerTime <= 0.0) {
        gl_FragColor = c;
        return;
    }

    float dur = duration > 0.0 ? duration : 0.45;
    float str = intensity > 0.0 ? intensity : 1.0;
    vec3  col = (tint.r + tint.g + tint.b > 0.0) ? tint : vec3(1.0, 1.0, 1.05);

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) {
        gl_FragColor = c;
        return;
    }

    // Two-part decay: sharp peak + lingering fade
    float t = dt / dur;
    float flash = (1.0 - smoothstep(0.0, 0.10, t)) * 0.80   // initial spike
                + (1.0 - smoothstep(0.10, 1.00, t)) * 0.35; // afterglow

    flash *= str;
    c.rgb = mix(c.rgb, col, clamp(flash, 0.0, 1.0));

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
