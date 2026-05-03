// Blue Fire / Ghost Flames Shader for MKXP-Z
// Cyan/blue ember variant — ghostly flames, will-o'-the-wisps.
// Same particle math as :embers, different color and slower flicker.
// Optional uniforms:
//   intensity (1.0), count (25), speed (0.8)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n   = count     > 0.0 ? count     : 25.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 0.8;

    float glow = 0.0;
    float bloom = 0.0;

    for (int i = 0; i < 40; i++) {
        if (float(i) >= n) break;
        float fi = float(i);
        float seedX = hash(vec2(fi, 11.0));
        float seedT = hash(vec2(fi, 23.0));
        float seedF = hash(vec2(fi, 41.0));

        float life = 4.0 + seedF * 4.0;
        float prog = mod(time * spd + seedT * life, life) / life;

        vec2 pos;
        pos.x = seedX + sin(time * (1.0 + seedF * 1.5) + fi * 1.7) * 0.07;
        pos.y = 1.0 - prog;

        float fade = smoothstep(0.0, 0.2, prog) * (1.0 - smoothstep(0.85, 1.0, prog));
        // Slower, eerier flicker than embers
        float flicker = 0.6 + 0.4 * sin(time * (4.0 + seedF * 4.0) + fi * 3.5);

        float d = length(uv - pos);
        glow  += 0.0008 / (d * d + 0.00018) * fade * flicker;
        bloom += 0.0025 / (d * d + 0.0020) * fade * 0.4;
    }

    vec3 coreCol = vec3(0.85, 0.95, 1.0);
    vec3 haloCol = vec3(0.10, 0.50, 1.0);
    color.rgb += (coreCol * glow + haloCol * bloom) * str;

    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
