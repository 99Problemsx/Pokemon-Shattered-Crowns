// Tera Burst Shader for MKXP-Z
// Crystal-refraction + color shift for Terastallization moments.
// Optional uniforms:
//   triggerTime (0.0), duration (1.50), color ([0.5, 0.9, 1.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform vec3  color;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec2 uv = v_texCoord;

    if (triggerTime <= 0.0) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    float dur = duration > 0.0 ? duration : 1.50;
    vec3  col = (color.r + color.g + color.b > 0.0) ? color : vec3(0.5, 0.9, 1.0);

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    float t = dt / dur;
    float weight = sin(t * 3.14159);

    // Faceted crystal refraction — chunk uv into hex-ish cells
    vec2 cellUV = floor(uv * 22.0) / 22.0;
    float facet = hash(cellUV);
    vec2 refractDir = vec2(facet - 0.5, hash(cellUV + 5.0) - 0.5);
    vec2 sampledUV = uv + refractDir * 0.012 * weight;

    // Per-channel offset for color burst
    float ca = 0.008 * weight;
    float r = texture2D(texture, sampledUV + vec2(ca, 0.0)).r;
    float g = texture2D(texture, sampledUV).g;
    float b = texture2D(texture, sampledUV - vec2(ca, 0.0)).b;
    vec3 c = vec3(r, g, b);

    // Tint from outer edges inward
    vec2 ctr = uv - 0.5;
    float radial = clamp(length(ctr) * 1.5, 0.0, 1.0);
    c = mix(c, c * col + col * 0.3, weight * radial * 0.6);

    // Sharp specular flecks
    float fleck = pow(hash(cellUV + vec2(time * 4.0, 0.0)), 30.0) * 6.0;
    c += col * fleck * weight;

    gl_FragColor = vec4(min(c, 1.0), 1.0);
}
