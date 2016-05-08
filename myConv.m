function [ out_img ] = myConv( img,filter )
%MYCONV Summary of this function goes here
%   Detailed explanation goes here
    pad_siz=idivide(size(filter,1),int32(2));
    
%     pad img by 0
    pad_img=zeros(int32(size(img))+pad_siz*2);
    pad_img(1+pad_siz:end-pad_siz,1+pad_siz:end-pad_siz)=img;
%     conv2
    out_img=zeros(size(pad_img));
    for i=1+pad_siz:size(pad_img,1)-pad_siz
        for j=1+pad_siz:size(pad_img,2)-pad_siz
            out_img(i,j)=sum(sum(...
                filter.*pad_img(i+pad_siz:-1:i-pad_siz,...
                                j+pad_siz:-1:j-pad_siz)));
        end
    end
%     restore original size of img
    out_img=out_img(1+pad_siz:end-pad_siz,1+pad_siz:end-pad_siz);

end

