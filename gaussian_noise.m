function Img = gaussian_noise(Img, mean_val, std_dev)
[W, H, L] = size(Img);
Img = double(Img);
pixs = round((1/(std_dev * sqrt(2*pi))) * W * H);
    
if L > 1
    for i = 1:pixs
        
        x = min(max(round(rand(1,1) * W) + 1, 1), W);
        y = min(max(round(rand(1,1) * H) + 1, 1), H);
            
        noise = mean_val + std_dev * randn(1, 1);
            
        Img(x, y, 1) = Img(x, y, 1) + noise;
        Img(x, y, 2) = Img(x, y, 2) + noise;
        Img(x, y, 3) = Img(x, y, 3) + noise;
    end
    Img = uint8(Img);
else
    for i = 1:pixs
        x = min(max(round(rand(1,1) * W) + 1, 1), W);
        y = min(max(round(rand(1,1) * H) + 1, 1), H);
            
        noise = mean_val + std_dev * randn(1, 1);
            
        Img(x, y, 1) = Img(x, y, 1) + noise;
    end
    Img = uint8(Img);
end
end