// Mirage Shader for MKXP-Z
// Heat-mirage with ghosted duplicates of distant scene at low altitude.
// Desert / hot-day distortion.
// Optional uniforms:
//   intensity (1.0), height (0.55), speed (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float height;
uniform float speed;

void main() {
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float h   = height    > 0.0 ? height    : 0.55;
    float spd = speed     > 0.0 ? speed     : 1.0;

    // Active band on the lower portion of screen
    float band = smoothstep(h - 0.05, h + 0.10, uv.y);

    // Heat distortion in the band
    vec2 distortedUV = uv;
    distortedUV.x += sin(uv.y * 60.0 - time * 2.0 * spd) * 0.004 * band * str;
    distortedUV.x += sin(uv.y * 30.0 + time * 1.4 * spd) * 0.0025 * band * str;
    distortedUV.y += cos(uv.x * 40.0 + time * 1.0 * spd) * 0.002 * band * str;

    vec4 c = texture2D(texture, distortedUV);

    // Ghosted upside-down duplicate — pulled from the upper sky region
    if (band > 0.05) {
        // Map points within the band to a sky region above
        float depth = (uv.y - h) / (1.0 - h);
        vec2 ghostUV = vec2(distortedUV.x, max(0.0, h - depth * 0.4));
        vec4 ghost = texture2D(texture, ghostUV);
        c.rgb = mix(c.rgb, c.rgb + ghost.rgb * 0.5, band * str * 0.4);
    }

    // Pale wash where shimmer is strongest
    c.rgb += vec3(1.0, 0.95, 0.80) * 0.04 * band * str;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
