function shapes_c1()

% Create input and target for test folder

input = zeros(0, 0);
target = zeros(0,0);
possibleShapes = ["circle" "kite" "parallelogram" "square" "trapezoid" "triangle"];

for n = 1 : length(possibleShapes)
    [input, target] = read_images("test\"+possibleShapes(n), possibleShapes(n), input, target);
end

% Load the best network
load("best_nn.mat");

% Simulate with tests
out = net(input);

% Plot confusion matrix
plotconfusion(target, out);

r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(target(:,i));
    fprintf('Correct Shape: %s\n', possibleShapes(d));
    fprintf('Shape given: %s\n\n', possibleShapes(b));
    if b == d
      r = r+1;
    end
end

accuracy = r/size(out,2)*100;
fprintf('Total test precision %f\n', accuracy)
end