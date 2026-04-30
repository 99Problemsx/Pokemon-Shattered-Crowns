// Spider Webs Shader for MKXP-Z
// Procedural web strands in screen corners — abandoned places, caves.
// Optional uniforms:
//   intensity (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

// Distance from point p to line segment ab
float lineSDF(vec2 p, vec2 a, vec2 b) {
    vec2 pa = p - a;
    vec2 ba = b - a;
    float h = clamp(dot(pa, ba) / dot(ba, ba), 0.0, 1.0);
    return length(pa - ba * h);
}

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str = intensity > 0.0 ? intensity : 1.0;

    // Webs in all four corners
    float web = 0.0;
    for (int corner = 0; corner < 4; corner++) {
        vec2 cnr;
        if      (corner == 0) cnr = vec2(0.0, 0.0);
        else if (corner == 1) cnr = vec2(1.0, 0.0);
        else if (corner == 2) cnr = vec2(0.0, 1.0);
        else                  cnr = vec2(1.0, 1.0);

        vec2 fromCorner = uv - cnr;
        float dist = length(fromCorner);

        // Only render webs near the corner
        if (dist > 0.30) continue;

        // Radial threads from the corner
        for (int t = 0; t < 4; t++) {
            float ft = float(t) / 4.0;
            float ang = ft * 1.5708 + (cnr.x > 0.5 ? 1.5708 : 0.0) + (cnr.y > 0.5 ? 3.14159 : 0.0);
            // Wiggle the angle slightly per-thread
            ang += (hash(vec2(float(corner), float(t))) - 0.5) * 0.4;
            vec2 endpoint = cnr + vec2(cos(ang), sin(ang)) * 0.30;
            float d = lineSDF(uv, cnr, endpoint);
            web += smoothstep(0.0015, 0.0, d) * (1.0 - dist / 0.30);
        }

        // Concentric arc strands connecting threads
        for (int r = 1; r <= 3; r++) {
            float fr = float(r) / 3.0;
            float ringR = fr * 0.25;
            float ringT = abs(dist - ringR);
            web += smoothstep(0.0015, 0.0, ringT) * 0.4 * (1.0 - dist / 0.30);
        }
    }

    web = clamp(web, 0.0, 1.0);
    c.rgb = mix(c.rgb, vec3(0.92, 0.94, 0.97), web * str * 0.7);

    gl_FragColor = vec4(c.rgb, c.a);
}
