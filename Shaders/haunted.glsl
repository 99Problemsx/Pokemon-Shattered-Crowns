// Haunted Shader for MKXP-Z
// Chromatic aberration + subtle glitch distortion for ghost areas

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;

float hash(float n) {
    return fract(sin(n) * 43758.5453);
}

void main() {
    vec2 uv = v_texCoord;
    float str = intensity > 0.0 ? intensity : 1.0;

    // Occasional glitch offset
    float glitchLine = hash(floor(time * 6.0));
    float glitch = 0.0;
    if (glitchLine > 0.85) {
        float band = step(0.0, sin(uv.y * 80.0 + time * 20.0));
        glitch = band * 0.008 * str;
    }

    // Chromatic aberration — split RGB channels
    float aberration = 0.002 * str + glitch;
    vec2 dir = uv - 0.5;
    float r = texture2D(texture, uv + dir * aberration).r;
    float g = texture2D(texture, uv).g;
    float b = texture2D(texture, uv - dir * aberration).b;
    float a = texture2D(texture, uv).a;

    vec3 color = vec3(r, g, b);

    // Desaturate toward cold purple
    float gray = dot(color, vec3(0.299, 0.587, 0.114));
    color = mix(color, vec3(gray), 0.3 * str);
    color *= vec3(0.9, 0.82, 1.0);

    // Dark vignette
    float vig = 1.0 - dot(dir, dir) * 3.0;
    color *= clamp(vig, 0.2, 1.0);

    // Subtle flicker
    float flicker = 0.97 + 0.03 * sin(time * 15.0);
    color *= flicker;

    gl_FragColor = vec4(clamp(color, 0.0, 1.0), a);
}
