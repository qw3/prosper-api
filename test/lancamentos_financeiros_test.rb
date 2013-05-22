# -*- encoding : utf-8 -*-
require 'prosper'

require 'minitest/spec'
require 'minitest/autorun'

describe Prosper::LancamentoFinanceiro do

  # tá comentado porque essa base tá vazia

  # before do
  #   @prosper_lancamento_financeiro = Prosper::LancamentoFinanceiro.new( {
  #     :id                 => 9999,
  #     :valor              => 100,
  #     :data               => '2014-01-30',
  #     :data_prevista      => '2014-01-30',
  #     :descricao          => "Pagamento de Comissão #1",
  #     :observacoes        => "Pagamento referente às comissões do representante: '<Nome do representante>'\nConsulte o sistema de comissões para mais detalhes.",
  #     :forma_pagamento_id => 1,
  #     :conta_id           => 1,
  #     :link_detalhes      => 'http://localhost:3001/pagamentos_comissao',
  #     :empresa_id         => 1
  #   })
  # end

  # it "deveria listar corretamente" do
  #   @lancamentos = Prosper::LancamentoFinanceiro.all
  #   @lancamentos.count.must_be :>, 0
  #   @lancamentos.first.must_be_instance_of Prosper::LancamentoFinanceiro
  # end

  # it "deveria guardar dados corretamente" do
  #   @prosper_lancamento_financeiro.id.must_equal 9999
  #   @prosper_lancamento_financeiro.valor.must_equal 100
  #   @prosper_lancamento_financeiro.data.must_equal '2014-01-30'
  #   @prosper_lancamento_financeiro.data_prevista.must_equal '2014-01-30'
  #   @prosper_lancamento_financeiro.descricao.must_equal "Pagamento de Comissão #1"
  #   @prosper_lancamento_financeiro.observacoes.must_equal "Pagamento referente às comissões do representante: '<Nome do representante>'\nConsulte o sistema de comissões para mais detalhes."
  #   @prosper_lancamento_financeiro.forma_pagamento_id.must_equal 1
  #   @prosper_lancamento_financeiro.conta_id.must_equal 1
  #   @prosper_lancamento_financeiro.link_detalhes.must_equal 'http://localhost:3001/pagamentos_comissao'
  # end

  # it "deveria recuperar dados corretamente" do 
  #   lf = Prosper::LancamentoFinanceiro.find(1363)
  #   lf.valor.to_f.must_equal 39.33

  #   lf = Prosper::LancamentoFinanceiro.find(1363222)
  #   lf.valor.must_equal nil
  # end

  # it "deveria salvar dados corretamente" do
  #   @prosper_lancamento_financeiro.save

  #   lf = Prosper::LancamentoFinanceiro.find(9999)
  #   lf.valor.to_f.must_equal 100
  #   lf.data.must_equal '2014-01-30'
  # end

end