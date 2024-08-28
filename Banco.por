programa {
  funcao inicio() {
    real saldo = 0,investir,rendimento
    real saque, deposito
    cadeia controle
    inteiro menu, meses
    cadeia extrato = ""
    cadeia senha
    

    escreva("digite sua senha: ")
    leia(senha)
    enquanto(senha!= "0604"){
      escreva("senha incorreta!tente novamente: ")
      leia(senha)
    }
    limpa()



    enquanto(menu != 0){
      escreva("|----------MENU----------|\n")
      escreva("| 1-SALDO  R$", saldo, "           |\n")
      escreva("| 2-SAQUE                |\n")
      escreva("| 3-DEPOSITO             |\n")
      escreva("| 4-EXTRATO              |\n")
      escreva("| 5-INVESTIR             |\n")
      escreva("| 0-SAIR                 |\n")
      escreva("|------------------------|\n")
      escreva("| ESCOLHA -> ")
      leia(menu)
      limpa()
      escolha(menu){
        caso 1:
        escreva("Saldo = ", saldo, "\n")
        pare
        caso 2:
        escreva("digite sua senha para sacar: ")
        leia(senha)
        enquanto(senha!="0604"){
        escreva("senha incorreta")
        escreva("\ndigite sua senha para realizar o saque: ")
        leia(senha)
        }
        limpa()
        escreva("Digite o valor para sacar: ")
        leia(saque)
        enquanto(saque < 0){
          escreva("Valor invalido digite novamente: ")
          leia(saque)
        }
        se(saque > saldo){
          escreva("Não autorizado!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao{
          saldo = saldo - saque
          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        pare
        caso 3:
             escreva("digite sua senha para depositar: ")
        leia(senha)
        enquanto(senha!="0604"){
        escreva("senha incorreta")
        escreva("\ndigite sua senha para realizar o deposito: ")
        leia(senha)
        }
        escreva("Digite o valor para depositar: ")
        leia(deposito)
        enquanto(deposito<0){
          escreva("Valor invalido digite novamente: ")
          leia(deposito)
        }
        limpa()
        saldo = saldo + deposito
        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        escreva("Deposito realizado com sucesso!\n")
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        caso 4:
             escreva("digite sua senha para visualizar: ")
        leia(senha)
        enquanto(senha!="0604"){
        escreva("senha incorreta")
        escreva("\ndigite sua senha para visualizar: ")
        leia(senha)
        }
        limpa()
        escreva(extrato)
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        caso 5:
        escreva("quanto você ira investir: ")
        leia(investir)
        se(investir>saldo){
          escreva("saldo insuficiente\n")
        }
        senao{
          escreva("digite quantos meses você ira investir: ")
          leia(meses)
          saldo = saldo - investir
          para(inteiro contador =0;contador<meses; contador++){
          rendimento = investir * 1.02
          investir=rendimento
          }
          saldo = saldo + investir
          escreva("o rendimento final doi de : R$ " + investir+ "\n")
        }
        pare
        caso 0:
        pare
      }
    }
  }
}
