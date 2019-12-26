clear 
figure(1);
clf;

function [l_v] = detp(l_A)
    n = size(l_A, 1)
    l_v = rand(n,1);
    for k = 1:20
        w = l_A * l_v;
        l_v = w / norm(w);
    end
endfunction

A  = [167, 67;158,56;153,48;174,68;171,62;157,49;177,79;163,56;164,58;172,70];
plot2d(A(:,1), A(:,2), -1);
m1 = mean(A(:,1));
m2 = mean(A(:,2));
A(:,1) = A(:,1) - m1;
A(:,2) = A(:,2) - m2;
C = A'* A;
[v] = detp(C);

v = v / norm(v);    //normalize
u = A*v;
u = u / norm(u);
lambda = v'*(C*v) / (v'*v);
s = sqrt(lambda);

P = s * u * v';

P(:,1) = P(:,1) + m1;
P(:,2) = P(:,2) + m2;
plot(P(:,1), P(:,2));