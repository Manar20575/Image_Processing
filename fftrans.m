function [FT] = fftrans(I)
% FFT for RGB images

[w, h, ~] = size(I); % Get the size of the image and number of channels
I = double(I);

Mx = zeros(w, h);
My = zeros(w, h);

for x = 0 : w - 1
    for y = 0 : h - 1
        Mx(x + 1, y + 1) = y;
        My(x + 1, y + 1) = y;
    end
end

FT = zeros(w, h, 3); % Three channels for RGB

for channel = 1 : 3 % Process each color channel separately
    for u = 1 : w
        for v = 1 : h
            FT(u, v, channel) = sum(sum(I(:, :, channel) .* exp(-2 * 1j * pi * (u * Mx / w + v * My / h))));
        end
    end
end
