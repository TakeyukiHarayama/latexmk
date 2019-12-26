clear

//set initialize
n = 4;
A = [0.05 0.85 0.05 0.25
0.45 0.05 0.45 0.25
0.45 0.05 0.05 0.25
0.05 0.05 0.45 0.25]
v = rand(n,1);

//power method
for k = 1:20
    w = A * v;
    lambda = v' * w;
    v = w / norm(w);
end
disp(v);