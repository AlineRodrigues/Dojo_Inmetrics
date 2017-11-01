#language: pt
#utf-8

Funcionalidade: Cadastrar novo empregado
Eu como RH
Quero cadastrar um novo empregado no site Orangehrm
Para poder gerenciar suas informações	

Cenario: Cadastro empregado
Dado que eu esteja logado no site Orangehrm
E cadastre um novo empregado
Quando eu clicar em Salvar
Então o empregado é cadastrado com sucesso
