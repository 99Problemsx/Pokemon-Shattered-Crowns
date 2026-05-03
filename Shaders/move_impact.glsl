// Move Impact Shader for MKXP-Z
// Vignette pulse + UV wobble that mimics a screen shake.
// Optional uniforms:
//   triggerTime (0.0), duration (0.25), strength (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform float strength;

void main() {
    vec2 uv = v_texCoord;

    if (triggerTime <= 0.0) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    float dur = duration > 0.0 ? duration : 0.25;
    float str = strength > 0.0 ? strength : 1.0;

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    float t = dt / dur;
    float weight = (1.0 - t) * str;

    // Decaying high-frequency wobble
    float shakeX = sin(t * 60.0) * 0.006 * weight;
    float shakeY = cos(t * 72.0) * 0.005 * weight;
    uv += vec2(shakeX, shakeY);

    vec4 c = texture2D(texture, uv);

    // Snap vignette
    vec2 ctr = uv - 0.5;
    float vig = 1.0 - dot(ctr, ctr) * 2.0 * weight;
    c.rgb *= clamp(vig, 0.5, 1.0);

    gl_FragColor = c;
}
