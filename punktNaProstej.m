function [X, Y] = punktNaProstej(A, B, x, y)
% Funkcja znajduj�cy punkt na prostej znajduj�cy si� najbli�ej jakiego�
% punktu (poza prost�)

% Wyznaczamy prost� prostopadla do y = Ax + B
if A == 0
  Ap = 0;
else
  Ap = -1/A;
end
  % Wyznaczamy B => B = y - Ax
  Bp = y - Ap*x;
  % Uklad rownan
  % y = Ap*x + Bp
  % y = A*x + B
  % => -(Ap - A)x = Bp - B => x = -(Bp - B)/(Ap - A)
  % => y = A*x + B
  X = -(Bp - B)/(Ap - A);
	Y = A*X + B;
end

