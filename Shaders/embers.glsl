// Magma Embers Shader for MKXP-Z
// Glowing red-orange ember particles drift upward like sparks rising from lava
// Combines well with :lava (waves) for full magma scenes
// Requires: uniform float time (auto-updated)
//
// Optional uniforms:
//   intensity (default 1.0) - overall glow brightness
//   count     (default 25)  - particle count (capped at 40)
//   driftX    (default 0.06) - horizontal sway amplitude
//   speed     (default 1.0) - rise speed multiplier

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float driftX;
uniform float speed;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float numEmbers = count > 0.0 ? count : 25.0;
    float str      = intensity > 0.0 ? intensity : 1.0;
    float swayAmp  = driftX > 0.0 ? driftX : 0.06;
    float riseMul  = speed > 0.0 ? speed : 1.0;

    float glow = 0.0;
    float bloomGlow = 0.0;

    for (int i = 0; i < 40; i++) {
        if (float(i) >= numEmbers) break;
        float fi = float(i);

        // Random per-ember spawn x in [0,1] and lifecycle phase offset
        float seedX  = hash(vec2(fi, 11.0));
        float seedT  = hash(vec2(fi, 23.0));
        float seedF  = hash(vec2(fi, 41.0));    // size/flicker variance

        // Each ember rises 0->1 over ~3-6 seconds, then respawns at bottom
        float lifeSpan = 3.0 + seedF * 3.0;
        float life = mod(time * riseMul + seedT * lifeSpan, lifeSpan) / lifeSpan;

        // Position
        float swayFreq = 1.5 + seedF * 2.5;
        vec2 pos;
        pos.x = seedX + sin(time * swayFreq + fi * 1.7) * swayAmp;
        pos.y = 1.0 - life;   // start at bottom (y=1), rise to top (y=0)

        // Fade in at spawn, fade out at top
        float fade = smoothstep(0.0, 0.15, life) * (1.0 - smoothstep(0.85, 1.0, life));

        // Hot flicker
        float flicker = 0.7 + 0.3 * sin(time * (8.0 + seedF * 6.0) + fi * 5.3);

        // Tight bright core + soft halo
        float d = length(uv - pos);
        float core = 0.0006 / (d * d + 0.00012);
        float halo = 0.002  / (d * d + 0.0015);

        glow      += core * fade * flicker;
        bloomGlow += halo * fade * 0.35;
    }

    // Color ramp: bright yellow-white core, deep orange-red halo
    vec3 coreColor = vec3(1.0, 0.85, 0.35);
    vec3 haloColor = vec3(1.0, 0.35, 0.05);
    vec3 emit = coreColor * glow + haloColor * bloomGlow;
    emit *= str;

    color.rgb += emit;

    gl_FragColor = vec4(min(color.rgb, 1.0), color.a);
}
