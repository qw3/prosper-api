# -*- encoding : utf-8 -*-
require 'prosper'

require 'minitest/spec'
require 'minitest/autorun'

describe Prosper::Conta do

  before do
    @object = Prosper::Conta.new( { :id => 1 })
  end

  it "deveria listar corretamente" do
    @lancamentos = Prosper::Conta.all
    @lancamentos.count.must_equal 1
    @lancamentos.first.must_be_instance_of Prosper::Conta
  end

  it "deveria guardar dados corretamente" do
    @object.load!
    @object.id.must_equal 1
    @object.nome.must_equal 'Conta Principal'
  end

  it "deveria recuperar dados corretamente" do 
    obj = Prosper::Conta.find(1)
    obj.nome.must_equal 'Conta Principal'

    obj = Prosper::Conta.find(1363222)
    obj.nome.must_equal nil
  end

end