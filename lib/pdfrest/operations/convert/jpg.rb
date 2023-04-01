module Pdfrest
  module Convert
    class Jpg < Pdfrest::Base
      private

      def request_klass
        Net::HTTP::Post
      end

      def endpoint
        "jpg"
      end

      def validate_params
      end
    end
  end
end
