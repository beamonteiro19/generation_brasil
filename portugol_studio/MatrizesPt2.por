programa
{
	
	funcao inicio()
	{
		cadeia nomes[3] = {"Ana","Amanda","Agatha"}

		real notas[3][4] = {{10.0,10.0,9.0,10.0},
						{8.0,9.0,7.0,10.0},
						{4.0,10.0,10.0,10.0}}

		real medias[3]

		para(inteiro l=0; l<3; l++){
			real sum = 0.0
			para(inteiro c = 0; c<4; c++){
				sum += notas[l][c]
				}

				medias[l]= sum/4
			}


			inteiro aluno
			escreva("Digite o numero do aluno \n")
			leia(aluno)
			cadeia aprv
			se(medias[aluno]>=6){
				aprv= "Aprovado!"
				}senao{
					aprv="Reprovado!"
					}
				

			
			escreva("===============", "\n")
			escreva("Aluno: ", nomes[aluno],"\n") 
			escreva("===============", "\n")
			escreva("1 Bimestre: ", notas[aluno][0],"\n") 
			escreva("===============", "\n")
			escreva("2 Bimestre: ", notas[aluno][1],"\n") 
			escreva("===============", "\n")
			escreva("3 Bimestre: ", notas[aluno][2],"\n") 
			escreva("===============", "\n")
			escreva("4 Bimestre: ", notas[aluno][3],"\n") 
			escreva("===============", "\n")
			escreva("Média: ",medias[aluno], "\n")
			escreva("  ",aprv ,"\n")
			escreva("===============", "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notas, 8, 7, 5}-{medias, 12, 7, 6}-{sum, 15, 8, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */