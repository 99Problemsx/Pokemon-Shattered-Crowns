// Reflection Shader for MKXP-Z
// Mirrors the upper half onto the lower half with ripple distortion.
// Useful for puddles, lakes (the bottom band).
// Optional uniforms:
//   intensity (1.0), height (0.35), rippleStrength (1.0), speed (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float height;
uniform float rippleStrength;
uniform float speed;

void main() {
    vec2 uv = v_texCoord;

    float str = intensity      > 0.0 ? intensity      : 1.0;
    float h   = height         > 0.0 ? height         : 0.35;
    float rip = rippleStrength > 0.0 ? rippleStrength : 1.0;
    float spd = speed          > 0.0 ? speed          : 1.0;

    float waterTop = 1.0 - h;

    if (uv.y < waterTop) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    // Reflect: mirror UV around waterTop
    float depth = uv.y - waterTop;          // 0 at surface, h at bottom
    float reflectedY = waterTop - depth;
    if (reflectedY < 0.0) reflectedY = 0.0;

    // Ripple offset proportional to depth
    float t = time * spd * 1.2;
    float ripple = sin(uv.x * 30.0 + t) * 0.003 * rip * depth / h
                 + sin(uv.x * 70.0 - t * 1.7) * 0.0015 * rip * depth / h;

    vec4 reflected = texture2D(texture, vec2(uv.x + ripple, reflectedY));

    // Tint and dim the reflection
    reflected.rgb *= vec3(0.78, 0.85, 0.95);
    reflected.rgb *= mix(0.95, 0.55, depth / h);   // fade with depth

    // Mix with the original (so non-reflective tiles still show through)
    vec4 original = texture2D(texture, uv);
    gl_FragColor = mix(original, reflected, str * 0.85);
}
