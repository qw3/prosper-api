# -*- encoding : utf-8 -*-
require 'httparty'
require 'json'

module Prosper
  class LancamentoFinanceiro

    include HTTParty

    base_uri ::Prosper::Api.config.url

    attr_accessor :attributes

    def initialize(attributes = {})
      self.attributes = attributes
      self.find unless self.attributes[:id].blank?
    end

    def save
      prosper_object = self.class.post("/api/lancamentos_financeiros", self.attributes.as_json)
      self.attributes = JSON.parse(prosper_object, {:symbolize_names => true})
    end

    def find
      prosper_object = self.class.get("/api/lancamentos_financeiros/#{self.attributes[:id]}")
      self.attributes = JSON.parse(prosper_object, {:symbolize_names => true})
    end

  end
end