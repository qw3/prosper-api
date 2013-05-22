# -*- encoding : utf-8 -*-
require 'prosper/api'

require 'minitest/spec'
require 'minitest/autorun'

describe Prosper::Api do
  
  before do
    Prosper::Api.config do |config|
      config.url = 'http://localhost:3001'
      config.token = 'xyz123'
    end
  end

  it "deveria guardar os dados corretamente" do 

     Prosper::Api.config.url.must_equal 'http://localhost:3001'
     Prosper::Api.config.token.must_equal 'xyz123'

  end

end