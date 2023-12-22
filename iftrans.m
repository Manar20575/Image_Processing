function [ft] = iftrans(FT)
[w, h] = size(FT);
FT = double(FT);
Mx = zeros(w, h);
My = zeros(w, h);

for x = 0 : w - 1
    for y = 0 : h - 1
        Mx(x + 1, y + 1) = x;
        My(x + 1, y + 1) = y;
    end
end

ft = zeros(w, h);

for x = 1 : w
    for y = 1 : h
        ft(x, y) = sum(sum(FT .* exp(2 * 1j * pi * ((x - 1) * Mx / w + (y - 1) * My / h)))) / (w * h);
    end
end