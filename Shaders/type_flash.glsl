// Type Flash Shader for MKXP-Z
// Type-colored full-screen flash for elemental moves.
// Pass move type's color via the 'color' uniform.
// Optional uniforms:
//   triggerTime (0.0), duration (0.35), color ([1.0, 1.0, 1.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform vec3  color;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    if (triggerTime <= 0.0) {
        gl_FragColor = c;
        return;
    }

    float dur = duration > 0.0 ? duration : 0.35;
    vec3  col = (color.r + color.g + color.b > 0.0) ? color : vec3(1.0, 1.0, 1.0);

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) {
        gl_FragColor = c;
        return;
    }

    float t = dt / dur;
    float flash = (1.0 - smoothstep(0.0, 0.20, t)) * 0.85
                + (1.0 - smoothstep(0.20, 1.00, t)) * 0.30;

    // Center brighter, edges weighted toward type color
    vec2 ctr = uv - 0.5;
    float radial = 1.0 - dot(ctr, ctr) * 1.6;
    float blend = clamp(flash * radial, 0.0, 1.0);

    c.rgb = mix(c.rgb, col, blend);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
