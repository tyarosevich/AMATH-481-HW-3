clc; clear all; close all;


nx = 4; ny = 8;
deltax = 2.5; deltay = 1.5;
%dx operator is B
N = nx*ny;
adds = (1/(2*deltax)) *ones(N, 1); subtr = -1 * adds;
B = full(spdiags([adds adds subtr subtr], [8 -24 24 -8], N, N));

adds = (1/(2*deltay)) *ones(N, 1); subtr = -1 * adds;
A = eye(4);
C_setup = full(spdiags([adds subtr], [1 -1], 8, 8));
C_setup(1, ny) = -1/(2*deltay); C_setup(end, end - (ny-1)) = 1/(2*deltay);

C = kron(A, C_setup);
%% HW 3 part 2
clc; clear all; close all;

Nx = 64; Ny = 64;
N = Nx * Ny;

xspan = linspace(-5, 5, Nx + 1); 
deltax = xspan(2) - xspan(1);
yspan = linspace(0, 12, Ny + 1);
deltay = yspan(2) - yspan(1);

adds = ones(Ny, 1)* 1/(2*deltay); subs = -1 * adds;

C_setup = full(spdiags([adds subs], [1 -1], Nx, Nx));
C_setup(1, Nx) = -1/(2*deltay); C_setup(end, end - (Nx-1)) = 1/(2*deltay);
I = eye(Nx);
C = kron(I, C_setup);


adds = ones(N, 1)* 1/(2*deltax); subs = -1 * adds;
B = zeros(N, N);
B






