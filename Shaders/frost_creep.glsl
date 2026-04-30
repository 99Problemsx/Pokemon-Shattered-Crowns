// Frost Creep Shader for MKXP-Z
// Ice crystals creep inward from the screen edges over time.
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

    // Distance from nearest edge
    float dx = min(uv.x, 1.0 - uv.x);
    float dy = min(uv.y, 1.0 - uv.y);
    float edgeDist = min(dx, dy);

    // Frost mask — strong at edges, fades inward
    float frost = 1.0 - smoothstep(0.0, 0.40 * spr, edgeDist);
    if (frost < 0.001) {
        gl_FragColor = c;
        return;
    }

    // Crystalline texture — high-frequency noise breaks up the band
    vec2 q = uv * 18.0;
    float n1 = vnoise(q);
    float n2 = vnoise(q * 2.0);
    float crystals = smoothstep(0.42, 0.60, n1 * n2);

    float ice = frost * (0.55 + crystals * 0.45);

    // Cool blue-white crystal color
    vec3 iceCol = vec3(0.85, 0.92, 1.05);
    c.rgb = mix(c.rgb, c.rgb * iceCol + iceCol * 0.4, ice * str * 0.7);

    // Sharp glints
    float glint = pow(n2, 18.0) * 8.0 * frost;
    c.rgb += vec3(1.0) * glint * str;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
