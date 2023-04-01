module Pdfrest
  class Merge < Base

    private

    def request_klass
      Net::HTTP::Post
    end

    def endpoint
      "merged-pdf"
    end
  end
end
