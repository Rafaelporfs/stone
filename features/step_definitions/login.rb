Dado("que eu acesse a pagina inicial") do
   visit 'http://hannibalcw.azurewebsites.net/Login/?ReturnUrl=%2f'
  end
  
  Quando("faço o login com {string} e {string}") do |email, senha|
   find('input[id="UserName"]').set email
   find('input[id="Senha"]').set senha
    click_button 'btnLogin'

   
  end
  
  Entao("devo logar no sistema") do
   expect(page).to have_content 'Ambiente'

  end