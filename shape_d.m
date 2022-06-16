function shape_d()
% Reset input and target
i = zeros(0,0);
target = zeros(0,0);
possibleShapes = ["circle" "kite" "parallelogram" "square" "trapezoid" "triangle"];
% Get input and target for test folder
% for n = 1 : length(possibleShapes)
    [i, target] = read_images("test\"+possibleShapes(1)+"\", possibleShapes(1), i, target, 'circle-test-0.png');
% end

% Get shape from user
fprintf('Which shape you want to test?\n');
fprintf('1 - circle\n');
fprintf('2 - kite\n');
fprintf('3 - parallelogram\n');
fprintf('4 - square\n');
fprintf('5 - trapezoid\n');
fprintf('6 - triangle\n');
tmp = input('                        shape? (default 1) = ');
if isempty(tmp)
    tmp = 1;
end

% Get file
fprintf('File location: \n');
[file_name, location] = uigetfile('*.png', 'Select an image with a shape', '..\');

[i, target] = read_images(location, possibleShapes(tmp), i, target, file_name);
% 
% disp(i);
% disp(target);
end