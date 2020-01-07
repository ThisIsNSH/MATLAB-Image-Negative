function im = negative(arr) 
    max = 0;
    for row = 1:size(arr,1)
        for col = 1:size(arr,2) 
            for pix = 1:size(arr,3) 
                if (arr(row,col,pix)>max)
                    max = arr(row,col,pix);
                end
            end
        end
    end
    
    for row = 1:size(arr,1)
        for col = 1:size(arr,2) 
            for pix = 1:size(arr,3) 
                arr(row,col,pix) = max - arr(row,col,pix);
            end
        end
    end
    
    im = arr;
end
