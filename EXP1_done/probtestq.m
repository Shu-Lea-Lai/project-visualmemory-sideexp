
function probt=probtestq(wind1,rect)
debug1=2;
if debug1==1
    [wind1 rect] = Screen('OpenWindow',0,[100 100 175],[50 50 1700 900]);  
    Screen('Preference', 'SkipSyncTests', 1);
    yoffset=30;
    instructsize=20;
elseif debug1==2
    Screen('Preference', 'SkipSyncTests', 1);
    [wind1 rect] = Screen('OpenWindow',0,[100 100 175]);
    yoffset=40;
    instructsize=40;

else
    yoffset=40;
    instructsize=30;
    centerx=(rect(3)-rect(1))/2;
    centery=(rect(4)-rect(2))/2;
    xadjust=70;
end


text_answera='a.  Yes, I noticed it early in the experiment';
test_answerb='b.  Yes, but I didn''t notice it until much later in the experiment';
text_answerc='c.  No, I didn''t notice that special item.';
text_probcheck='Did you notice that there was one special item that was almost always tested when it appeared in the memory sets?';

textbounds_probcheck=Screen('TextBounds',wind1,text_probcheck);

sentence={text_probcheck text_answera test_answerb text_answerc};
Screen('TextSize',wind1,instructsize);

%rect(3)/2-textbounds_correct(3)/2,rect(4)/2-textbounds_correct(4)/2
%%test
%     text_correct='CORRECT!';
%         textbounds_correct=Screen('TextBounds',wind1,text_correct);
% Screen('DrawText',wind1,text_correct,rect(3)/2-textbounds_correct(3)/2,rect(4)/2-textbounds_correct(4)/2);

for i=1:4
    Screen('DrawText',wind1,sentence{i},...
        rect(3)/2-textbounds_probcheck(3)/2-200,rect(4)/2-(4-i)*yoffset-200);
end
Screen('Flip',wind1);

legal=0;

while legal == 0
    [keydown secs keycode]=KbCheck;
    key=KbName(keycode);
%     disp(key);
    if strcmp(key,'a')|strcmp(key,'b')|strcmp(key,'c')
        legal=1;
    end
end

if strcmp(key,'a')
    probt=1;
elseif strcmp(key,'ba')
    probt=2;
else 
	probt=3;
end
if debug1~=0
    clear screen;
end