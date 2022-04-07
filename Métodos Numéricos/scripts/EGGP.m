% Método de Eliminação de Gauss com Pivotagem Parcial 

clear all
clc 

% Entrada de dados do Sistema Linear

A=[0.8 1.4 3.0; 0.6 0.9 2.8; 2.0 1.0 1.1];

b=[12.6; 10.8; 4.0];

[m,n]=size(A);  %Aquisição da ordem de A por tamanho

% Verificação do Sistema
    
    %Matriz A
    if m~=n
        disp('Número de Equações diferente do Número de Incógnitas')
        return
    end
    
    %Vetor b
    if [m,1]~=size(b)
        disp('Número de igualdades não corresponde ao número de linhas de A')
        return
    end

    if det(A)==0
        disp('Matriz Singular ou possui Equações Linearmente Dependentes')
        return
    end
    
    index=linspace(1,m,m);%cria um vetor com m termos, onde o último termo é m e o incremento é 1
    
% Triangularização

    % 1º Pivoteamento
    for cont=1:m-1
        
        [Y,I]=max(A(cont,cont:m));

        I=I+(cont-1); %Correção do numero de colunas quando cont>1 em cont:m 
        
        aux=A(:,cont);
        A(:,cont)=A(:,I);
        A(:,I)=aux;
      
        aux=index(cont); % mudança de posiçao do vetor index
        index(cont)=index(I);
        index(I)=aux;

%      "AUX = A
%       A = B
%       B = AUX"
        
  
    % 2º Anulação dos Valores abaixo do Pivo
        for cont2=cont+1:m
        
            k=-A(cont2,cont)/Y;
            A(cont2,cont:m)=A(cont2,cont:m)+k*A(cont,cont:m); 
            b(cont2)=b(cont2)+k*b(cont);
        
        end
    end
    
 % Acabou  todo o pivoteamento

% Solve do sistema

    x(m)=b(m)/A(m,m);    
        
        while cont>=1 % contador regressivo
            aux=sum(A(cont,cont+1:m).*x(cont+1:m));
                     
    
            x(cont)=(b(cont)-aux)/A(cont,cont);           
            cont=cont-1;
            
            if cont<1
                break
            end
                     
        end
           
%       "Como sugerido na página 4 de backward_forward.pdf"

    %   Realojamento do Vetor de Incógnitas nas Posições Corretas:

for cont=1:m
    
    for i=1:m
        
        if index(i)==index(cont)
            
            aux=x(index(i));
            x(index(i))=x(cont);
            x(cont)=aux;
       
            aux=index(index(i));% conserta-se o index pra não repetir a operação de troca de valor em x
            index(index(i))=index(cont);
            index(cont)=aux;
            
        end
    
    end
    
end

disp('Vetor de Incógnitas')
disp(x)

disp('Determinante: ')
disp(det(A))
