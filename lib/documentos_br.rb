require "documentos_br/version"
require "cpf_utils"
require "cnpj_utils"
require "titulo_eleitor_utils"

module DocumentosBr
  # Gera um número de CPF.
  #
  # Exemplo:
  # DocumentosBr.cpf => # "45698394823"
  def self.cpf
    CpfUtils.cpf
  end

  # Gera um número de CPF formatado.
  #
  # Exemplo:
  # DocumentosBr.cpf_formatted => # "456.983.948-23"
  def self.cpf_formatted
    CpfUtils.cpf_formatted
  end

  # Gera um número de CPF formatado.
  #
  # Exemplo:
  # DocumentosBr.cpf_formatado => # "456.983.948-23"
  def self.cpf_formatado
    self.cpf_formatted
  end

  # Verifica se um CPF é válido.
  #
  # Exemplo:
  # DocumentosBr.valid_cpf?(45698394823) => # true
  # DocumentosBr.valid_cpf?("45698394823") => # true
  # DocumentosBr.valid_cpf?("456.983.948-23") => # true
  def self.valid_cpf?(cpf_number)
    cpf_number.to_s.valid_cpf?
  end

  # Verifica se um CPF é válido.
  #
  # Exemplo:
  # DocumentosBr.cpf_valido?(45698394823) => # true
  # DocumentosBr.cpf_valido?("45698394823") => # true
  # DocumentosBr.cpf_valido?("456.983.948-23") => # true
  def self.cpf_valido?(cpf_number)
    self.valid_cpf?(cpf_number)
  end

  # Gera um número de CNPJ.
  #
  # Exemplo:
  # DocumentosBr.cnpj => # "61287395000140"
  def self.cnpj
    CnpjUtils.cnpj
  end

  # Gera um número de Cnpj formatado.
  #
  # Exemplo:
  # DocumentosBr.cnpj_formatted => # "61.287.395/0001-40"
  def self.cnpj_formatted
    CnpjUtils.cnpj_formatted
  end

  # Gera um número de Cnpj formatado.
  #
  # Exemplo:
  # DocumentosBr.cnpj_formatado => # "61.287.395/0001-40"
  def self.cnpj_formatado
    self.cnpj_formatted
  end

  # Verifica se um Cnpj é válido.
  #
  # Exemplo:
  # DocumentosBr.valid_cnpj?(61287395000140) => # true
  # DocumentosBr.valid_cnpj?("61287395000140") => # true
  # DocumentosBr.valid_cnpj?("61.287.395/0001-40") => # true
  def self.valid_cnpj?(cnpj_number)
    cnpj_number.to_s.valid_cnpj?
  end

  # Verifica se um Cnpj é válido.
  #
  # Exemplo:
  # DocumentosBr.cnpj_valido?(61287395000140) => # true
  # DocumentosBr.cnpj_valido?("61287395000140") => # true
  # DocumentosBr.cnpj_valido?("61.287.395/0001-40") => # true
  def self.cnpj_valido?(cnpj_number)
    self.valid_cnpj?(cnpj_number)
  end

  # Gera um número de Título de Eleitor.
  #
  # Exemplo:
  # DocumentosBr.titulo_eleitor => # "023434561340"
  def self.titulo_eleitor
    TituloEleitorUtils.titulo_eleitor
  end

  # Gera um número de Título de Eleitor formatado.
  #
  # Exemplo:
  # DocumentosBr.titulo_eleitor_formatted => # "0234.3456.1340"
  def self.titulo_eleitor_formatted
    TituloEleitorUtils.titulo_eleitor_formatted
  end

  # Gera um número de Título de Eleitor formatado.
  #
  # Exemplo:
  # DocumentosBr.titulo_eleitor_formatado => # "0234.3456.1340"
  def self.titulo_eleitor_formatado
    self.titulo_eleitor_formatted
  end

  # Verifica se um Título de Eleitor é válido.
  #
  # Exemplo:
  # DocumentosBr.valid_titulo_eleitor?(023434561340) => # true
  # DocumentosBr.valid_titulo_eleitor?("023434561340") => # true
  # DocumentosBr.valid_titulo_eleitor?("0234.3456.1340") => # true
  def self.valid_titulo_eleitor?(titulo_eleitor_number)
    titulo_eleitor_number.valid_titulo_eleitor?
  end

  # Verifica se um Título de Eleitor é válido.
  #
  # Exemplo:
  # DocumentosBr.titulo_eleitor_valido?(023434561340) => # true
  # DocumentosBr.titulo_eleitor_valido?("023434561340") => # true
  # DocumentosBr.titulo_eleitor_valido?("0234.3456.1340") => # true
  def self.titulo_eleitor_valido?(titulo_eleitor_number)
    self.valid_titulo_eleitor?(titulo_eleitor_number)
  end

  # Para saber a qual unidade federativa o Título de Eleitor pertence:
  #
  # Exemplo:
  # DocumentosBr.titulo_eleitor_province("759026311727") => # "TO"
  def self.titulo_eleitor_province(titulo_eleitor_number)
    TituloEleitorUtils.titulo_eleitor_province(titulo_eleitor_number)
  end

  # Para saber a qual unidade federativa o Título de Eleitor pertence:
  #
  # Exemplo:
  # DocumentosBr.uf_do_titulo_eleitor("759026311727") => # "TO"
  def self.uf_do_titulo_eleitor(titulo_eleitor_number)
    self.titulo_eleitor_province(titulo_eleitor_number)
  end
end
