// Bloom Shader for MKXP-Z
// Soft glow / bloom on bright areas

varying vec2 v_texCoord;
uniform sampler2D texture;
uniform float strength;
uniform float threshold;

void main() {
    float str = strength > 0.0 ? strength : 0.6;
    float thr = threshold > 0.0 ? threshold : 0.5;

    vec4 color = texture2D(texture, v_texCoord);

    // Sample surrounding pixels for blur
    vec2 pixel = vec2(1.0 / 640.0, 1.0 / 480.0);
    vec3 bloom = vec3(0.0);
    float total = 0.0;

    for (int x = -3; x <= 3; x++) {
        for (int y = -3; y <= 3; y++) {
            vec2 off = vec2(float(x), float(y)) * pixel * 2.0;
            vec3 s = texture2D(texture, v_texCoord + off).rgb;
            float brightness = dot(s, vec3(0.299, 0.587, 0.114));
            float w = max(0.0, brightness - thr);
            bloom += s * w;
            total += w;
        }
    }

    if (total > 0.0) bloom /= total;

    color.rgb += bloom * str;

    gl_FragColor = vec4(clamp(color.rgb, 0.0, 1.0), color.a);
}
