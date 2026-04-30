// Iris Wipe Shader for MKXP-Z
// Closing/opening circular iris transition.
// Set triggerTime to start; positive duration = closing, negative = opening.
// Optional uniforms:
//   triggerTime (0.0), duration (0.80), focus ([0.5, 0.5]), color ([0.0, 0.0, 0.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform vec2  focus;
uniform vec3  color;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    if (triggerTime <= 0.0) {
        gl_FragColor = c;
        return;
    }

    float dur = duration != 0.0 ? duration : 0.80;
    vec2  ctr = (focus.x != 0.0 || focus.y != 0.0) ? focus : vec2(0.5, 0.5);
    bool opening = dur < 0.0;
    float absDur = abs(dur);

    float dt = time - triggerTime;
    if (dt < 0.0) {
        gl_FragColor = c;
        return;
    }
    if (dt > absDur) {
        // After: hold final state
        gl_FragColor = opening ? c : vec4(color, 1.0);
        return;
    }

    float t = dt / absDur;
    float radius = opening ? t : (1.0 - t);
    radius *= 1.5;   // start beyond corner so corners hide last

    // Aspect-correct distance
    vec2 d = (uv - ctr) * vec2(1.6, 1.0);   // approx 16:10
    float dist = length(d);

    if (dist > radius) {
        gl_FragColor = vec4(color, 1.0);
    } else {
        gl_FragColor = c;
    }
}
