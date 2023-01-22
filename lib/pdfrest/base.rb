module Pdfrest
  class Base
    def self.call(params)
      attr_reader :params, :result

      def initialize(params)
        @params = params
      end

      new(params).tap do |object|
        object.prepare_params
        object.make_request
        object.package_result
      end

      def prepare_params
      end

      def make_request
      end

      def package_result
      end
    end
  end
end
