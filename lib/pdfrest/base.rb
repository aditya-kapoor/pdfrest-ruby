module Pdfrest
  class Base
    def self.call(params)
      attr_reader :params, :result

      def initialize(params)
        @params = params
      end

      new(params).tap do |object|
        object.validate_params
        object.make_request
        object.package_result
      end

      def validate_params
        # Do nothing.
      end

      def make_request
        http = Net::HTTP.new(request_url.host, request_url.port)
        http.use_ssl = true
        http.set_debug_output($stdout)
        request = request_method_klass.new(request_url, request_headers)
        request.body = request_params.to_json
        @response = http.request(request)
      end

      def package_result
        @result = { response: JSON.parse(@response.body), status_code: @response.code }
      end

      private

      def request_url
        URI([Pdfrest.base_url, endpoint].join('/'))
      end

      def request_headers
        {
          "Content-Type" => "multipart/form-data",
          "Accept"       => "application/json",
          "Api-Key"      => Pdfrest.configuration.access_key
        }
      end

      def request_params
        {}
      end
    end
  end
end
