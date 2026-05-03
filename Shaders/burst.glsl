// Burst Shader for MKXP-Z
// Radial lines exploding outward from a focus point. Mega/Tera intros, big reveals.
// Optional uniforms:
//   triggerTime (0.0), duration (0.70), focus ([0.5, 0.5]), spokes (24.0), color ([1.0, 1.0, 1.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform vec2  focus;
uniform float spokes;
uniform vec3  color;

void main() {
    vec2 uv = v_texCoord;
    vec4 c = texture2D(texture, uv);

    if (triggerTime <= 0.0) { gl_FragColor = c; return; }

    float dur = duration > 0.0 ? duration : 0.70;
    vec2  ctr = (focus.x != 0.0 || focus.y != 0.0) ? focus : vec2(0.5, 0.5);
    float sp  = spokes   > 0.0 ? spokes   : 24.0;
    vec3  col = (color.r + color.g + color.b > 0.0) ? color : vec3(1.0, 1.0, 1.0);

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) { gl_FragColor = c; return; }

    float t = dt / dur;
    float weight = sin(t * 3.14159);

    vec2 d = uv - ctr;
    float dist = length(d);
    float angle = atan(d.y, d.x);

    // Spokes: high values where angle aligns with a spoke
    float spoke = pow(abs(cos(angle * sp * 0.5)), 60.0);

    // Inner radius starts small, expands
    float innerR = t * 0.6;
    float outerR = innerR + 0.5;
    float band = smoothstep(innerR, innerR + 0.05, dist) * (1.0 - smoothstep(outerR - 0.05, outerR, dist));

    float burst = spoke * band * weight;
    c.rgb = mix(c.rgb, col, clamp(burst, 0.0, 1.0));

    // Center white-out at peak
    float core = 1.0 - smoothstep(0.0, 0.20 + t * 0.4, dist);
    c.rgb = mix(c.rgb, col, core * weight * 0.7);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
