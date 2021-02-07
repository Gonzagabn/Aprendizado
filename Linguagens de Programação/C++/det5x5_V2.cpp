//Calculadora de Determinante 5x5 refatorada
#include <iostream>
using namespace std;
int main() {

//Entrada da ordem da matriz
int n;
cout<<"insira o numero da ordem da matriz";
cin>>n;

//Entrada de dados da matriz nxn
int i, j, matriz[n][n];
for(i=0; i<n; i++){
    for(j=0; j<n; j++){
        cout<<"insira o elemento da linha "<<i+1<<" e coluna "<<j+1<<"\n";
        cin>>matriz[i][j];
    }
}
//Lógica do cálculo de determinante (Teorema de Gauss-Jordan)
double resultado;

//Mostra a matriz completa e o determinante na linha de baixo

cout<<"O Determinante dessa matriz e': "<<resultado;

//Fim         
system("pause>null");
return 0;
}
