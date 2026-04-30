// Mega Evolution Shader for MKXP-Z
// Radial bloom + chromatic + outward energy waves.
// Optional uniforms:
//   triggerTime (0.0), duration (1.80), focus ([0.5, 0.5])

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float time;
uniform float triggerTime;
uniform float duration;
uniform vec2  focus;

void main() {
    vec2 uv = v_texCoord;

    if (triggerTime <= 0.0) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    float dur = duration > 0.0 ? duration : 1.80;
    vec2  ctr = (focus.x != 0.0 || focus.y != 0.0) ? focus : vec2(0.5, 0.5);

    float dt = time - triggerTime;
    if (dt < 0.0 || dt > dur) {
        gl_FragColor = texture2D(texture, uv);
        return;
    }

    float t = dt / dur;
    float weight = sin(t * 3.14159);

    // Radial chromatic split — stronger at edges
    vec2 dir = uv - ctr;
    float dist = length(dir);
    vec2 dirN = dir / max(dist, 0.0001);
    float ca = 0.012 * weight * dist;
    float r = texture2D(texture, uv + dirN * ca).r;
    float g = texture2D(texture, uv).g;
    float b = texture2D(texture, uv - dirN * ca).b;
    vec3 c = vec3(r, g, b);

    // Expanding pink-violet energy ring
    float ringRadius = t * 0.85;
    float ring = exp(-pow((dist - ringRadius) * 14.0, 2.0));
    vec3 ringCol = vec3(1.0, 0.55, 0.95);
    c += ringCol * ring * weight * 1.3;

    // Bloom lift on bright pixels
    float lum = dot(c, vec3(0.299, 0.587, 0.114));
    if (lum > 0.55) c += (lum - 0.55) * vec3(1.0, 0.7, 1.0) * weight;

    gl_FragColor = vec4(min(c, 1.0), 1.0);
}
