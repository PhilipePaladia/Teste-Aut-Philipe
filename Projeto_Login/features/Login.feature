#language:pt

Funcionalidade: Login
PARA que eu possa me logar no site 'https://www.movida.com.br/'
SENDO um usuario 
POSSO Acessar o sistema com meu cpf e senha cadastrados
Fazer login com e-mail e senha 
Clicar em OK, Autenticado com sucesso. 
SEJA BEM VINDO!!
    
Cenario: Senha Invalida
    Dado    que eu acesse a página principal
    Quando  eu faço login com meu cpf "397.063.408-31" e senha "XPTO123"
    Então   devo ver a seguinte mensagem "Senha Inválida"
    
Cenario: Usuário Inexistente

    Dado    que eu acesse a página principal
    Quando  eu faço login com meu cpf "000.000.000-00" e senha "123456" 
    Então   devo ver a seguinte mensagem "Usuário Não Cadastrado"
    
Cenario: cpf Incorreto
    Dado    que eu acesse a página principal
    Quando  eu faço login com meu cpf "111.111.111-" e senha "123456"
    Então   devo ver a seguinte mensagem "Cpf invalido"
    
Cenario: Login usuário autorizado
    Dado    que eu acesse a página principal  
    Quando  eu faço login com meu cpf "397.063.408-31" e senha "123456"
    Então   devo ser autenticado com sucesso
    E       devo ver a seguinte mensagem "Olá Philipe"