function Img = uniform_noise(Img, a, b)
[W, H, I] = size(Img);
Img = double(Img);
pixs = round((1 / (b - a)) * W * H);
    
if I > 1
    for i = a:b
        for j = 1:pixs
            x = ceil(rand(1, 1) * W);
            y = ceil(rand(1, 1) * H);
                
            Img(x, y, 1) = Img(x, y, 1) + rand(1, 1) * (b - a) + a;
            Img(x, y, 2) = Img(x, y, 2) + rand(1, 1) * (b - a) + a;
            Img(x, y, 3) = Img(x, y, 3) + rand(1, 1) * (b - a) + a;
        end
    end
else
    for i = a:b
        for j = 1:pixs
            x = ceil(rand(1, 1) * W);
            y = ceil(rand(1, 1) * H);
                
            Img(x, y, 1) = Img(x, y, 1) + rand(1, 1) * (b - a) + a;
        end
    end
end
% Clip values to the range [0, 255]
Img = min(max(Img, 0), 255);
Img = uint8(Img);
end