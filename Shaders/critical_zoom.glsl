// Critical Zoom Shader for MKXP-Z
// Radial blur toward the center for crit hits, big reveals.
// Best driven by triggerTime so the zoom plays out and stops.
// Optional uniforms:
//   triggerTime (0.0), duration (0.30), strength (1.0), focus ([0.5, 0.5])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform float strength;
uniform vec2  focus;

void main() {
    vec2 uv = v_texCoord;

    if (triggerTime <= 0.0) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    float dur = duration > 0.0 ? duration : 0.30;
    float str = strength > 0.0 ? strength : 1.0;
    vec2  ctr = (focus.x != 0.0 || focus.y != 0.0) ? focus : vec2(0.5, 0.5);

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    // Ease in-out
    float t = dt / dur;
    float curve = sin(t * 3.14159);   // 0 -> 1 -> 0
    float amount = curve * 0.04 * str;

    vec2 dir = normalize(uv - ctr + vec2(0.00001));
    float dist = length(uv - ctr);

    vec3 col = vec3(0.0);
    float total = 0.0;
    for (int i = 0; i < 10; i++) {
        float f = float(i) / 9.0;
        vec2 sampleUV = uv - dir * dist * amount * f;
        col += texture2D(texture, sampleUV).rgb * (1.0 - f * 0.4);
        total += 1.0 - f * 0.4;
    }
    col /= total;

    gl_FragColor = vec4(col, 1.0);
}
