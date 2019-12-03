
% 1000101101101100=35692
% 1010101001100100=43620
% 35692*43620=1556885040=01011100110011000010111000110000
clear all
clc

Nb=16;
N_pp=9;
a=[1 0 0 0 1 0 1 1 0 1 1 0 1 1 0 0];
b=[1 0 1 0 1 0 1 0 0 1 1 0 0 1 0 0];
a_neg=zeros(1,Nb);
for i=1:Nb
    if a(i)==1
        a_neg(i)=0;
    else
        a_neg(i)=1;
    end
end

mat=zeros(N_pp,Nb+1);% la matrice 9x17 dei puntini senza l'estensione di segni

b_pp=[0 0 b 0]';
A=[zeros(1,17); [0 a]; [a 0]; [a_neg 1]; [1 a_neg]]; %[0 a 2a -2a -a]
r=1;
for i=Nb/2:-1:0
    if isequal([0 0 0],[b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)])
%         [b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)]
%         disp('0')
        mat(r,:)=A(1,:);
    end
    if isequal([0 0 1],[b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)])
%         [b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)]
%         disp('a')
        mat(r,:)=A(2,:);
    end
    if isequal([0 1 0],[b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)])
%         [b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)]
%         disp('a')
        mat(r,:)=A(2,:);
    end
    if isequal([0 1 1],[b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)])
%         [b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)]
%         disp('2a')
        mat(r,:)=A(3,:);
    end
    
    if isequal([1 0 0],[b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)])
%         [b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)]
%         disp('-2a')
        mat(r,:)=A(4,:);
    end
    if isequal([1 0 1],[b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)])
%         [b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)]
%         disp('-a')
        mat(r,:)=A(5,:);
    end
    if isequal([1 1 0],[b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)])
%         [b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)]
%         disp('-a')
        mat(r,:)=A(5,:);
    end
    if isequal([1 1 1],[b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)])
%         [b_pp(2*i-1+2) b_pp(2*i+2) b_pp(2*i+1+2)]
%         disp('0')
        mat(r,:)=A(1,:);
    end
    r=r+1;
end


pp_mat=zeros(N_pp,Nb+4);
pp_mat(:,4:Nb+4)=mat;

% estensione di segno per la prima riga
pp_mat(1,3)=mat(1,1); 
pp_mat(1,2)=mat(1,1);
if mat(1,1)==1
    pp_mat(1,1)=0;
else
    pp_mat(1,1)=1;
end

% estensione di segno per l'ultima riga
pp_mat(end,1)=0;
pp_mat(end,2)=0;
pp_mat(end,3)=0;

% penultima riga
pp_mat(end-1,1)=0;
pp_mat(end-1,2)=0;
if mat(end-1,1)==1
   pp_mat(end-1,3)=0;
else
   pp_mat(end-1,2)=1;
end

% righe del mezzo
for r=2:N_pp-2
    pp_mat(r,1)=0;
    pp_mat(r,2)=1;
    if mat(r,1)==1
        pp_mat(r,3)=0;
    else
        pp_mat(r,3)=1;
    end
end

vet_segni=zeros(N_pp-1,1);
vet_segni=flip(mat(1:N_pp-1,1));

%%  FILES GENERATION
file_pp_mat = fopen('pp_mat.txt','w');
file_vet_segni = fopen('sign_vec.txt','w');

for i=1:N_pp
    for j=1:Nb+4
        fprintf(file_pp_mat,'%d',pp_mat(i,j));
    end
    if isequal(i,N_pp)==0
        fprintf(file_pp_mat,'\n');
    end
end

for i=1:N_pp-1
     fprintf(file_vet_segni,'%d',vet_segni(i));
end

fclose(file_pp_mat);
fclose(file_vet_segni);



