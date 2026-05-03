// Rolling Fog Shader for MKXP-Z
// Directional drifting fog (vs. static :fog). Domain-warped fbm.
// Optional uniforms:
//   intensity (1.0), speed (1.0), direction ([1.0, 0.2]), density (1.0)

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float intensity;
uniform float speed;
uniform vec2  direction;
uniform float density;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }
float vnoise(vec2 p) {
    vec2 i = floor(p), f = fract(p);
    vec2 u = f*f*(3.0-2.0*f);
    return mix(mix(hash(i+vec2(0.0,0.0)), hash(i+vec2(1.0,0.0)), u.x),
               mix(hash(i+vec2(0.0,1.0)), hash(i+vec2(1.0,1.0)), u.x), u.y);
}
float fbm(vec2 p) {
    float v=0.0, a=0.5;
    for (int i=0; i<4; i++) { v += a*vnoise(p); p*=2.0; a*=0.5; }
    return v;
}

void main() {
    vec4 c = texture2D(texture, v_texCoord);
    vec2 uv = v_texCoord;

    float str  = intensity > 0.0 ? intensity : 1.0;
    float spd  = speed     > 0.0 ? speed     : 1.0;
    vec2  dir  = (direction.x != 0.0 || direction.y != 0.0) ? direction : vec2(1.0, 0.2);
    float dens = density   > 0.0 ? density   : 1.0;

    vec2 drift = dir * time * spd * 0.05;
    float f1 = fbm(uv * 3.0 * dens + drift);
    float f2 = fbm(uv * 5.0 * dens - drift * 1.4);
    float fog = pow(f1 * 0.7 + f2 * 0.3, 1.2);

    vec3 fogColor = vec3(0.85, 0.88, 0.92);
    c.rgb = mix(c.rgb, fogColor, fog * str * 0.65);

    gl_FragColor = vec4(min(c.rgb, 1.0), c.a);
}
