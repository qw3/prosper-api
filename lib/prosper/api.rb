# -*- encoding : utf-8 -*-
require 'active_support/core_ext'
require "prosper/api/version"

module Prosper
  module Api

    autoload :Configuracao, 'prosper/api/configuracao'
    autoload :Conta, 'prosper/api/conta'
    autoload :Empresa, 'prosper/api/empresa'
    autoload :FormaPagamento, 'prosper/api/forma_pagamento'
    autoload :LancamentoFinanceiro, 'prosper/api/lancamento_financeiro'
    
    def self.config
      yield(Configuracao.instance) if block_given?
      return Configuracao.instance
    end

  end
end
