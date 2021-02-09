//Calculadora de Determinante nxn refatorada
#include <iostream>
using namespace std;
int main() {

//Entrada da ordem da matriz
short ordem;
cout<<"insira o numero da ordem da matriz"<<endl;
cin>>ordem;
while (ordem<0){
    cout<<"A ordem da matriz não pode ser um número negativo";
    cin>>ordem;
}
cout<<endl<<endl;

//Entrada de dados da matriz nxn
short i, j, coluna;
double matriz[ordem][ordem];
cout<<"insira os elementos da matriz"<<endl<<endl;
for(i=0; i<ordem; i++){
    for(j=0; j<ordem; j++){
        cin>>matriz[i][j];
    }
}

//Mostra a matriz completa
cout<<endl<<"Matriz de ordem "<<ordem<<" inserida:"<<endl<<endl;
for(i=0; i<ordem; i++){
    for(j=0; j<ordem; j++){
        cout<<matriz[i][j];
        cout<<'\t';
    }
    cout<<endl;
}
cout<<endl;

//Lógica de redução da matriz, criando o triangulo de zeros
double diagonalprincipal;
double pivo;
double multiplicador;
for(i=0; i<ordem; i++){
    diagonalprincipal = matriz[i][i];
    for(j=i+1; j<ordem; j++){
        pivo = matriz[j][i];
        multiplicador = pivo / diagonalprincipal;
        for(coluna=0; coluna<ordem; coluna++){
            matriz[j][coluna] = matriz[j][coluna] -multiplicador * matriz[i][coluna];
        }
    }
}

//Mostra a matriz triangular
cout<<endl<<"Matriz triangular:"<<endl<<endl;
for(i=0; i<ordem; i++){
    for(j=0; j<ordem; j++){
        cout<<matriz[i][j];
        cout<<'\t';
    }
    cout<<endl;
}
cout<<endl;

//Lógica do cálculo de determinante
double resultado=1;
for(i=0; i<ordem; i++){
    resultado = resultado * matriz[i][i];
}

//Mostra o determinante da matriz
cout<<"Determinante da matriz = "<<resultado;

//Fim         
system("pause>null");
return 0;
}