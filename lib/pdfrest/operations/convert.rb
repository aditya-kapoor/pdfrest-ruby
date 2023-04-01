module Pdfrest
  module Convert
    def self.bmp(params={})
      Pdfrest::Convert::Bmp.call(params)
    end

    def self.gif(params={})
      Pdfrest::Convert::Gif.call(params)
    end

    def self.jpg(params={})
      Pdfrest::Convert::Jpg.call(params)
    end

    def self.png(params={})
      Pdfrest::Convert::Png.call(params)
    end

    def self.tip(params={})
      Pdfrest::Convert::Tif.call(params)
    end
  end
end

require_relative './bmp'
require_relative './gif'
require_relative './jpg'
require_relative './png'
require_relative './tif'
