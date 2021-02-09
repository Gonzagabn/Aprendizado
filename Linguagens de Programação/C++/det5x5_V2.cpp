//Calculadora de Determinante nxn refatorada
#include <iostream>
using namespace std;
int main() {

//Entrada da ordem da matriz
int ordem;
cout<<"insira o numero da ordem da matriz"<<endl;
cin>>ordem;
while (ordem<0){
    cout<<"A ordem da matriz não pode ser um número negativo";
    cin>>ordem;
}
cout<<endl<<endl;

//Entrada de dados da matriz nxn
int i, j, matriz[ordem][ordem];
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
cout<<endl<<endl;

//Lógica de triangulação da matriz
double pivo;
pivo = matriz[i][i]/matriz[i][j];

//Lógica do cálculo de determinante
double resultado=1;
for(i=0; i<ordem; i++){
    for(j=0; j<ordem; j++){
        resultado = resultado * matriz[i][i];
    }
}

//Mostra o determinante da matriz
cout<<"O Determinante dessa matriz e': "<<resultado;

//Fim         
system("pause>null");
return 0;
}