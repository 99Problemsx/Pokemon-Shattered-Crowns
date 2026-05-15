// GBC Palette — quantizes the screen to 4 colours, Game Boy Color style.
// Pairs nicely with crt_scanlines for a full retro look.
//
// Optional uniforms:
//   palette (0..3, default 0) — pick the palette set
//                                0 = green (classic GB)
//                                1 = grey
//                                2 = sepia
//                                3 = norse blue (cool / SC theme)
//   strength (0..1, default 1.0) — mix back toward original

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float palette;
uniform float strength;

void main() {
    vec4 c = texture2D(texture, v_texCoord);

    int  pal  = int(palette + 0.5);
    float str = strength > 0.0 ? strength : 1.0;

    // Each palette has 4 colours (light → dark)
    vec3 p0, p1, p2, p3;
    if (pal == 1) {
        // Grey
        p0 = vec3(0.95); p1 = vec3(0.65); p2 = vec3(0.35); p3 = vec3(0.08);
    } else if (pal == 2) {
        // Sepia
        p0 = vec3(0.95, 0.88, 0.70);
        p1 = vec3(0.80, 0.65, 0.45);
        p2 = vec3(0.55, 0.40, 0.25);
        p3 = vec3(0.18, 0.12, 0.06);
    } else if (pal == 3) {
        // Norse blue (SC theme)
        p0 = vec3(0.90, 0.96, 1.00);
        p1 = vec3(0.55, 0.75, 0.95);
        p2 = vec3(0.20, 0.35, 0.65);
        p3 = vec3(0.05, 0.10, 0.22);
    } else {
        // Green (classic GB)
        p0 = vec3(0.88, 0.97, 0.61);
        p1 = vec3(0.55, 0.75, 0.30);
        p2 = vec3(0.20, 0.45, 0.20);
        p3 = vec3(0.05, 0.18, 0.05);
    }

    // Quantize by luminance
    float lum = dot(c.rgb, vec3(0.299, 0.587, 0.114));
    vec3 q;
    if      (lum > 0.75) q = p0;
    else if (lum > 0.50) q = p1;
    else if (lum > 0.25) q = p2;
    else                 q = p3;

    gl_FragColor = vec4(mix(c.rgb, q, str), c.a);
}
