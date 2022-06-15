function formas_a()

% Criar vetores de input e target
input = zeros(0, 0);
target = zeros(0,0);

[input, target] = read_images("start\circle", [1, 0, 0, 0, 0, 0], input, target);

[input, target] = read_images("start\kite", [0, 1, 0, 0, 0, 0], input, target);

[input, target] = read_images("start\parallelogram", [0, 0, 1, 0, 0, 0], input, target);

[input, target] = read_images("start\square", [0, 0, 0, 1, 0, 0], input, target);

[input, target] = read_images("start\trapezoid", [0, 0, 0, 0, 1, 0], input, target);

[input, target] = read_images("start\triangle", [0, 0, 0, 0, 0, 1], input, target);

% Criar rede
net = feedforwardnet([10]);

% Usar todos os exemplos no treino
net.divideParam.trainRatio = 1;
net.divideParam.valRatio = 0;
net.divideParam.testRatio = 0;

% Reduzir épocas de treino
net.trainParam.epochs = 10;     

% Treinar a rede
[net,tr] = train(net, input, target);

% Simular e apresentar resultados
out = sim(net, input);

% Visualizar matriz de confusão
plotconfusion(target, out)

r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(target(:,i));
    if b == d
      r = r+1;
    end
end

accuracy = r/size(out,2);
fprintf('Precisao total de treino %f\n', accuracy)

end