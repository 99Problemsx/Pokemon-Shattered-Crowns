// Starfield Shader for MKXP-Z
// Twinkling stars across the upper portion of the screen, with parallax.
// Optional uniforms:
//   intensity (1.0), count (50), parallax (0.05)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float count;
uniform float parallax;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float n   = count     > 0.0 ? count     : 50.0;
    float str = intensity > 0.0 ? intensity : 1.0;
    float plx = parallax  > 0.0 ? parallax  : 0.05;

    // Stars only above the horizon
    if (uv.y > 0.65) {
        gl_FragColor = c;
        return;
    }

    float stars = 0.0;
    for (int i = 0; i < 80; i++) {
        if (float(i) >= n) break;
        float fi = float(i);

        // Three depth layers with different parallax
        float layer = mod(fi, 3.0);
        float layerPlx = plx * (1.0 - layer * 0.3);

        vec2 pos;
        pos.x = hash(vec2(fi, 1.0)) + sin(time * 0.05 * (1.0 + layer)) * layerPlx;
        pos.y = hash(vec2(fi, 2.0)) * 0.6;   // upper portion only

        float twinkle = 0.4 + 0.6 * sin(time * (2.0 + hash(vec2(fi, 5.0)) * 4.0) + fi);
        float d = length(uv - pos);
        float size = (3.0 - layer) * 0.0003;
        stars += twinkle * size / (d * d + 0.0002);
    }

    c.rgb += vec3(0.95, 0.97, 1.0) * stars * str * 0.5;
    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
