// Moss Overgrowth Shader for MKXP-Z
// Greenish vignette at edges + organic noise. Forgotten/overgrown places.
// Optional uniforms:
//   intensity (1.0), spread (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
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

    // Distance-from-edge mask
    float dx = min(uv.x, 1.0 - uv.x);
    float dy = min(uv.y, 1.0 - uv.y);
    float edgeDist = min(dx, dy);
    float edge = 1.0 - smoothstep(0.0, 0.30 * spr, edgeDist);

    // Organic moss texture
    float n1 = vnoise(uv * 14.0);
    float n2 = vnoise(uv * 30.0);
    float moss = smoothstep(0.45, 0.65, n1 * 0.7 + n2 * 0.3) * edge;

    vec3 mossCol = vec3(0.20, 0.50, 0.20);
    c.rgb = mix(c.rgb, c.rgb * mossCol + mossCol * 0.25, moss * str * 0.7);

    // Slight darkening from moss layer
    c.rgb *= 1.0 - moss * 0.25 * str;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
