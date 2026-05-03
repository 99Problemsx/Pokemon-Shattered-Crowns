// VHS Shader for MKXP-Z
// Tracking error + scanlines + chromatic + grain. Old recordings, retrowave.
// Optional uniforms:
//   intensity (1.0), trackError (1.0), scanline (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float trackError;
uniform float scanline;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec2 uv = v_texCoord;
    float str = intensity  > 0.0 ? intensity  : 1.0;
    float te  = trackError > 0.0 ? trackError : 1.0;
    float scn = scanline   > 0.0 ? scanline   : 1.0;

    // Tracking jitter — sliced offset bands moving down
    float trackTime = time * 0.4;
    float band = floor(uv.y * 60.0 + trackTime);
    float trackJitter = (hash(vec2(band, floor(trackTime * 3.0))) - 0.5) * 0.02 * te * str;
    uv.x += trackJitter;

    // Strong RGB shift
    float ca = 0.006 * str;
    float r = texture2D(texture, vec2(uv.x + ca, uv.y)).r;
    float g = texture2D(texture, uv).g;
    float b = texture2D(texture, vec2(uv.x - ca, uv.y)).b;
    vec3 c = vec3(r, g, b);

    // Slight saturation bump for that VHS color look
    float lum = dot(c, vec3(0.299, 0.587, 0.114));
    c = mix(vec3(lum), c, 1.15);

    // Scanlines
    float scan = sin(uv.y * 1200.0) * 0.5 + 0.5;
    c *= mix(1.0, 0.85 + scan * 0.15, scn * str);

    // Bottom edge tracking glitch — occasional bright streak
    if (uv.y > 0.92) {
        float streak = hash(vec2(floor(uv.x * 80.0), floor(time * 30.0))) > 0.95 ? 1.0 : 0.0;
        c += vec3(1.0) * streak * 0.4 * str;
    }

    // Grain
    float n = hash(uv * 800.0 + time * 13.0) - 0.5;
    c += n * 0.06 * str;

    gl_FragColor = vec4(clamp(c, 0.0, 1.0), 1.0);
}
