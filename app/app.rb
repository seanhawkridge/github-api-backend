
require 'sinatra/base'
require 'json'
require 'rest-client'

class GithubUsers < Sinatra::Base

  get '/api' do
    api_result = RestClient.get 'https://api.github.com/search/users/seanhawkridge'
    JSON.parse(api_result)
  end

end
