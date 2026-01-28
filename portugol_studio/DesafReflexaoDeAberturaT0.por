programa
{
	funcao inicio()
	{
		inteiro numeros[5]
		inteiro i, menor
		
		numeros[0] = -1
		numeros[1] = 3
		numeros[2] = 4
		numeros[3] = 2
		numeros[4] = 6

		menor = numeros[0]
		
		para (i = 1; i < 5; i++)
		{
			se (numeros[i] < menor)
			{
				menor = numeros[i]
			}
		}
		
		escreva("O menor número é: ", menor)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 327; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */