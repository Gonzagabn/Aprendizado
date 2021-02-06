//Calculadora de Determinante 5x5 feito na raça, de forma não pensada
#include <iostream>  
using namespace std;
int main() {
int i, j, mat[5][5];
double det5, det4[5], det3_1[4], det3_2[4], det3_3[4], det3_4[4], det3_5[4];
for(i=0; i<5; i++){
         for(j=0; j<5; j++){
                  cout<<"insira o elemento da linha "<<i+1<<" e coluna "<<j+1<<"\n";
                  cin>>mat[i][j];
                            }
                  }
         det3_1[0]=mat[2][2]*mat[3][3]*mat[4][4]+mat[2][3]*mat[3][4]*mat[4][2]+mat[2][4]*mat[3][2]*mat[4][3]-mat[2][4]*mat[3][3]*mat[4][2]-mat[2][2]*mat[3][4]*mat[4][3]-mat[2][3]*mat[3][2]*mat[4][4];
         det3_1[1]=mat[2][1]*mat[3][3]*mat[4][4]+mat[2][3]*mat[3][4]*mat[4][1]+mat[2][4]*mat[3][1]*mat[4][3]-mat[2][4]*mat[3][3]*mat[4][1]-mat[2][1]*mat[3][4]*mat[4][3]-mat[2][3]*mat[3][1]*mat[4][4];
         det3_1[2]=mat[2][1]*mat[3][4]*mat[4][2]+mat[2][2]*mat[3][4]*mat[4][1]+mat[2][4]*mat[3][1]*mat[4][2]-mat[2][4]*mat[3][2]*mat[4][1]-mat[2][1]*mat[3][4]*mat[4][2]-mat[2][2]*mat[3][1]*mat[4][4];
         det3_1[3]=mat[2][1]*mat[3][2]*mat[4][3]+mat[2][2]*mat[3][3]*mat[4][1]+mat[2][3]*mat[3][1]*mat[4][2]-mat[2][3]*mat[3][2]*mat[4][1]-mat[2][1]*mat[3][3]*mat[4][2]-mat[2][2]*mat[3][1]*mat[4][3];
         
         det3_2[0]=mat[2][2]*mat[3][3]*mat[4][4]+mat[2][3]*mat[3][4]*mat[4][2]+mat[2][4]*mat[3][2]*mat[4][3]-mat[2][4]*mat[3][3]*mat[4][2]-mat[2][2]*mat[3][4]*mat[4][3]-mat[2][3]*mat[3][2]*mat[4][4];
         det3_2[1]=mat[2][0]*mat[3][3]*mat[4][4]+mat[2][3]*mat[3][4]*mat[4][0]+mat[2][4]*mat[3][0]*mat[4][3]-mat[2][4]*mat[3][3]*mat[4][0]-mat[2][0]*mat[3][4]*mat[4][3]-mat[2][3]*mat[3][0]*mat[4][4];
         det3_2[2]=mat[2][0]*mat[3][4]*mat[4][2]+mat[2][2]*mat[3][4]*mat[4][0]+mat[2][4]*mat[3][0]*mat[4][2]-mat[2][4]*mat[3][2]*mat[4][0]-mat[2][0]*mat[3][4]*mat[4][2]-mat[2][2]*mat[3][0]*mat[4][4];
         det3_2[3]=mat[2][0]*mat[3][2]*mat[4][3]+mat[2][2]*mat[3][3]*mat[4][0]+mat[2][3]*mat[3][0]*mat[4][2]-mat[2][3]*mat[3][2]*mat[4][0]-mat[2][0]*mat[3][3]*mat[4][2]-mat[2][2]*mat[3][0]*mat[4][3];
                  
         det3_3[0]=mat[2][1]*mat[3][3]*mat[4][4]+mat[2][3]*mat[3][4]*mat[4][1]+mat[2][4]*mat[3][1]*mat[4][3]-mat[2][4]*mat[3][3]*mat[4][1]-mat[2][1]*mat[3][4]*mat[4][3]-mat[2][3]*mat[3][1]*mat[4][4];
         det3_3[1]=mat[2][0]*mat[3][3]*mat[4][4]+mat[2][3]*mat[3][4]*mat[4][0]+mat[2][4]*mat[3][0]*mat[4][3]-mat[2][4]*mat[3][3]*mat[4][0]-mat[2][0]*mat[3][4]*mat[4][3]-mat[2][3]*mat[3][0]*mat[4][4];
         det3_3[2]=mat[2][0]*mat[3][4]*mat[4][1]+mat[2][1]*mat[3][4]*mat[4][0]+mat[2][4]*mat[3][0]*mat[4][1]-mat[2][4]*mat[3][1]*mat[4][0]-mat[2][0]*mat[3][4]*mat[4][1]-mat[2][1]*mat[3][0]*mat[4][4];
         det3_3[3]=mat[2][0]*mat[3][1]*mat[4][4]+mat[2][1]*mat[3][4]*mat[4][0]+mat[2][3]*mat[3][0]*mat[4][1]-mat[2][3]*mat[3][1]*mat[4][0]-mat[2][0]*mat[3][3]*mat[4][1]-mat[2][1]*mat[3][0]*mat[4][3];
         
         det3_4[0]=mat[2][1]*mat[3][4]*mat[4][2]+mat[2][2]*mat[3][4]*mat[4][1]+mat[2][4]*mat[3][1]*mat[4][2]-mat[2][4]*mat[3][2]*mat[4][1]-mat[2][1]*mat[3][4]*mat[4][2]-mat[2][2]*mat[3][1]*mat[4][4];
         det3_4[1]=mat[2][0]*mat[3][4]*mat[4][2]+mat[2][2]*mat[3][4]*mat[4][0]+mat[2][4]*mat[3][0]*mat[4][2]-mat[2][4]*mat[3][2]*mat[4][0]-mat[2][0]*mat[3][4]*mat[4][2]-mat[2][2]*mat[3][0]*mat[4][4];
         det3_4[2]=mat[2][0]*mat[3][4]*mat[4][1]+mat[2][1]*mat[3][4]*mat[4][0]+mat[2][4]*mat[3][0]*mat[4][1]-mat[2][4]*mat[3][1]*mat[4][0]-mat[2][0]*mat[3][4]*mat[4][1]-mat[2][1]*mat[3][0]*mat[4][4];
         det3_4[3]=mat[2][0]*mat[3][1]*mat[4][2]+mat[2][1]*mat[3][2]*mat[4][0]+mat[2][2]*mat[3][0]*mat[4][1]-mat[2][2]*mat[3][1]*mat[4][0]-mat[2][0]*mat[3][2]*mat[4][1]-mat[2][1]*mat[3][0]*mat[4][2];
         
         det3_5[0]=mat[2][1]*mat[3][2]*mat[4][3]+mat[2][2]*mat[3][3]*mat[4][1]+mat[2][3]*mat[3][1]*mat[4][2]-mat[2][3]*mat[3][2]*mat[4][1]-mat[2][1]*mat[3][3]*mat[4][2]-mat[2][2]*mat[3][1]*mat[4][3];       
         det3_5[1]=mat[2][0]*mat[3][2]*mat[4][3]+mat[2][2]*mat[3][3]*mat[4][0]+mat[2][3]*mat[3][0]*mat[4][2]-mat[2][3]*mat[3][2]*mat[4][0]-mat[2][0]*mat[3][3]*mat[4][2]-mat[2][2]*mat[3][0]*mat[4][3];
         det3_5[2]=mat[2][0]*mat[3][1]*mat[4][3]+mat[2][1]*mat[3][3]*mat[4][0]+mat[2][3]*mat[3][0]*mat[4][1]-mat[2][3]*mat[3][1]*mat[4][0]-mat[2][0]*mat[3][3]*mat[4][1]-mat[2][1]*mat[3][0]*mat[4][3];
         det3_5[3]=mat[2][0]*mat[3][1]*mat[4][2]+mat[2][1]*mat[3][2]*mat[4][0]+mat[2][2]*mat[3][0]*mat[4][1]-mat[2][2]*mat[3][1]*mat[4][0]-mat[2][0]*mat[3][2]*mat[4][1]-mat[2][1]*mat[3][0]*mat[4][2];
         
         det4[0]=+(mat[1][1]*det3_1[0])-(mat[1][2]*det3_1[1])+(mat[1][3]*det3_1[2])-(mat[1][4]*det3_1[3]);
         det4[1]=-(mat[1][0]*det3_2[0])-(mat[1][2]*det3_2[1])+(mat[1][3]*det3_2[2])-(mat[1][4]*det3_2[3]);
         det4[2]=-(mat[1][0]*det3_3[0])+(mat[1][1]*det3_3[1])+(mat[1][3]*det3_3[2])-(mat[1][4]*det3_3[3]);
         det4[3]=-(mat[1][0]*det3_4[0])+(mat[1][1]*det3_4[1])-(mat[1][2]*det3_4[2])-(mat[1][4]*det3_4[3]);
         det4[4]=-(mat[1][0]*det3_5[0])+(mat[1][1]*det3_5[1])-(mat[1][2]*det3_5[2])+(mat[1][3]*det3_5[3]);
         
         det5=(mat[0][0]*det4[0])-(mat[0][1]*det4[1])+(mat[0][2]*det4[2])-(mat[0][3]*det4[3])+(mat[0][4]*det4[4]);
         
         cout<<"O Determinante dessa matriz e': "<<det5;
         
         system("pause>mull");
         return 0;
}
