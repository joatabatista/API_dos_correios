class BuscarGet
  include HTTParty

  base_uri Base_url['url']['url_1']

  def ler_api
    self.class.get("/posts/#{8}/infos")
  end
end
