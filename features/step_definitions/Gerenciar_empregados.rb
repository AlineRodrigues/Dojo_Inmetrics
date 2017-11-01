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

Dado(/^edito a nacionalidade de um novo empregado$/) do
  click_link "menu_pim_viewPimModule"
  click_link "menu_pim_viewEmployeeList"
  fill_in "empsearch_employee_name_empName", :with => "Joao Souza"
  click_button "searchBtn"
  click_link "Joao Souza"
  click_button "btnSave"
  select "Brazilian", :from => "personal_cmbNation"
  click_button "btnSave"
  sleep 7
end

Então(/^a nacionalidade do empregado é alterada com sucesso$/) do
 assert_text "Brazilian"
 sleep 5
end