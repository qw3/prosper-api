# -*- encoding : utf-8 -*-
require 'httparty'
require 'json'

module Prosper
  module Api
    class FormaPagamento

      include HTTParty
      base_uri ::Prosper::Api.config.url

      attr_accessor :attributes
      attr_accessor :errors

      def initialize(attributes = {})
        self.attributes = attributes
      end

      def save
        self.attributes = self.class.post("/api/formas_pagamento", :body => {:lancamento_financeiro => self.attributes}).parsed_response.symbolize_keys
      end

      def self.find(id)
        return nil if id.blank?
        prosper_object = get("/api/formas_pagamento/#{id}").parsed_response.symbolize_keys
        prosper_object = {:id => id} if prosper_object.empty?
        FormaPagamento.new( prosper_object )
      end

      def self.all
        FormaPagamento.where
      end

      def self.where(options = {})
        list = get("/api/formas_pagamento", :body => options).parsed_response
        resposta = []
        list.each do |object|
          resposta << FormaPagamento.new(object.symbolize_keys)
        end
        resposta
      end

      def load!
        attributes = FormaPagamento.find(self.attributes[:id]).attributes
      end

      def method_missing(m, *args, &block)  
        self.attributes[m.to_sym]
      end  

    end
  end
end