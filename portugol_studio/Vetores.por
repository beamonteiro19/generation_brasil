programa
{
	
	funcao inicio()
	{

	/*
		cadeia nome[5]

		nome[0] = "Marcelo"
		nome[1] = "Thiago"
		nome[2] = "Priscila"
		nome[3] = "Juliana"
		nome[4] = "Mauricio"

		escreva(nome[0])z
		*/


		
		/*
		cadeia cat[4] = {"Ni","Pt","Pd","Rh"}
		escreva(cat[3])
		*/


		/*
		cadeia nome[5] = {"Mauricio","Juliana","Priscila","Thiago","Marcelo"}

		para(inteiro i = 0; i <= 4; i++){
			escreva(nome[i] , "\n")
			
			}
		*/
		
		
		/*
		cadeia nome[5] 

		leia(nome[1])

		para(inteiro i = 0; i <=4; i++){
			escreva("Digite a posição ", i, ": ")
			leia(nome[i])
			limpa()
			}

		para(inteiro i = 0; i <=4; i++){
			escreva(i , ": ",nome[i]," ")
			}
		*/
		/*
		inteiro pais
		cadeia idiomas[8] = {"Inglês", "Português", "Espanhol", "Francês", "Alemão", "Italiano", "Japonês", "Chinês"}
		escreva("Escolha um país: (0) Estados Unidos, (1) Brasil, (2) Espanha, (3) França, (4) Alemanha, (5 )Itália, (6) Japão, (7)China\n")
		leia(pais)
		se(pais>= 0 e pais < 8){
			escreva(idiomas[pais])
			}senao{
				escreva("Escolha um país válido!")
				}
		
		*/


		inteiro num[4],x

		para(x=0; x<4; x++){
			escreva("Entre com um numero: ")
			leia(num[x])
			}para(x=0;x<4;x++){
				escreva("\n Valor Posição ", x+1, ": ", num[x])
				}para(x=3;x>0;x--){2	
				escreva("\n Valor Posição ", x+1, ": ", num[x])
				}


		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 619; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */