programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		
		/* 
		 *  
		 inteiro idade
		escreva("Escreva sua idade \n")
		leia(idade)

		se (idade >= 18){
			escreva("Maior de idade")
			}senao{
				escreva("Menor de idade")
		
				}
*/

			cadeia nome
			real n1, n2, n3, media

			escreva("Digite seu nome\n")
			leia(nome)
			escreva("Digite a nota 1\n")
			leia(n1)
			escreva("Digite a nota 2\n")
			leia(n2)
			escreva("Digite a nota 3\n")
			leia(n3)

			media =(n1+n2+n3)/3
			limpa()
			se(media >=6.0){
				escreva("Parabéns,",nome," voce foi aprovado, sua nota: ",mat.arredondar(media,2))
			}
			senao se(media >=4 e media <6){
				escreva("Aluno,",nome," voce ficou de recuperação, sua nota: ",mat.arredondar(media,2))
				}
			senao{
				escreva(nome," voce foi reprovado, sua nota: ",mat.arredondar(media,2))
				}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 728; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */