// Chromatic Aberration Shader for MKXP-Z
// Clean RGB-channel split — subtle for permanent boss-mood look,
// stronger as a transition or rage / dream effect.
//
// Optional uniforms:
//   strength    (default 0.005) - separation amount in UV units
//   pulse       (default 0.0)   - 0 = static, 1 = breathing pulse
//   radial      (default 0.0)   - 0 = uniform shift, 1 = scales with distance from center
//   speed       (default 1.0)   - pulse speed if pulse > 0

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float strength;
uniform float pulse;
uniform float radial;
uniform float speed;

void main() {
    vec2 uv = v_texCoord;
    float s = strength > 0.0 ? strength : 0.005;
    float spd = speed > 0.0 ? speed : 1.0;

    // Optional breathing pulse
    if (pulse > 0.5) {
        s *= 0.6 + 0.4 * sin(time * 1.2 * spd);
    }

    // Optional radial scaling — stronger at edges, calm at center
    vec2 center = uv - 0.5;
    float dist = length(center);
    float radialMul = mix(1.0, 1.0 + dist * 4.0, clamp(radial, 0.0, 1.0));
    s *= radialMul;

    // Direction: away from center if radial, otherwise pure horizontal
    vec2 dir = (radial > 0.5) ? normalize(center + vec2(0.0001)) : vec2(1.0, 0.0);

    float r = texture2D(texture, uv + dir * s).r;
    float g = texture2D(texture, uv).g;
    float b = texture2D(texture, uv - dir * s).b;
    float a = texture2D(texture, uv).a;

    gl_FragColor = vec4(r, g, b, a);
}
