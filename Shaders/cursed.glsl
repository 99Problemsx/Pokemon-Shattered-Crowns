// Cursed Shader for MKXP-Z
// Inverse of :runes — dark vignette + black wisps creeping inward.
// Optional uniforms:
//   intensity (1.0), speed (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
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
    float spd = speed     > 0.0 ? speed     : 1.0;

    // Heavy desaturation
    float gray = dot(c.rgb, vec3(0.30, 0.59, 0.11));
    c.rgb = mix(c.rgb, vec3(gray) * vec3(0.9, 0.85, 1.0), 0.55 * str);

    // Strong vignette
    vec2 ctr = uv - 0.5;
    float vig = smoothstep(0.30, 0.75, length(ctr));
    c.rgb *= 1.0 - vig * 0.7 * str;

    // Black creeping wisps from edges
    float t = time * spd * 0.08;
    vec2 q = vec2(uv.x * 4.0, uv.y * 4.0);
    float wisp = vnoise(q + vec2(t, -t * 0.6));
    float wisp2 = vnoise(q * 2.0 + vec2(-t * 0.5, t));
    float dark = smoothstep(0.55, 0.85, wisp * 0.6 + wisp2 * 0.4);
    dark *= vig;   // confined to edges

    c.rgb *= 1.0 - dark * 0.8 * str;

    // Faint blood-red shadow tint
    c.rgb += vec3(0.05, 0.0, 0.0) * dark * str;

    gl_FragColor = vec4(clamp(c.rgb, 0.0, 1.0), c.a);
}
