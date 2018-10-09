class CriarPost
  include HTTParty

  base_uri Base_url['url']['url_1']

  def criar_post(body)
    self.class.post("/posts", :body => body.to_json , :headers => {'Content-Type' => 'application/json'})
  end

end
