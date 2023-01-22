# frozen_string_literal: true

require_relative "pdfrest/version"
require_relative "pdfrest/config"

module Pdfrest
  class Error < StandardError; end

  class << self
    attr_accessor :configuration

    def config
      self.configuration ||= Config.new
      yield(configuration)
    end
  end
end
