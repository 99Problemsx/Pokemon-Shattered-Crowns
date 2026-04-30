// Yggdrasil Shader for MKXP-Z
// Procedural root/branch silhouettes creeping in from screen edges.
// Optional uniforms:
//   intensity (1.0), thickness (1.0), color ([0.18, 0.10, 0.06])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;
uniform float thickness;
uniform vec3  color;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }
float vnoise(vec2 p) {
    vec2 i = floor(p), f = fract(p);
    vec2 u = f*f*(3.0-2.0*f);
    return mix(mix(hash(i+vec2(0.0,0.0)), hash(i+vec2(1.0,0.0)), u.x),
               mix(hash(i+vec2(0.0,1.0)), hash(i+vec2(1.0,1.0)), u.x), u.y);
}
float fbm(vec2 p) {
    float v=0.0, a=0.5;
    for (int i=0; i<4; i++) { v += a*vnoise(p); p*=2.0; a*=0.5; }
    return v;
}

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float th  = thickness > 0.0 ? thickness : 1.0;
    vec3  col = (color.r + color.g + color.b > 0.0) ? color : vec3(0.18, 0.10, 0.06);

    // Distance to nearest edge
    float dx = min(uv.x, 1.0 - uv.x);
    float dy = min(uv.y, 1.0 - uv.y);
    float edgeDist = min(dx, dy);
    float edgeMask = 1.0 - smoothstep(0.0, 0.30 * th, edgeDist);
    if (edgeMask < 0.001) {
        gl_FragColor = c;
        return;
    }

    // Branch pattern — fbm with directional warp toward edges
    vec2 q = uv;
    q.x = q.x < 0.5 ? q.x : 1.0 - q.x;
    q.y = q.y < 0.5 ? q.y : 1.0 - q.y;
    float n = fbm(q * 8.0 + vec2(uv.x * 4.0, uv.y * 4.0));
    float branches = smoothstep(0.55, 0.42, n);   // narrow ridges
    branches *= edgeMask;

    c.rgb = mix(c.rgb, col, branches * str * 0.85);

    gl_FragColor = vec4(c.rgb, c.a);
}
