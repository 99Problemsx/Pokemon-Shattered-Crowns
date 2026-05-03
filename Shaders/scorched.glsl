// Scorched Shader for MKXP-Z
// Burn marks creeping inward from edges. Death/horror context.
// Optional uniforms:
//   intensity (1.0), spread (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float spread;

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
    float spr = spread    > 0.0 ? spread    : 1.0;

    // Distance from edge
    float dx = min(uv.x, 1.0 - uv.x);
    float dy = min(uv.y, 1.0 - uv.y);
    float edgeDist = min(dx, dy);

    // Organic burn pattern — uneven boundary
    float n = vnoise(uv * 6.0) + vnoise(uv * 12.0) * 0.5;
    float burnReach = 0.30 * spr + n * 0.05;
    float burn = 1.0 - smoothstep(0.0, burnReach, edgeDist);
    if (burn < 0.001) {
        gl_FragColor = c;
        return;
    }

    // Charred black at deep burn, ember-red glow at the wavefront
    float deep = smoothstep(0.4, 1.0, burn);
    float front = burn - deep;

    c.rgb *= 1.0 - deep * 0.95 * str;
    c.rgb += vec3(1.0, 0.35, 0.05) * front * str * 0.65;

    // Tiny flickering hot spots in the burn boundary
    float spark = pow(hash(floor(uv * 200.0) + floor(time * 12.0)), 30.0) * 8.0;
    c.rgb += vec3(1.0, 0.5, 0.1) * spark * front * str;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
