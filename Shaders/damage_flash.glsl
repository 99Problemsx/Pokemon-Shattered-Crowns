// Damage Flash Shader for MKXP-Z
// Quick red overlay pulse on hit.
// Optional uniforms:
//   triggerTime (0.0), duration (0.20), color ([1.0, 0.15, 0.15])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform vec3  color;

void main() {
    vec4 c = texture2D(texture, v_texCoord);

    if (triggerTime <= 0.0) {
        gl_FragColor = c;
        return;
    }

    float dur = duration > 0.0 ? duration : 0.20;
    vec3  col = (color.r + color.g + color.b > 0.0) ? color : vec3(1.0, 0.15, 0.15);

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) {
        gl_FragColor = c;
        return;
    }

    float t = dt / dur;
    // Sharp peak at start, decay to zero
    float flash = 1.0 - smoothstep(0.0, 1.0, t);
    flash *= flash;

    c.rgb = mix(c.rgb, col, flash * 0.65);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
