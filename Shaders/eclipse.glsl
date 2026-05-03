// Eclipse Shader for MKXP-Z
// Drastic darkening with a corona ring of light.
// Optional uniforms:
//   intensity (1.0), source ([0.5, 0.3]), radius (0.18)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform vec2  source;
uniform float radius;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    vec2  src = (source.x != 0.0 || source.y != 0.0) ? source : vec2(0.5, 0.3);
    float r   = radius   > 0.0 ? radius   : 0.18;

    // Heavy darkening overall
    c.rgb *= mix(1.0, 0.30, 0.85 * str);
    c.rgb = mix(c.rgb, vec3(dot(c.rgb, vec3(0.30, 0.59, 0.11))), 0.5 * str);

    // Corona ring at radius around source
    float d = length(uv - src);
    float ring = exp(-pow((d - r) * 30.0, 2.0));
    // Hot core has slight pulse
    float pulse = 0.85 + 0.15 * sin(time * 1.4);
    vec3 coronaCol = vec3(1.0, 0.78, 0.45);
    c.rgb += coronaCol * ring * pulse * str * 1.3;

    // Inner darkness (the moon disk)
    float disk = smoothstep(r * 1.05, r * 0.85, d);
    c.rgb *= 1.0 - disk * 0.95;

    // Faint outer halo
    float halo = exp(-pow((d - r * 1.4) * 6.0, 2.0)) * 0.25;
    c.rgb += coronaCol * halo * str;

    gl_FragColor = vec4(clamp(c.rgb, 0.0, 1.0), c.a);
}
