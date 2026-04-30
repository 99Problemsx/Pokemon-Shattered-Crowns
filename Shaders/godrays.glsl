// God Rays Shader for MKXP-Z
// Volumetric light shafts radiating from a source point. Trees, windows, clouds.
// Optional uniforms:
//   intensity (1.0), source ([0.3, 0.0]), density (1.0), decay (0.96)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform vec2  source;
uniform float density;
uniform float decay;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str  = intensity > 0.0 ? intensity : 1.0;
    vec2  src  = (source.x != 0.0 || source.y != 0.0) ? source : vec2(0.3, 0.0);
    float dens = density > 0.0 ? density : 1.0;
    float dcy  = decay   > 0.0 ? decay   : 0.96;

    vec2 dir = (uv - src);
    float dist = length(dir);
    dir /= max(dist, 0.0001);

    // Sample noise along ray to get visible shafts
    float ray = 0.0;
    float w = 1.0;
    vec2 step = -dir * 0.012;
    vec2 p = uv;
    for (int i = 0; i < 24; i++) {
        float n = hash(floor(p * 60.0 + vec2(time * 0.05, 0.0)));
        n = pow(n, 8.0) * 4.0;
        ray += n * w;
        w *= dcy;
        p += step;
    }

    // Falloff with distance from source
    float falloff = exp(-dist * 1.5 / dens);
    ray *= falloff * str * 0.45;

    vec3 godColor = vec3(1.0, 0.95, 0.78);
    c.rgb += godColor * ray;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
