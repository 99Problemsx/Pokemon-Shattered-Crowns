// Slash Wipe Shader for MKXP-Z
// Diagonal cut transition. Action-scene feel.
// Optional uniforms:
//   triggerTime (0.0), duration (0.55), angle (0.78), thickness (0.06), color ([0.0, 0.0, 0.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform float angle;
uniform float thickness;
uniform vec3  color;

void main() {
    vec2 uv = v_texCoord;
    vec4 c = texture2D(texture, uv);

    if (triggerTime <= 0.0) { gl_FragColor = c; return; }

    float dur = duration > 0.0 ? duration : 0.55;
    float ag  = angle    > 0.0 ? angle    : 0.78;
    float th  = thickness > 0.0 ? thickness : 0.06;

    float dt = time - triggerTime;
    if (dt < 0.0) { gl_FragColor = c; return; }
    if (dt > dur) { gl_FragColor = vec4(color, 1.0); return; }

    float t = dt / dur;

    // Project uv onto the slash axis; values along [0..1] sweep across the screen
    float c1 = cos(ag), s1 = sin(ag);
    float proj = c1 * uv.x + s1 * uv.y;
    // The active edge sweeps from (-th) to (1+th)
    float edge = mix(-th * 2.0, 1.0 + th, t);

    if (proj < edge - th) {
        gl_FragColor = vec4(color, 1.0);
    } else if (proj < edge) {
        // Bright slash highlight at the cutting edge
        float k = 1.0 - (edge - proj) / th;
        vec3 flash = mix(c.rgb, vec3(1.0), k);
        gl_FragColor = vec4(mix(vec3(color), flash, k), 1.0);
    } else {
        gl_FragColor = c;
    }
}
