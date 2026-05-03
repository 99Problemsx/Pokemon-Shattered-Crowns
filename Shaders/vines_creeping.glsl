// Vines Creeping Shader for MKXP-Z
// Plants growing from corners across screen edges. Forest/jungle/ruins.
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

    // Pull UV toward nearest corner
    vec2 corner = vec2(uv.x < 0.5 ? 0.0 : 1.0, uv.y < 0.5 ? 0.0 : 1.0);
    vec2 fromCorner = abs(uv - corner);
    float cornerDist = length(fromCorner);

    // Sway with time
    float sway = sin(time * 0.6 + uv.x * 6.0) * 0.005;
    vec2 q = uv + vec2(sway, sway * 0.5);

    // Vine ridges via fbm
    float n1 = vnoise(q * 10.0 + vec2(corner.x, corner.y) * 5.0);
    float n2 = vnoise(q * 25.0);
    float ridge = abs(n1 - 0.5) * 2.0;
    ridge = 1.0 - ridge;
    ridge = smoothstep(0.78, 0.95, ridge);

    // Vine mask — limited to corner regions
    float reach = 0.45 * spr;
    float cornerMask = 1.0 - smoothstep(reach * 0.5, reach, cornerDist);
    float vine = ridge * cornerMask;

    // Leaf clusters (denser ridges)
    float leaf = smoothstep(0.55, 0.75, n1) * smoothstep(0.55, 0.75, n2) * cornerMask;

    vec3 vineCol = vec3(0.18, 0.45, 0.20);
    vec3 leafCol = vec3(0.30, 0.65, 0.25);

    c.rgb = mix(c.rgb, vineCol, vine * str * 0.85);
    c.rgb = mix(c.rgb, leafCol, leaf * str * 0.65);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
