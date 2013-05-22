# -*- encoding : utf-8 -*-
require 'prosper/api'

require 'minitest/spec'
require 'minitest/autorun'

describe Prosper::Api::Conta do

  before do
    @object = Prosper::Api::Conta.new( { :id => 1 })
  end

  it "deveria listar corretamente" do
    @lancamentos = Prosper::Api::Conta.all
    @lancamentos.count.must_equal 1
    @lancamentos.first.must_be_instance_of Prosper::Api::Conta
  end

  it "deveria guardar dados corretamente" do
    @object.load!
    @object.id.must_equal 1
    @object.nome.must_equal 'Conta Principal'
  end

  it "deveria recuperar dados corretamente" do 
    obj = Prosper::Api::Conta.find(1)
    obj.nome.must_equal 'Conta Principal'

    obj = Prosper::Api::Conta.find(1363222)
    obj.nome.must_equal nil
  end

end