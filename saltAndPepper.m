function [result] = saltAndPepper(image,ps,pp )
[H W L]=size(image);

salt = round(ps*H*W);
pepper = round(pp*H*W);

if L > 1
    for i = 1: salt
        x = ceil(rand(1,1) * H);
        y = ceil(rand(1,1) * W);
        image(x,y,1) = 255;
        image(x,y,2) = 255;
        image(x,y,3) = 255;
    end
    for i = 1: pepper
        x = ceil(rand(1,1) * H);
        y = ceil(rand(1,1) * W);
        image(x,y,1) = 0;
        image(x,y,2) = 0;
        image(x,y,3) = 0;
    end
    result=image;
else
    for i = 1:salt
        r=ceil(rand(1,1)*H);
        c=ceil(rand(1,1)*W);
        image(r,c)=255;
    end
    for i = 1:pepper
        r=ceil(rand(1,1)*H);
        c=ceil(rand(1,1)*W);
        image(r,c)=0;
    end
    result=image;
result=uint8(result);
end