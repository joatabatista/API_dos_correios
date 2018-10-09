class LoginAPI
  include HTTParty

  attr_reader :access_token // receber acesso do token

 def headers
     {
      "Authorization" => "Bearer #{access_token}", //pegar o header do Bearer no postman
      "Accept" => "application/json"
    }
  end

  def accesso

   @result = HTTParty.post('https://developer.api.autodesk.com/authentication/v1/gettoken',
   :body => { :client_id => 'XRj2rYsTCJOcbtRaW87AOY8GBjoyLGvS',
              :client_secret => 'Jc599ef6bef864b4',
              :grant_type => 'authorization_code'
            },
   :headers => { 'Content-Type' => 'application/x-www-form-urlencoded' } )
   @result.code
 end



  def login_auth
    response = HTTParty.post("https://apphom.correios.com.br/idCorreios",
      basic_auth: { username: 'correioslogtest', password: '123456'},
      body: {
        grant_type: 'password'
      }
    )
    data = JSON.parse(response.body)
    @access_token = data['access_token']
  end

  def resposta
    JSON.parse(self.class.get("", headers: headers).body)
  end
end
