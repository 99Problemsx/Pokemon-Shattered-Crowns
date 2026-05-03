// Blood Moon Shader for MKXP-Z
// Red-tinted night with menacing atmosphere. Story-trigger moments.
// Optional uniforms:
//   intensity (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;

    // Strong red shift, suppress green & blue
    c.rgb = c.rgb * mix(vec3(1.0), vec3(1.30, 0.55, 0.50), 0.75 * str);

    // Overall darkening, deeper red in shadows
    c.rgb *= mix(1.0, 0.55, 0.60 * str);
    c.rgb += vec3(0.10, 0.0, 0.0) * (1.0 - dot(c.rgb, vec3(0.299, 0.587, 0.114))) * str;

    // Pulsing red haze across the screen
    float pulse = 0.9 + 0.1 * sin(time * 0.8);
    vec2 ctr = uv - 0.5;
    float vig = 1.0 - dot(ctr, ctr) * 1.2;
    c.rgb += vec3(0.18, 0.0, 0.02) * pulse * (1.0 - vig) * str;

    gl_FragColor = vec4(clamp(c.rgb, 0.0, 1.0), c.a);
}
