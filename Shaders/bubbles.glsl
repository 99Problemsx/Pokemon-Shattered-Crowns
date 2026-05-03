// Bubbles Shader for MKXP-Z
// Rising air bubbles. Stacks under :water / :underwater.
// Beaches, aquariums, waterfalls, pools.
//
// Optional uniforms:
//   intensity (default 1.0) - bubble brightness
//   count     (default 25)  - bubble count (capped at 40)
//   speed     (default 1.0) - rise speed
//   sway      (default 0.04) - horizontal sway

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

    float n     = count     > 0.0 ? count     : 25.0;
    float str   = intensity > 0.0 ? intensity : 1.0;
    float spd   = speed     > 0.0 ? speed     : 1.0;
    float swayA = sway      > 0.0 ? sway      : 0.04;

    float bubble = 0.0;
    float ring   = 0.0;

    for (int i = 0; i < 40; i++) {
        if (float(i) >= n) break;
        float fi    = float(i);
        float seedX = hash(vec2(fi,  5.0));
        float seedT = hash(vec2(fi, 13.0));
        float seedR = hash(vec2(fi, 27.0));

        float life = 3.5 + seedR * 3.0;
        float prog = mod(time * spd * 0.25 + seedT * life, life) / life;

        vec2 pos;
        pos.x = seedX + sin(time * (1.0 + seedR * 1.8) + fi * 1.4) * swayA;
        pos.y = 1.0 - prog;   // rise from bottom

        // Per-bubble radius
        float r = 0.005 + seedR * 0.012;
        float d = length(uv - pos);

        // Soft fill plus a brighter rim — looks like a bubble outline
        float fill = exp(-d * d / (r * r * 0.6)) * 0.30;
        float rim  = exp(-pow((d - r) * 60.0, 2.0)) * 0.55;

        // Fade out as bubble nears the surface
        float fade = 1.0 - smoothstep(0.85, 1.0, prog);

        bubble += fill * fade;
        ring   += rim  * fade;
    }

    vec3 bubbleCol = vec3(0.85, 0.95, 1.0);
    color.rgb += bubbleCol * (bubble * 0.6 + ring) * str;

    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
