module Pdfrest
  class Zip < Base

    private

    def request_klass
      Net::HTTP::Get
    end

    def endpoint
      "zip"
    end
  end
end
