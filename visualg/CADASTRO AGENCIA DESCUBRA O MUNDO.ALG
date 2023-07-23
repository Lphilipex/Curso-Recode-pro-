algoritmo "CADASTRO AGENCIA DESCUBRA O MUNDO"



var

   nomes: vetor[0..4] de caractere
   cpf: vetor[0..4] de inteiro
   destino: vetor[0..4] de caractere
   op, nome: caractere
   i, j, s: inteiro


procedimento inicializa()

inicio

   enquanto op <> "3" faca


      escreval(" ____________________________________________")
      escreval("|--------------------------------------------|")
      escreval("|------------ MENU PRINCIPAL ----------------|")
      escreval("|----------AGENCIA DESCUBRA O MUNDO----------|")
      escreval("|------- Escolha uma das opções abaixo ------|")
      escreval("|--------------------------------------------|")
      escreval("|____________________________________________|")
      escreval()
      escreval(" __________________________")
      escreval("|[1]-[CADASTRO DE CLIENTE]-|")
      escreval("|[2]-[BUSCAR CLIENTE]-     |")
      escreval("|[3]-[FECHAR PROGRAMA]-    |")
      escreval("|__________________________|")
      escreval()

      escreva("Opção: ")
      leia(op)

      se op="1" entao
         limpatela

         se s=10 entao

            escreval("Exedeu limite de cadastros")

         senao

            cadastrar_cliente()
         fimse
      fimse


      se op="2" entao
         limpatela

         buscar_cliente()
      fimse



      se op="3" entao

         para i de 0 ate 4 faca
            nomes[i] <- "x"
         fimpara
         limpatela
         escreval("Volte sempre!")

      fimse
   fimenquanto

fimprocedimento

procedimento cadastrar_cliente()

inicio

   para i de 0 ate 4 faca

      se (nomes[i]="") entao

         escreval("DADOS DO CLIENTE")
         escreval()

         escreva("-> Nome: ")
         leia(nomes[i])


         escreva("-> CPF (SOMENTE NÚMEROS): ")
         leia(cpf[i])

         escreva("-> Destino: ")
         leia(destino[i])

         escreval()

         voltar_menu()

         s <- s + 1

         limpatela
      fimse
   fimpara

   escreval("Exedeu limite de cadastros")
   escreval()

fimprocedimento

procedimento voltar_menu()

inicio

   escreva("Retornar ao menu principal (s/n - letra minúscula)? ") // Resposta: letra minÃºscula
   leia(op)

   se op="s" entao

      i <- i + 1

      limpatela

      inicializa()

   senao
      limpatela

      cadastrar_cliente()
   fimse
fimprocedimento


procedimento buscar_cliente()

inicio

   j <- 0

   escreval("BUSCAR CADASTRO...")
   escreval()

   escreva("Informe o nome do(a) cliente: ")
   leia(nome)
   escreval()

   para i de 0 ate 4 faca

      se (nome=nomes[i]) entao

         escreval("-> Nome: ", nomes[i])
         escreval("-> CPF: ", cpf[i])
         escreval("-> Destino: ", destino[i])
         escreval()

         j <- j + 1

      fimse
   fimpara

   se (j = 0) entao

      escreval("**ERRO!** **Cliente não cadastrado!**")
      escreval()

   fimse

   Voltar_menu2()

   limpatela

fimprocedimento

procedimento voltar_menu2()

inicio

   Escreva("Voltar para o MENU (s/n - letra minúscula)? ") // Resposta: letra minÃºscula
   leia(op)


   se op="s" entao
      limpatela

      inicializa()

   senao
      limpatela
      buscar_cliente()
   fimse
fimprocedimento

inicio

   inicializa()

fimalgoritmo