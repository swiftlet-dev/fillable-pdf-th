require_relative 'fillable-pdf/itext'

class Field
  class << self
    def pdf_name
      @pdf_nanme ||= Rjb.import('com.itextpdf.kernel.pdf.PdfName')
    end

    def button
      @button = pdf_name.Btn.toString
    end

    def choice
      @choice = pdf_name.Ch.toString
    end

    def signature
      @signature = pdf_name.Sig.toString
    end

    def text
      @text = pdf_name.Tx.toString
    end
  end
end
