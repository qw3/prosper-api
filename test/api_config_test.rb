# -*- encoding : utf-8 -*-
require 'prosper'

require 'minitest/spec'
require 'minitest/autorun'

describe Prosper::Api do
  
  before do
    Prosper::Api.config do |config|
      config.url = 'http://localhost:3000'
      config.token = 'xyz123'
    end
  end

  it "deveria guardar os dados corretamente" do 

     Prosper::Api.config.url.must_equal 'http://localhost:3000'
     Prosper::Api.config.token.must_equal 'xyz123'

  end

end