// Ground Mist Shader for MKXP-Z
// Low-hugging mist along the bottom of the screen. Drifts slowly.
// Different from :fog (uniform) and :rolling_fog (mid-screen drift).
// Optional uniforms:
//   intensity (1.0), height (0.5), speed (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float height;
uniform float speed;

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
    float h   = height    > 0.0 ? height    : 0.5;
    float spd = speed     > 0.0 ? speed     : 1.0;

    // Mist gradient — strong at bottom, fades upward
    float bandY = smoothstep(1.0 - h, 1.0, uv.y);

    // Wavy mist surface
    float n1 = vnoise(vec2(uv.x * 4.0 + time * spd * 0.15, uv.y * 6.0));
    float n2 = vnoise(vec2(uv.x * 8.0 - time * spd * 0.10, uv.y * 12.0));
    float surface = (n1 * 0.7 + n2 * 0.3);
    surface = pow(surface, 1.4);

    float mist = bandY * (0.55 + surface * 0.45);
    vec3 mistColor = vec3(0.88, 0.92, 0.96);

    c.rgb = mix(c.rgb, mistColor, mist * str * 0.7);
    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
