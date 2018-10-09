Quando("acessar url da api do Spotify") do
  @resposta = LoginAPI.new
  @resposta.accesso
end

Então("a api me retorna os dados da leitura") do

end
