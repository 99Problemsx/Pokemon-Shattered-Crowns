// Soul Fire Shader for MKXP-Z
// Purple/green ember variant — Hel/underworld, necromancy, undead.
// Optional uniforms:
//   intensity (1.0), count (25), speed (0.7), tint (0.0 = green, 1.0 = purple)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;
uniform float tint;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n   = count     > 0.0 ? count     : 25.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 0.7;
    float tn  = clamp(tint, 0.0, 1.0);

    float glow = 0.0;
    float bloom = 0.0;

    for (int i = 0; i < 40; i++) {
        if (float(i) >= n) break;
        float fi = float(i);
        float seedX = hash(vec2(fi, 11.0));
        float seedT = hash(vec2(fi, 23.0));
        float seedF = hash(vec2(fi, 41.0));

        float life = 5.0 + seedF * 5.0;
        float prog = mod(time * spd + seedT * life, life) / life;

        vec2 pos;
        pos.x = seedX + sin(time * (0.7 + seedF * 1.2) + fi * 1.7) * 0.08;
        // Soul fires drift sideways too, not just up
        pos.y = 1.0 - prog * 0.85 - sin(time * 0.3 + fi) * 0.05;

        float fade = smoothstep(0.0, 0.25, prog) * (1.0 - smoothstep(0.8, 1.0, prog));
        float flicker = 0.55 + 0.45 * sin(time * (3.0 + seedF * 3.0) + fi * 2.5);

        float d = length(uv - pos);
        glow  += 0.0007 / (d * d + 0.0002) * fade * flicker;
        bloom += 0.0030 / (d * d + 0.0025) * fade * 0.45;
    }

    vec3 green  = vec3(0.50, 1.00, 0.55);
    vec3 purple = vec3(0.85, 0.40, 1.00);
    vec3 coreCol = mix(green, purple, tn);
    vec3 haloCol = mix(vec3(0.15, 0.55, 0.10), vec3(0.45, 0.10, 0.65), tn);

    color.rgb += (coreCol * glow + haloCol * bloom) * str;

    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
