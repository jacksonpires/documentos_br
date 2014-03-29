require "spec_helper"

describe "DocumentosBr" do
  context 'CPFUtils' do
    it ".cpf" do
      valid_cpf = DocumentosBr.cpf
      expect(valid_cpf).to be_a_kind_of(String)
      expect(valid_cpf.length).to eql(11)
    end

    it ".cpf_formatted" do
      valid_cpf = DocumentosBr.cpf_formatted
      expect(valid_cpf).to match(/^[+-]?[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}+$/)
    end

    it ".cpf_formatado" do
      valid_cpf = DocumentosBr.cpf_formatado
      expect(valid_cpf).to match(/^[+-]?[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}+$/)
    end

    it ".valid_cpf?" do
      valid_cpf = DocumentosBr.cpf
      expect(DocumentosBr.valid_cpf? valid_cpf).to be_true
    end

    it ".cpf_valido?" do
      cpf_valido = DocumentosBr.cpf
      expect(DocumentosBr.cpf_valido? cpf_valido).to be_true
    end

    it ".valid_cpf? - be false" do
      invalid_cpf = "123.456.789-12"
      expect(DocumentosBr.valid_cpf? invalid_cpf).to be_false
    end
  end

  context 'CnpjUtils' do
    it ".cnpj" do
      valid_cnpj = DocumentosBr.cnpj
      expect(valid_cnpj).to be_a_kind_of(String)
      expect(valid_cnpj.length).to eql(14)
    end

    it ".cnpj_formatted" do
      valid_cnpj = DocumentosBr.cnpj_formatted
      expect(valid_cnpj).to match(/^[+-]?[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}+$/)
    end

    it ".cnpj_formatado" do
      valid_cnpj = DocumentosBr.cnpj_formatado
      expect(valid_cnpj).to match(/^[+-]?[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}+$/)
    end

    it ".valid_cnpj?" do
      valid_cnpj = DocumentosBr.cnpj
      expect(DocumentosBr.valid_cnpj? valid_cnpj).to be_true
    end

    it ".cnpj_valido?" do
      cnpj_valido = DocumentosBr.cnpj
      expect(DocumentosBr.cnpj_valido? cnpj_valido).to be_true
    end

    it ".valid_cnpj? - be false" do
      invalid_cnpj = "12.345.678/0001-12"
      expect(DocumentosBr.valid_cnpj? invalid_cnpj).to be_false
    end
  end

  context 'TituloEleitorUtils' do
    it ".titulo_eleitor" do
      valid_titulo_eleitor = DocumentosBr.titulo_eleitor
      expect(valid_titulo_eleitor).to be_a_kind_of(String)
      expect(valid_titulo_eleitor[8,2].to_i).to be >= 1
      expect(valid_titulo_eleitor[8,2].to_i).to be <= 28
      expect(valid_titulo_eleitor.length).to eql(12)
    end

    it ".titulo_eleitor_formatted" do
      valid_titulo_eleitor = DocumentosBr.titulo_eleitor_formatted
      expect(valid_titulo_eleitor).to match(/^[0-9]{4}\.[0-9]{4}\.[0-9]{4}+$/)
    end

    it ".titulo_eleitor_formatado" do
      valid_titulo_eleitor = DocumentosBr.titulo_eleitor_formatado
      expect(valid_titulo_eleitor).to match(/^[0-9]{4}\.[0-9]{4}\.[0-9]{4}+$/)
    end

    it ".valid_titulo_eleitor?" do
      valid_titulo_eleitor = DocumentosBr.titulo_eleitor
      expect(DocumentosBr.valid_titulo_eleitor? valid_titulo_eleitor).to be_true
    end

    it ".titulo_eleitor_valido?" do
      titulo_eleitor_valido = DocumentosBr.titulo_eleitor
      expect(DocumentosBr.titulo_eleitor_valido? titulo_eleitor_valido).to be_true
    end

    it ".valid_titulo_eleitor? - be false" do
      invalid_titulo_eleitor = "1234.5678.9101"
      expect(DocumentosBr.valid_titulo_eleitor? invalid_titulo_eleitor).to be_false
    end

    it ".titulo_eleitor_province" do
      state = DocumentosBr.titulo_eleitor_province("759026311727")
      expect(state).to eql("TO")
    end

    it ".uf_do_titulo_eleitor" do
      state = DocumentosBr.uf_do_titulo_eleitor("759026311727")
      expect(state).to eql("TO")
    end
  end
end
