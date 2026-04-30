// Pixel Dissolve Shader for MKXP-Z
// Tiles fade to wipe color in pseudo-random order. Classic RPG transition.
// Optional uniforms:
//   triggerTime (0.0), duration (0.90), tileSize (16.0), color ([0.0, 0.0, 0.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform float tileSize;
uniform vec3  color;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec2 uv = v_texCoord;
    vec4 c = texture2D(texture, uv);

    if (triggerTime <= 0.0) { gl_FragColor = c; return; }

    float dur = duration > 0.0 ? duration : 0.90;
    float ts  = tileSize > 0.0 ? tileSize : 16.0;

    float dt = time - triggerTime;
    if (dt < 0.0) { gl_FragColor = c; return; }
    if (dt > dur) { gl_FragColor = vec4(color, 1.0); return; }

    float t = dt / dur;

    // Random per-tile threshold; tiles whose threshold < t are wiped
    vec2 res = vec2(640.0, 480.0);
    vec2 cell = floor(uv * res / ts);
    float threshold = hash(cell);

    if (threshold < t) {
        gl_FragColor = vec4(color, 1.0);
    } else {
        gl_FragColor = c;
    }
}
