// Rapids Shader for MKXP-Z
// Fast-moving water with foam streaks. Waterfalls, rivers, currents.
// Detects blue-dominant pixels and adds streaks + foam.
// Optional uniforms:
//   intensity (1.0), speed (1.0), direction ([0.0, 1.0])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform vec2  direction;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }

bool isWater(vec3 c) {
    float maxC = max(c.r, max(c.g, c.b));
    bool blueDom = c.b > c.r && c.b > c.g * 0.95;
    return blueDom && maxC > 0.20;
}

void main() {
    vec2 uv = v_texCoord;
    vec4 base = texture2D(texture, uv);

    if (!isWater(base.rgb)) {
        gl_FragColor = base;
        return;
    }

    float str = intensity > 0.0 ? intensity : 1.0;
    float spd = speed     > 0.0 ? speed     : 1.0;
    vec2  dir = (direction.x != 0.0 || direction.y != 0.0) ? normalize(direction) : vec2(0.0, 1.0);

    // Streaks of foam aligned with flow direction
    float align = dot(uv, dir);
    float perp  = dot(uv, vec2(-dir.y, dir.x));
    float seed  = hash(vec2(floor(perp * 80.0), floor(align * 30.0 + time * spd * 4.0)));
    float foam  = pow(seed, 18.0) * 5.0;

    // Wave color shift along flow
    float wave = sin(align * 60.0 + time * spd * 8.0) * 0.5 + 0.5;
    base.rgb += vec3(0.05, 0.10, 0.15) * wave * str;

    // Foam highlight
    base.rgb += vec3(1.0) * foam * str * 0.7;

    gl_FragColor = vec4(min(base.rgb, 1.0), base.a);
}
