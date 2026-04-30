// Snow Particles Shader for MKXP-Z
// Falling snowflakes with horizontal sway. Stacks under :frozen for full winter look.
//
// Optional uniforms:
//   intensity (default 1.0)  - flake brightness
//   count     (default 60)   - number of flakes (capped at 80)
//   speed     (default 1.0)  - fall speed
//   sway      (default 0.05) - horizontal sway amplitude

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;
uniform float sway;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n     = count     > 0.0 ? count     : 60.0;
    float str   = intensity > 0.0 ? intensity : 1.0;
    float spd   = speed     > 0.0 ? speed     : 1.0;
    float swayA = sway      > 0.0 ? sway      : 0.05;

    float flakes = 0.0;
    for (int i = 0; i < 80; i++) {
        if (float(i) >= n) break;
        float fi = float(i);
        float seedX = hash(vec2(fi, 7.0));
        float seedT = hash(vec2(fi, 19.0));
        float seedS = hash(vec2(fi, 31.0));   // size variance

        float life = 4.0 + seedS * 4.0;
        float prog = mod(time * spd * 0.20 + seedT * life, life) / life;

        vec2 pos;
        pos.x = seedX + sin(time * (0.6 + seedS * 1.4) + fi * 1.9) * swayA;
        pos.y = prog;

        float d = length((uv - pos) * vec2(1.0, 1.0));
        // Smaller flakes far away, larger close — life fraction acts as depth cue
        float size = 0.0009 + seedS * 0.0014;
        flakes += size / (d * d + 0.0006);
    }

    color.rgb += vec3(0.95, 0.97, 1.0) * flakes * str * 0.45;
    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
