// Cracked Screen Shader for MKXP-Z
// Crack pattern overlay — boss phase change, screen-break moments.
// Cracks emanate from a focus point.
// Optional uniforms:
//   intensity (1.0), focus ([0.5, 0.5]), density (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float intensity;
uniform vec2  focus;
uniform float density;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

void main() {
    vec2 uv = v_texCoord;
    vec4 c = texture2D(texture, uv);

    float str = intensity > 0.0 ? intensity : 1.0;
    vec2  ctr = (focus.x != 0.0 || focus.y != 0.0) ? focus : vec2(0.5, 0.5);
    float den = density > 0.0 ? density : 1.0;

    vec2 d = uv - ctr;
    float dist = length(d);
    float angle = atan(d.y, d.x);

    // Main radial cracks: high-frequency angle modulation creates jagged spokes
    float angCells = floor((angle + 3.14159) * 4.0 * den);
    float jitter = (hash(vec2(angCells, 1.0)) - 0.5) * 0.6;
    float modAngle = angle + jitter;
    float spoke = abs(cos(modAngle * (8.0 * den)));
    spoke = pow(spoke, 80.0);

    // Concentric ring cracks
    float ringAngle = floor(dist * 30.0);
    float ringJ = hash(vec2(ringAngle, 5.0));
    float ring = step(0.93, ringJ) * step(0.005, abs(fract(dist * 30.0) - 0.5));

    // Distance falloff — cracks fade at edges
    float falloff = exp(-dist * 1.5);

    float cracks = (spoke * falloff * 4.0 + ring * 0.5) * str;
    cracks = clamp(cracks, 0.0, 1.0);

    // Cracks darken the scene + bright highlight along edges
    c.rgb *= 1.0 - cracks * 0.6;
    c.rgb += vec3(0.85, 0.92, 1.0) * cracks * 0.4;

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
