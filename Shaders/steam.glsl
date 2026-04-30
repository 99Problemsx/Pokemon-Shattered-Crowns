// Steam Shader for MKXP-Z
// Rising white vapor — hot springs, steam vents, geysers, kitchens.
// Optional uniforms:
//   intensity (1.0), speed (1.0), source ([0.5, 1.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform vec2  source;   // origin point in [0..1] uv space (default bottom-center)

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }
float vnoise(vec2 p) {
    vec2 i = floor(p), f = fract(p);
    vec2 u = f*f*(3.0-2.0*f);
    return mix(mix(hash(i+vec2(0.0,0.0)), hash(i+vec2(1.0,0.0)), u.x),
               mix(hash(i+vec2(0.0,1.0)), hash(i+vec2(1.0,1.0)), u.x), u.y);
}

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;
    vec2  src = (source.x != 0.0 || source.y != 0.0) ? source : vec2(0.5, 1.0);

    // Distance to source (cone-shaped above the source)
    vec2 d = uv - src;
    float horizFalloff = 1.0 - smoothstep(0.0, 0.35 + (-d.y) * 0.6, abs(d.x));
    float vertFalloff  = smoothstep(0.0, -0.6, d.y);  // only above source

    if (horizFalloff <= 0.001 || vertFalloff <= 0.001) {
        gl_FragColor = c;
        return;
    }

    // Rising steam pattern
    float t = time * spd;
    vec2 q = vec2(uv.x * 4.0, uv.y * 6.0 + t * 0.4);
    float n1 = vnoise(q);
    float n2 = vnoise(q * 2.0 + vec2(t * 0.3, t * 0.5));
    float steam = pow(n1 * 0.6 + n2 * 0.4, 1.3);

    float strength = steam * horizFalloff * vertFalloff;

    c.rgb = mix(c.rgb, vec3(0.98, 0.99, 1.0), strength * str * 0.75);
    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
