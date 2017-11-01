Dado(/^que eu esteja logado no site Orangehrm$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in "txtPassword", :with => "admin"
  fill_in "txtUsername", :with => "Admin"
  click_button "btnLogin"
end

Dado(/^edito o estado civil de um novo empregado$/) do
  click_link "menu_pim_viewPimModule"
  click_link "menu_pim_viewEmployeeList"
  fill_in "empsearch_employee_name_empName", :with => "Joao Souza"
  click_button "searchBtn"
  click_link "Joao Souza"
  sleep 2
  click_button "btnSave"
  sleep 2
  select "Brazilian", :from => "personal_cmbNation"
  click_button "btnSave"
  sleep 7
end

Então(/^o estado civil do empregado é alterado com sucesso$/) do
  pending # Write code here that turns the phrase above into concrete actions
end