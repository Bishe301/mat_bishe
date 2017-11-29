function [ music_1,music_2,music_3 ] = wavandtxtdata(music,musicfilename1,musicfilename2,musicfilename3,txtfilename1,txtfilename2,txtfilename3,Fs )
music_1 = music(1,:);
save(txtfilename1, 'music_1', '-ascii');
music_1g = mapminmax(music_1);%归一化
audiowrite(musicfilename1,music_1g,Fs);


music_2 = music(2,:);
save(txtfilename2, 'music_2', '-ascii');
music_2g = mapminmax(music_2);%归一化
audiowrite(musicfilename2,music_2g,Fs);


music_3 = music(3,:);
save(txtfilename3, 'music_3', '-ascii');
music_3g = mapminmax(music_3);%归一化
audiowrite(musicfilename3,music_3g,Fs);
end

