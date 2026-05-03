// Caustics Shader for MKXP-Z
// Light patterns through water/ice — refracted ripples on the floor.
// Pairs perfectly with :underwater or :ice cave.
// Optional uniforms:
//   intensity (1.0), speed (1.0), scale (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform float scale;

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;
    float sc  = scale     > 0.0 ? scale     : 1.0;

    // Distorted, animated ripple field
    vec2 p = uv * 6.0 * sc;
    float t = time * spd * 0.4;
    float a = sin(p.x + sin(p.y + t)) + sin(p.y - sin(p.x + t * 0.7));
    float b = sin(p.x * 1.3 + t * 1.2) * cos(p.y * 1.4 - t * 0.9);
    float caustic = 0.5 + 0.5 * (a + b * 0.6) / 2.5;

    // Sharpen — bright threadlike caustic ridges
    caustic = pow(caustic, 6.0) * 4.0;

    // Cool blue tint
    vec3 caCol = vec3(0.55, 0.85, 1.0);
    c.rgb += caCol * caustic * str * 0.45;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
