programa
{
	
	funcao inicio()
	{
		const inteiro TAMANHO = 3
		inteiro mat[TAMANHO][2],l,c //dimensao da matriz =  3x2 matriz bidimensional

		para(l=0; l<TAMANHO; l++){
			para(c=0; c<2; c++){
				escreva("Valor: ")
				leia(mat[l][c])
				
				}
			
			}

		limpa()

		para(l=0; l<TAMANHO; l++){
		para(c=0; c<2; c++){
			escreva("[ ", mat[l][c], " ]")
			
			
			}
				escreva("\n")
		
		}
	}

funcao matrizes()
	{

		inteiro notas[4][4] = 	{{2,3,4,5},
							{2,3,4,5},
							{2,3,4,5},
							{2,3,4,5}}


							
	
		para(inteiro l=0; l<4; l++){
			para(inteiro c=0; c<4; c++){
				escreva(notas[l][0], ",")
				}
				escreva("\n")



		inteiro matriz[2][2]
		para(inteiro l=0; l<2; l++){
			para(inteiro c=0; c<2; c++){
				leia(notas[l][0], ",")
				}
				escreva("\n")

				
			
			}
		
	
	}


	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 262; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notas, 34, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */