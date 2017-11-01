Dado(/^que eu esteja logado no site Orangehrm$/) do
visit "http://opensource.demo.orangehrmlive.com/"
fill_in "txtPassword", :with => "admin"
fill_in "txtUsername", :with => "Admin"
click_button "btnLogin"
end

Dado(/^cadastre um novo empregado$/) do
click_link "menu_pim_viewPimModule"
click_link "menu_pim_addEmployee"
fill_in "firstName", :with => "Joao"
fill_in "middleName", :with => "Souza"
fill_in "lastName", :with => "Pereira"
end

Quando(/^eu clicar em Salvar$/) do
click_button "btnSave"
end

Então(/^o empregado é cadastrado com sucesso$/) do
assert_text "Joao Souza Pereira"
end