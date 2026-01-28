programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		inteiro contador = 10

		enquanto(contador > 0){

			limpa()
			escreva("Contagem regressiva...",contador) //se manter assim, fica em loop infinito

			contador = contador -1
			Util.aguarde(2000) //temproiza a saida dos numeros, senao o laço acaba instantaneamente ao inicializar
			
			
			}

			limpa()

			escreva("BOOOOOOOOMM...")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 355; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */