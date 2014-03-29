require "spec_helper"

describe String do
  context 'CpfUtils' do
   it "#valid_cpf_mask?" do
      expect("123.456.789-12".valid_cpf_mask?).to be_true
      expect("12345678912".valid_cpf_mask?).to be_true
    end

    it "#mascara_de_cpf_valida?" do
      expect("123.456.789-12".mascara_de_cpf_valida?).to be_true
      expect("12345678912".mascara_de_cpf_valida?).to be_true
    end

    it "#valid_cpf_mask? - be false" do
      expect("123..456.789-12".valid_cpf_mask?).to be_false
      expect("123.456.789--12".valid_cpf_mask?).to be_false
      expect("123.456.789-1E".valid_cpf_mask?).to be_false
    end

    it "#mascara_de_cpf_valida? - be false" do
      expect("123..456.789-12".mascara_de_cpf_valida?).to be_false
      expect("123.456.789--12".mascara_de_cpf_valida?).to be_false
      expect("123.456.789-1E".mascara_de_cpf_valida?).to be_false
    end

    it "#valid_cpf?" do
      cpf = DocumentosBr.cpf
      expect(cpf.valid_cpf?).to be_true
    end

    it "#cpf_valido?" do
      cpf = DocumentosBr.cpf
      expect(cpf.cpf_valido?).to be_true
    end

    it "#to_cpf_format?" do
      cpf = DocumentosBr.cpf
      expect(cpf.to_cpf_format).to match(/^[+-]?[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}+$/)
    end

    it "#para_formato_cpf?" do
      cpf = DocumentosBr.cpf
      expect(cpf.para_formato_cpf).to match(/^[+-]?[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}+$/)
    end

    it "#generate_cpf" do
      valid_cpf = DocumentosBr.cpf
      final_cpf = valid_cpf[0..8].generate_cpf

      expect(final_cpf).to be_a_kind_of(String)
      expect(final_cpf.length).to eql(11)
    end

    it "#gerar_cpf" do
      valid_cpf = DocumentosBr.cpf
      final_cpf = valid_cpf[0..8].gerar_cpf

      expect(final_cpf).to be_a_kind_of(String)
      expect(final_cpf.length).to eql(11)
    end

    it "#gerar_cpf_formatado" do
      valid_cpf = DocumentosBr.cpf
      final_cpf = valid_cpf[0..8].gerar_cpf_formatado

      expect(final_cpf).to match(/^[+-]?[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}+$/)
    end

    it "#generate_cpf_formatted" do
      valid_cpf = DocumentosBr.cpf
      final_cpf = valid_cpf[0..8].generate_cpf_formatted

      expect(final_cpf).to match(/^[+-]?[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}+$/)
    end
  end

  context 'CnpjUtils' do
    it "#valid_cnpj_mask?" do
      expect("61.287.395/0001-40".valid_cnpj_mask?).to be_true
      expect("61287395000140".valid_cnpj_mask?).to be_true
    end

    it "#mascara_de_cnpj_valida?" do
      expect("61.287.395/0001-40".mascara_de_cnpj_valida?).to be_true
      expect("61287395000140".mascara_de_cnpj_valida?).to be_true
    end

    it "#valid_cnpj_mask? - be false" do
      expect("45.698.394//0001-54".valid_cnpj_mask?).to be_false
      expect("45.698..394/0001-54".valid_cnpj_mask?).to be_false
      expect("45.698.394/00O1-54".valid_cnpj_mask?).to be_false
    end

    it "#mascara_de_cnpj_valida? - be false" do
      expect("45.698.394//0001-54".mascara_de_cnpj_valida?).to be_false
      expect("45.698..394/0001-54".mascara_de_cnpj_valida?).to be_false
      expect("45.698.394/00O1-54".mascara_de_cnpj_valida?).to be_false
    end

    it "#valid_cnpj?" do
      cnpj = CnpjUtils.cnpj
      expect(cnpj.valid_cnpj?).to be_true
    end

    it "#cnpj_valido?" do
      cnpj = CnpjUtils.cnpj
      expect(cnpj.cnpj_valido?).to be_true
    end

    it "#to_cnpj_format?" do
      cnpj = CnpjUtils.cnpj
      expect(cnpj.to_cnpj_format).to match(/^[+-]?[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}+$/)
    end

    it "#para_formato_cnpj?" do
      cnpj = CnpjUtils.cnpj
      expect(cnpj.para_formato_cnpj).to match(/^[+-]?[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}+$/)
    end

    it "#generate_cnpj" do
      valid_cnpj = CnpjUtils.cnpj
      final_cnpj = valid_cnpj[0..11].generate_cnpj

      expect(final_cnpj).to be_a_kind_of(String)
      expect(final_cnpj.length).to eql(14)
    end

    it "#gerar_cnpj" do
      valid_cnpj = CnpjUtils.cnpj
      final_cnpj = valid_cnpj[0..11].gerar_cnpj

      expect(final_cnpj).to be_a_kind_of(String)
      expect(final_cnpj.length).to eql(14)
    end

    it "#gerar_cnpj_formatado" do
      valid_cnpj = CnpjUtils.cnpj
      final_cnpj = valid_cnpj[0..11].gerar_cnpj_formatado

      expect(final_cnpj).to match(/^[+-]?[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}+$/)
    end

    it "#generate_cnpj_formatted" do
      valid_cnpj = CnpjUtils.cnpj
      final_cnpj = valid_cnpj[0..11].generate_cnpj_formatted

      expect(final_cnpj).to match(/^[+-]?[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}+$/)
    end
  end

  context 'TituloEleitorUtils' do
    it "#valid_titulo_eleitor_mask?" do
      expect("7590.2631.1727".valid_titulo_eleitor_mask?).to be_true
      expect("759026311727".valid_titulo_eleitor_mask?).to be_true
    end

    it "#mascara_de_titulo_eleitor_valida?" do
      expect("7590.2631.1727".mascara_de_titulo_eleitor_valida?).to be_true
      expect("759026311727".mascara_de_titulo_eleitor_valida?).to be_true
    end

    it "#valid_titulo_eleitor_mask? - be false" do
      expect("7590.26E1.1727".valid_titulo_eleitor_mask?).to be_false
      expect("7590..2631.1727".valid_titulo_eleitor_mask?).to be_false
      expect("7590.26311727".valid_titulo_eleitor_mask?).to be_false
    end

    it "#mascara_de_titulo_eleitor_valida? - be false" do
      expect("7590.26E1.1727".mascara_de_titulo_eleitor_valida?).to be_false
      expect("7590..2631.1727".mascara_de_titulo_eleitor_valida?).to be_false
      expect("7590.2631..1727".mascara_de_titulo_eleitor_valida?).to be_false
    end

    it "#valid_titulo_eleitor?" do
      titulo_eleitor = DocumentosBr.titulo_eleitor
      expect(titulo_eleitor.valid_titulo_eleitor?).to be_true
    end

    it "#titulo_eleitor_valido?" do
      titulo_eleitor = DocumentosBr.titulo_eleitor
      expect(titulo_eleitor.titulo_eleitor_valido?).to be_true
    end

    it "#to_titulo_eleitor_format?" do
      titulo_eleitor = DocumentosBr.titulo_eleitor
      expect(titulo_eleitor.to_titulo_eleitor_format).to match(/^[0-9]{4}\.[0-9]{4}\.[0-9]{4}+$/)
    end

    it "#para_formato_titulo_eleitor?" do
      titulo_eleitor = DocumentosBr.titulo_eleitor
      expect(titulo_eleitor.para_formato_titulo_eleitor).to match(/^[0-9]{4}\.[0-9]{4}\.[0-9]{4}+$/)
    end

    it "#generate_titulo_eleitor" do
      valid_titulo_eleitor = DocumentosBr.titulo_eleitor
      final_titulo_eleitor = valid_titulo_eleitor[0..9].generate_titulo_eleitor

      expect(final_titulo_eleitor).to be_a_kind_of(String)
      expect(final_titulo_eleitor.size).to eql(12)
    end

    it "#gerar_titulo_eleitor" do
      valid_titulo_eleitor = DocumentosBr.titulo_eleitor
      final_titulo_eleitor = valid_titulo_eleitor[0..9].gerar_titulo_eleitor

      expect(final_titulo_eleitor).to be_a_kind_of(String)
      expect(final_titulo_eleitor.size).to eql(12)
    end

    it "#gerar_titulo_eleitor_formatado" do
      valid_titulo_eleitor = DocumentosBr.titulo_eleitor
      final_titulo_eleitor = valid_titulo_eleitor[0..9].gerar_titulo_eleitor_formatado

      expect(final_titulo_eleitor).to match(/^[0-9]{4}\.[0-9]{4}\.[0-9]{4}+$/)
    end

    it "#generate_titulo_eleitor_formatted" do
      valid_titulo_eleitor = DocumentosBr.titulo_eleitor
      final_titulo_eleitor = valid_titulo_eleitor[0..9].generate_titulo_eleitor_formatted

      expect(final_titulo_eleitor).to match(/^[0-9]{4}\.[0-9]{4}\.[0-9]{4}+$/)
    end

    it "#titulo_eleitor_province" do
      state = "759026311727".titulo_eleitor_province
      expect(state).to eql("TO")
    end

    it "#uf_do_titulo_eleitor" do
      state = "759026311727".uf_do_titulo_eleitor
      expect(state).to eql("TO")
    end
  end
end
