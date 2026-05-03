// Spirit Wisps Shader for MKXP-Z
// Slow drifting cyan/violet ghostly schlieren — for Spirit Realm / haunted scenes
// Combines well with :haunted, :fog, :night
//
// Optional uniforms:
//   intensity   (default 1.0)  - overall wisp brightness
//   speed       (default 1.0)  - drift speed
//   density     (default 1.0)  - how much screen the wisps cover (0.5..2.0)
//   tint        (default 0.0)  - 0 = cyan, 1 = violet, 2 = sickly green
//   corruption  (default 0.0)  - 0..1, adds dark veining for Spirit Realm corruption

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform float density;
uniform float tint;
uniform float corruption;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

float vnoise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(mix(hash(i + vec2(0.0, 0.0)), hash(i + vec2(1.0, 0.0)), u.x),
               mix(hash(i + vec2(0.0, 1.0)), hash(i + vec2(1.0, 1.0)), u.x), u.y);
}

float wispField(vec2 p, float t) {
    // Layered domain-warp noise — gives the schlieren a flowing, smoky quality
    vec2 q = vec2(vnoise(p + vec2(0.0, t)),
                  vnoise(p + vec2(t * 0.7, 1.3)));
    vec2 r = vec2(vnoise(p + 2.0 * q + vec2(1.7, 9.2) + t * 0.3),
                  vnoise(p + 2.0 * q + vec2(8.3, 2.8) - t * 0.4));
    return vnoise(p + 3.0 * r);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str  = intensity > 0.0 ? intensity : 1.0;
    float spd  = speed     > 0.0 ? speed     : 1.0;
    float dens = density   > 0.0 ? density   : 1.0;
    float t    = time * 0.08 * spd;

    float field = wispField(uv * 3.0 * dens, t);
    // Threshold to get separate wisps rather than a uniform haze
    float wisp = smoothstep(0.45, 0.85, field);
    wisp = pow(wisp, 1.5);

    // Pick color from tint mode
    vec3 wispColor;
    if (tint < 0.5) {
        wispColor = vec3(0.4, 0.9, 1.0);   // cyan
    } else if (tint < 1.5) {
        wispColor = vec3(0.7, 0.4, 1.0);   // violet
    } else {
        wispColor = vec3(0.55, 1.0, 0.45); // sickly green
    }

    // Slight pulse so the wisps feel alive
    float pulse = 0.85 + 0.15 * sin(time * 1.3);

    color.rgb += wispColor * wisp * str * 0.55 * pulse;

    // Optional dark corruption veining — black inverse of the wisp field
    if (corruption > 0.01) {
        float corrupt = smoothstep(0.15, 0.0, field);
        color.rgb *= 1.0 - corrupt * corruption * 0.6;
    }

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
