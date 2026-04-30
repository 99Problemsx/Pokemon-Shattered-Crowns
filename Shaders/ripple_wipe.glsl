// Ripple Wipe Shader for MKXP-Z
// Expanding ring transition that distorts as it passes.
// Optional uniforms:
//   triggerTime (0.0), duration (0.80), source ([0.5, 0.5]), color ([0.0, 0.0, 0.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform vec2  source;
uniform vec3  color;

void main() {
    vec2 uv = v_texCoord;

    if (triggerTime <= 0.0) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    float dur = duration > 0.0 ? duration : 0.80;
    vec2  src = (source.x != 0.0 || source.y != 0.0) ? source : vec2(0.5, 0.5);

    float dt = time - triggerTime;
    if (dt < 0.0) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }
    if (dt > dur) {
        gl_FragColor = vec4(color, 1.0);
        return;
    }

    float t = dt / dur;
    float radius = t * 1.7;

    vec2 d = (uv - src) * vec2(1.6, 1.0);
    float dist = length(d);

    // Distortion at the wave front
    float front = abs(dist - radius);
    float dStrength = exp(-front * 14.0) * 0.04;
    vec2 dir = (uv - src) / max(dist, 0.0001);
    vec2 sampleUV = uv - dir * dStrength;

    // Behind the wave: faded to the wipe color
    float wiped = smoothstep(radius - 0.05, radius, dist);
    wiped = 1.0 - wiped;   // 1 = uncovered, 0 = wiped

    vec4 sceneCol = texture2D(texture, sampleUV);
    gl_FragColor = vec4(mix(color, sceneCol.rgb, wiped), 1.0);
}
