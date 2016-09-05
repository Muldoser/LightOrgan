// lege kernel voor opslag van geluidssignaal
storage = zeros(1,4000);
storage(4000) = 0.5;

convolutie = convol(y2, storage);

resize = resize_matrix(convolutie,[1 y2_size]);

echo = y2 + resize;
figure;
plot(echo);

playsnd(echo,16000);

