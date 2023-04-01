module Pdfrest
  class Split < Base

    private

    def request_klass
      Net::HTTP::Post
    end

    def endpoint
      "split-pdf"
    end
  end
end
