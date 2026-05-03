// Moonbeams Shader for MKXP-Z
// Cool blue light shafts. Cooler/narrower than :godrays.
// Optional uniforms:
//   intensity (1.0), source ([0.5, 0.0]), density (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform vec2  source;
uniform float density;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str  = intensity > 0.0 ? intensity : 1.0;
    vec2  src  = (source.x != 0.0 || source.y != 0.0) ? source : vec2(0.5, 0.0);
    float dens = density > 0.0 ? density : 1.0;

    vec2 dir = (uv - src);
    float dist = length(dir);
    dir /= max(dist, 0.0001);

    float ray = 0.0;
    float w = 1.0;
    vec2 step = -dir * 0.014;
    vec2 p = uv;
    for (int i = 0; i < 22; i++) {
        float n = hash(floor(p * 70.0 + vec2(time * 0.03, 0.0)));
        // Sharper threshold = thinner beams
        n = pow(n, 14.0) * 6.0;
        ray += n * w;
        w *= 0.95;
        p += step;
    }

    float falloff = exp(-dist * 1.8 / dens);
    ray *= falloff * str * 0.35;

    vec3 moonColor = vec3(0.65, 0.78, 1.0);
    c.rgb += moonColor * ray;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
