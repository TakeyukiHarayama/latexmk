clear
function [l_v] = detp(l_A)
    n = size(l_A, 1)
    l_v = rand(n,1);
    for k = 1:20
        w = l_A * l_v;
        l_v = w / norm(w);
    end
endfunction

n = 6;                          //set dimension
ij = [1,3;2,1;2,4;3,1;4,1;4,3;4,6;5,3;5,4;5,6;6,4;6,5];     //set nonzero entries of G
g = ones(1, size(ij,1));
G = sparse(ij, g, [n,n]);       //set G with sparse form
G = full(G);                    //set G with dense form
c = sum(G,1);                   //compute c

G = [0 0 1 0 0 0
1 0 0 1 0 0
1 0 0 0 0 0
1 0 1 0 0 1
0 0 1 1 0 1
0 0 0 1 1 0];
c = [3 0 3 3 1 2];

p = 0.8;
d = (1-p) / n;
A = ones(n,n)/n;

for i=1:n
for j=1:n
    if c(j) ~= 0
        A(i,j) = p*G(i,j) / c(j) + d;
    end
end
end

[v] = detp(A);
disp(v);
disp(A * v);