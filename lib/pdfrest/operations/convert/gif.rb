module Pdfrest
  module Convert
    class Gif < Pdfrest::Base
      private

      def request_klass
        Net::HTTP::Post
      end

      def endpoint
        "gif"
      end

      def validate_params
      end
    end
  end
end
