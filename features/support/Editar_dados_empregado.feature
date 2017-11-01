#language: pt
#utf-8

Funcionalidade: Editar dados de um empregado já cadastrado
Eu como RH
Quero editar dados de um empregado já cadastrado no site Orangehrm
Para poder atualizar/corrigir suas informações	

Cenario: Editar dados de um empregado
Dado que eu esteja logado no site Orangehrm
E edito o estado civil de um novo empregado
Quando eu clicar em Salvar
Então o estado civil do empregado é alterado com sucesso