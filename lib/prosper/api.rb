# -*- encoding : utf-8 -*-
require "prosper/api/version"

module Prosper
  module Api

    autoload :Configuracao, 'prosper/api/configuracao'
    
    def self.config
      yield(Configuracao.instance) if block_given?
      Configuracao.instance
    end

  end
end
