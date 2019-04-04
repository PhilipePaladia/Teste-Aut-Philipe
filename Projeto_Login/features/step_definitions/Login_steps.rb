

    Dado("que eu acesse a página principal") do
        visit "https://www.movida.com.br/"
    end

    Quando("eu faço login com meu cpf {string} e senha {string}") do |cpf, senha|
        find ('input[name=cpf]').set cpf
        find ('input[name=senha]').set senha
        click_button 'login-button'
    end

    Então("devo ser autenticado com sucesso") do
        expect(page).to have_content 'Olá Philipe'
    end

    Então("devo ver a seguinte mensagem {string}") do |mensagem|
        pending 
    
    end



    