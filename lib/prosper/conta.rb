# -*- encoding : utf-8 -*-
require 'httparty'
require 'json'

module Prosper
  class Conta

    include HTTParty

    attr_accessor :attributes
    attr_accessor :errors

    def initialize(attributes = {})
      self.class.base_uri ::Prosper::Api.config.url
      self.attributes = attributes
    end

    def save
      self.attributes = self.class.post("/api/contas", :body => {:lancamento_financeiro => self.attributes}).parsed_response.symbolize_keys
    end

    def self.find(id)
      return nil if id.blank?
      prosper_object = get("/api/contas/#{id}").parsed_response.symbolize_keys
      prosper_object = {:id => id} if prosper_object.empty?
      Conta.new( prosper_object )
    end

    def self.all
      Conta.where
    end

    def self.where(options = {})
      list = get("/api/contas", :body => options).parsed_response
      resposta = []
      list.each do |object|
        resposta << Conta.new(object)
      end
      resposta
    end

    def load!
      self.attributes = Conta.find(self.attributes[:id]).attributes
    end

    def method_missing(m, *args, &block)  
      self.attributes[m.to_sym]
    end  

  end
end