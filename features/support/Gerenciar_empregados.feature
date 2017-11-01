#language: pt
#utf-8

Funcionalidade: Gerenciar empregados
Eu como RH
Quero ter acesso ao site Orangehrm
Para poder gerenciar os empregados e para poder atualizar/corrigir suas informações	

Cenario: Cadastro empregado
Dado que eu esteja logado no site Orangehrm
E cadastre um novo empregado
Quando eu clicar em Salvar
Então o empregado é cadastrado com sucesso

Cenario: Editar dados de um empregado
Dado que eu esteja logado no site Orangehrm
E edito a nacionalidade de um novo empregado
Quando eu clicar em Salvar
Então a nacionalidade do empregado é alterada com sucesso