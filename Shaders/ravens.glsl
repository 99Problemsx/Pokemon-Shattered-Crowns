// Ravens Shader for MKXP-Z
// Black bird silhouettes drifting across the screen. Norse / Odin atmosphere.
// Optional uniforms:
//   intensity (1.0), count (5), speed (1.0), altitude (0.30)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float speed;
uniform float altitude;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

// Bird silhouette — two arcs forming a "V" wing shape
float birdShape(vec2 p, float wingPhase) {
    // Move into bird-local space
    p.x = abs(p.x);    // mirror horizontally
    // Wing flap modulates wing curve
    float flap = sin(wingPhase) * 0.4;
    float wingY = -p.x * 0.5 + flap * p.x;
    float bodyDist = abs(p.y - wingY);
    return smoothstep(0.012, 0.0, bodyDist) * smoothstep(0.10, 0.0, p.x);
}

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n   = count     > 0.0 ? count     : 5.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;
    float alt = altitude  > 0.0 ? altitude  : 0.30;

    float birds = 0.0;
    for (int i = 0; i < 10; i++) {
        if (float(i) >= n) break;
        float fi = float(i);
        float seedY = hash(vec2(fi, 7.0));
        float seedT = hash(vec2(fi, 13.0));
        float seedSize = hash(vec2(fi, 19.0));

        // Birds traverse left to right
        float life = 12.0 + seedSize * 8.0;
        float prog = mod(time * spd * 0.10 + seedT * life, life) / life;

        vec2 pos;
        pos.x = -0.1 + prog * 1.2;
        pos.y = alt + (seedY - 0.5) * 0.25 + sin(time * 0.5 + fi) * 0.02;

        float size = 0.6 + seedSize * 0.6;
        vec2 local = (uv - pos) / (0.06 * size);
        float wingPhase = time * (8.0 + seedSize * 4.0) + fi * 3.0;
        birds += birdShape(local, wingPhase);
    }

    c.rgb *= 1.0 - clamp(birds, 0.0, 1.0) * 0.85 * str;

    gl_FragColor = vec4(c.rgb, c.a);
}
