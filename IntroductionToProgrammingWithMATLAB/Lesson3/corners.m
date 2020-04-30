function [up_izq,up_der,down_izq,down_der] = corners(M)

up_izq = M(1,1);
up_der = M(1,end);
down_izq = M(end,1);
down_der = M(end,end);

end