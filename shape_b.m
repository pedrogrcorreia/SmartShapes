function shape_b()
% Create input and target for training folder
input = zeros(0, 0);
target = zeros(0,0);

possibleShapes = ["circle" "kite" "parallelogram" "square" "trapezoid" "triangle"];

for n = 1 : length(possibleShapes)
    [input, target] = read_images("train\"+possibleShapes(n), possibleShapes(n), input, target);
end

% Create neural network
net = feedforwardnet([10]);

% Divide samples for training, validation and test randomly
% net.divideFcn = 'dividerand';
net.divideParam.trainRatio = 0.7;
net.divideParam.valRatio = 0.15;
net.divideParam.testRatio = 0.15;

% Reduce training epochs
net.trainParam.epochs = 10;   

% Train network
[net,tr] = train(net, input, target);

% Simulate and give results
out = sim(net, input);

% Plot confusion matrix
plotconfusion(target, out)

r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(target(:,i));
    if b == d
      r = r+1;
    end
end

accuracy = r/size(out,2)*100;
fprintf('Training total precision %f\n', accuracy);

%% Simulate only on the test group
TInput = input(:, tr.testInd);
TTarget = target(:, tr.testInd);

out = sim(net, TInput);

% Plot confusion matrix for tests
plotconfusion(TTarget, out);

r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(TTarget(:,i));
    if b == d
      r = r+1;
    end
end

accuracy = r/size(tr.testInd,2)*100;
fprintf('Test precision %f\n', accuracy);

save("best_nn.mat", "net");

end