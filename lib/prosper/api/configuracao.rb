# -*- encoding : utf-8 -*-
module Prosper
  module Api

    class Configuracao

      attr_accessor :url, :token

      def self.instance
        @__instance__ ||= new
      end

    end

  end
end