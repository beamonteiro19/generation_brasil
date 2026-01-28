programa
{
	
	funcao inicio()
	{
	// e = conjunção
	// ou = disjunção
	// não = negação

	
	/*	cadeia filhx = "XX"
		se(filhx =="XY" ou filhx=="XX"){
			escreva("Sim")
			}senao{
				escreva("Não")
				}
	*/
	/*
	cadeia pais 
	inteiro idade
	escreva("País? (BRA, USA, POR)\n")
	leia(pais)

	limpa()

	escreva("Digite uma idade: \n")
	leia(idade)

	limpa()

	se(pais =="BRA" e idade >=18){
		escreva("Permitido")
		}senao se (pais == "EUA" e idade >= 21){
			escreva("Allowed")
			}senao se (pais == "POR"){
				escreva("Permitido")
				}senao{
					escreva("Não permitido")}

	*/

		cadeia pais 
	inteiro idade
	logico permissao
	escreva("País? (BRA, EUA, POR)\n")
	leia(pais)

	limpa()

	se(pais== "BRA" ou pais =="POR"){
		escreva("Digite uma idade: \n")}senao{
			escreva("Age: \n")}
	
	leia(idade)

	limpa()

	se(pais =="BRA" e idade >=18 ou(pais == "EUA" e idade >= 21)ou (pais == "POR")){
		permissao = verdadeiro
		}senao{
			permissao = falso
			}se(permissao e (pais =="POR" ou pais=="BRA")){
				escreva("Permitido")
				}senao se(permissao e pais =="EUA"){
					escreva("Allowed")}senao se(nao permissao e pais=="EUA"){
						escreva("Not allowed")}senao se(nao permissao e (pais =="POR" ou pais == "BRA")){
							escreva("Não permitido")}
					
				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1001; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */