# -*- encoding : utf-8 -*-
require 'active_support/core_ext'
require 'prosper/api'

module Prosper
  autoload :Conta, 'prosper/conta'
  autoload :Empresa, 'prosper/empresa'
  autoload :FormaPagamento, 'prosper/forma_pagamento'
  autoload :LancamentoFinanceiro, 'prosper/lancamento_financeiro'
end