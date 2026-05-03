// Bifrost Shader for MKXP-Z
// Rainbow-bridge band rising vertically. Norse Asgheim signature effect.
// Optional uniforms:
//   intensity (1.0), centerX (0.5), width (0.18), shimmerSpeed (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float centerX;
uniform float width;
uniform float shimmerSpeed;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity    > 0.0 ? intensity    : 1.0;
    float cx  = centerX      > 0.0 ? centerX      : 0.5;
    float w   = width        > 0.0 ? width        : 0.18;
    float spd = shimmerSpeed > 0.0 ? shimmerSpeed : 1.0;

    float dx = uv.x - cx;
    // Vertical band falloff
    float band = exp(-dx * dx / (w * w * 0.45));
    if (band < 0.001) {
        gl_FragColor = c;
        return;
    }

    // 7-color rainbow stack across the width
    float n = (dx / w + 1.0) * 0.5;       // 0..1 across the band
    n = clamp(n, 0.0, 1.0);
    vec3 rainbow;
    if      (n < 1.0/7.0) rainbow = mix(vec3(1.0, 0.1, 0.1), vec3(1.0, 0.55, 0.0), n * 7.0);
    else if (n < 2.0/7.0) rainbow = mix(vec3(1.0, 0.55, 0.0), vec3(1.0, 1.0, 0.0), (n - 1.0/7.0) * 7.0);
    else if (n < 3.0/7.0) rainbow = mix(vec3(1.0, 1.0, 0.0), vec3(0.2, 1.0, 0.2), (n - 2.0/7.0) * 7.0);
    else if (n < 4.0/7.0) rainbow = mix(vec3(0.2, 1.0, 0.2), vec3(0.2, 0.6, 1.0), (n - 3.0/7.0) * 7.0);
    else if (n < 5.0/7.0) rainbow = mix(vec3(0.2, 0.6, 1.0), vec3(0.3, 0.3, 1.0), (n - 4.0/7.0) * 7.0);
    else if (n < 6.0/7.0) rainbow = mix(vec3(0.3, 0.3, 1.0), vec3(0.6, 0.2, 1.0), (n - 5.0/7.0) * 7.0);
    else                  rainbow = mix(vec3(0.6, 0.2, 1.0), vec3(1.0, 0.4, 0.9), (n - 6.0/7.0) * 7.0);

    // Vertical shimmer travelling up the bridge
    float shimmer = 0.6 + 0.4 * sin(uv.y * 30.0 - time * 3.0 * spd + dx * 8.0);
    // Star sparkles along the bridge
    float spk = hash(vec2(floor(uv.x * 200.0), floor(uv.y * 80.0 + time * 6.0 * spd)));
    spk = pow(spk, 30.0) * 6.0;

    c.rgb += (rainbow * shimmer * band * 0.85 + vec3(spk * band)) * str;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
