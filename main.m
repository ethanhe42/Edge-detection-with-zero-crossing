files=[{'lena'},{'lena3'},{'ucsb'},{'up'}];
extends=[{'.jpg'},{'.bmp'},{'.bmp'},{'.bmp'}];
for file=1:length(files)
    for sig=0:4
        marr(sig,files{file},extends{file});
        disp(strcat(files{file},'_',int2str(sig)))
    end
end
    