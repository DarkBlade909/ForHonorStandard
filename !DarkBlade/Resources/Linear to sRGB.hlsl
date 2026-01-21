void LinearToSRGB(float3 linearColor, out float3 Color)
{
    float3 cutoff = step(float3(0.0031308, 0.0031308, 0.0031308), linearColor);

    float3 lower = linearColor * 12.92;
    float3 higher = 1.055 * pow(linearColor, 1.0 / 2.4) - 0.055;

    Color = lerp(lower, higher, cutoff);
}
