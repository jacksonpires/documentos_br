# DocumentosBr
[![Build Status](https://travis-ci.org/jacksonpires/documentos_br.svg?branch=master)](https://travis-ci.org/jacksonpires/documentos_br)

DocumentosBr é um 'wrapper' para a suíte de funcionalidades das Gems 'CpfUtils', 'CnpjUtils' e 'TituloEleitorUtils'.
O DocumentosBr é capaz de gerar CPF, CNPJ e Título de Eleitor para testes no formado tradicional ou apenas numérico, testa se determinado número de CPF, CNPJ ou Título de Eleitor é válido, gera dígitos verificadores para determinado número candidato a CPF, CNPJ ou Título de Eleitor, dentre outras coisas.

*PS: Devido à inconsistência entre as formatações/máscaras usadas para o Título de Eleitor em todo território nacional, optamos por usar uma formatação/máscara próxima à que Justiça Eleitoral usa nos comprovantes de votação. Nossa formatação/máscara será ####.####.####, visto que o título eleitoral é formado por 12 dígitos.*

## Instalação

Adicione essa linha na Gemfile da sua aplicação:

    gem 'documentos_br'

E então execute:

    $ bundle

Ou instale você mesmo, conforme abaixo:

    $ gem install documentos_br

## Uso

O DocumentosBr é muito fácil de usar. Veja os exemplos abaixo:

###### CPF

    # Para gerar um número de CPF:
    DocumentosBr.cpf => # "45698394823"

    # Para gerar um CPF formatado:
    DocumentosBr.cpf_formatted => # "456.983.948-23"

    # Para verificar se um CPF é válido:
    DocumentosBr.valid_cpf?("47238051923") => # true
    DocumentosBr.valid_cpf?(47238051923) => # true
    DocumentosBr.valid_cpf?("472.380.519-23") => # true

    # Outra forma de verificar se um CPF é válido:
    "45698394823".valid_cpf? => # true
    "456.983.948-23".valid_cpf? => # true

    # Para verificar se uma máscara de CPF é válida:
    "456.983.948-23".valid_cpf_mask? => # true
    "456.983..948-23".valid_cpf_mask? => # false

    # Para formatar um número válido de CPF:
    "45698394823".to_cpf_format => # "456.983.948-23"

    # Para gerar um número de CPF a partir de um número candidato de 9 dígitos:
    "456983948".generate_cpf => # "45698394823"

    # Para gerar um número de CPF formatado a partir de um número candidato de 9 dígitos:
    "456983948".generate_cpf_formatted => # "456.983.948-23"

###### CNPJ

    # Para gerar um número de CNPJ:
    DocumentosBr.cnpj => # "61287395000140"

    # Para gerar um CNPJ formatado:
    DocumentosBr.cnpj_formatted => # "61.287.395/0001-40"

    # Para verificar se um CNPJ é válido:
    DocumentosBr.valid_cnpj?("61287395000140") => # true
    DocumentosBr.valid_cnpj?(61287395000140) => # true
    DocumentosBr.valid_cnpj?("61.287.395/0001-40") => # true

    # Outra forma de verificar se um CNPJ é válido:
    "61287395000140".valid_cnpj? => # true
    "61.287.395/0001-40".valid_cnpj? => # true

    # Para verificar se uma máscara de CNPJ é válida:
    "61.287.395/0001-40".valid_cnpj_mask? => # true
    "61.287..395/0001-40".valid_cnpj_mask? => # false

    # Para formatar um número válido de CNPJ:
    "61287395000140".to_cnpj_format => # "61.287.395/0001-40"

    # Para gerar um número de CNPJ a partir de um número candidato de 12 dígitos:
    "612873950001".generate_cnpj => # "61287395000140"

    # Para gerar um número de CNPJ formatado a partir de um número candidato de 12 dígitos:
    "612873950001".generate_cnpj_formatted => # "61.287.395/0001-40"

###### Título de Eleitor

    # Para gerar um número de Título de Eleitor:
    DocumentosBr.titulo_eleitor => # "023434561340"

    # Para gerar um Título de Eleitor formatado:
    DocumentosBr.titulo_eleitor_formatted => # "0234.3456.1340"

    # Para verificar se um Título de Eleitor é válido:
    DocumentosBr.valid_titulo_eleitor?("023434561340") => # true
    DocumentosBr.valid_titulo_eleitor?(023434561340) => # true
    DocumentosBr.valid_titulo_eleitor?("0234.3456.1340") => # true

    # Outra forma de verificar se um Título de Eleitor é válido:
    "023434561340".valid_titulo_eleitor? => # true
    "0234.3456.1340".valid_titulo_eleitor? => # true

    # Para verificar se uma máscara de Título de Eleitor é válida:
    "0234.3456.1340".valid_titulo_eleitor_mask? => # true
    "0234.3456..1340".valid_titulo_eleitor_mask? => # false

    # Para formatar um número válido de Título de Eleitor:
    "023434561340".to_titulo_eleitor_format => # "0234.3456.1340"

    # Para gerar um número de Título de Eleitor a partir de um número candidato de 10 dígitos:
    "612873950001".generate_titulo_eleitor => # "023434561340"

    # Para gerar um número de Título de Eleitor formatado a partir de um número candidato de 10 dígitos:
    "612873950001".generate_titulo_eleitor_formatted => # "0234.3456.1340"

    # Para saber a qual unidade federativa o Título de Eleitor pertence:
    DocumentosBr.titulo_eleitor_province("759026311727") => # "TO"
    "759026311727".titulo_eleitor_province => # "TO"

Também é possível usar métodos em português:

###### CPF - Em português

    # Para gerar um número de CPF:
    DocumentosBr.cpf => # "45698394823"

    # Para gerar um CPF formatado:
    DocumentosBr.cpf_formatado => # "456.983.948-23"

    # Para verificar se um CPF é válido:
    DocumentosBr.cpf_valido?("47238051923") => # true
    DocumentosBr.cpf_valido?(47238051923) => # true
    DocumentosBr.cpf_valido?("472.380.519-23") => # true

    # Outra forma de verificar se um CPF é válido:
    "45698394823".cpf_valido? => # true
    "456.983.948-23".cpf_valido? => # true

    # Para verificar se uma máscara de CPF é válida:
    "456.983.948-23".mascara_de_cpf_valida? => # true
    "456.983..948-23".mascara_de_cpf_valida? => # false

    # Para formatar um número válido de CPF:
    "45698394823".para_formato_cpf => # "456.983.948-23"

    # Para gerar um número de CPF a partir de um número candidato de 9 dígitos:
    "456983948".gerar_cpf => # "45698394823"

    # Para gerar um número de CPF formatado a partir de um número candidato de 9 dígitos:
    "456983948".gerar_cpf_formatado => # "456.983.948-23"

###### CNPJ - Em português

    # Para gerar um número de CNPJ:
    DocumentosBr.cnpj => # "61287395000140"

    # Para gerar um CNPJ formatado:
    DocumentosBr.cnpj_formatado => # "61.287.395/0001-40"

    # Para verificar se um CNPJ é válido:
    DocumentosBr.cnpj_valido?("61287395000140") => # true
    DocumentosBr.cnpj_valido?(61287395000140) => # true
    DocumentosBr.cnpj_valido?("61.287.395/0001-40") => # true

    # Outra forma de verificar se um CNPJ é válido:
    "61287395000140".cnpj_valido? => # true
    "61.287.395/0001-40".cnpj_valido? => # true

    # Para verificar se uma máscara de CNPJ é válida:
    "61.287.395/0001-40".mascara_de_cnpj_valida? => # true
    "61.287..395/0001-40".mascara_de_cnpj_valida? => # false

    # Para formatar um número válido de CNPJ:
    "61287395000140".para_formato_cnpj => # "61.287.395/0001-40"

    # Para gerar um número de CNPJ a partir de um número candidato de 12 dígitos:
    "612873950001".gerar_cnpj => # "61287395000140"

    # Para gerar um número de CNPJ formatado a partir de um número candidato de 12 dígitos:
    "612873950001".gerar_cnpj_formatado => # "61.287.395/0001-40"

###### Título de Eleitor - Em português

    # Para gerar um número de Título de Eleitor:
    DocumentosBr.titulo_eleitor => # "023434561340"

    # Para gerar um Título de Eleitor formatado:
    DocumentosBr.titulo_eleitor_formatado => # "0234.3456.1340"

    # Para verificar se um Título de Eleitor é válido:
    DocumentosBr.titulo_eleitor_valido?("023434561340") => # true
    DocumentosBr.titulo_eleitor_valido?(023434561340) => # true
    DocumentosBr.titulo_eleitor_valido?("0234.3456.1340") => # true

    # Outra forma de verificar se um Título de Eleitor é válido:
    "023434561340".titulo_eleitor_valido? => # true
    "0234.3456.1340".titulo_eleitor_valido? => # true

    # Para verificar se uma máscara de Título de Eleitor é válida:
    "0234.3456.1340".mascara_de_titulo_eleitor_valida? => # true
    "0234.3456..1340".mascara_de_titulo_eleitor_valida? => # false

    # Para formatar um número válido de Título de Eleitor:
    "023434561340".para_formato_titulo_eleitor => # "0234.3456.1340"

    # Para gerar um número de Título de Eleitor a partir de um número candidato de 10 dígitos:
    "612873950001".gerar_titulo_eleitor => # "023434561340"

    # Para gerar um número de Título de Eleitor formatado a partir de um número candidato de 10 dígitos:
    "612873950001".gerar_titulo_eleitor_formatado => # "0234.3456.1340"

    # Para saber a qual unidade federativa o Título de Eleitor pertence:
    DocumentosBr.uf_do_titulo_eleitor("759026311727") => # "TO"
    "759026311727".uf_do_titulo_eleitor => # "TO"

## Recomende

Gostou dessa gem? Recomende-me no [Working With Rails](http://www.workingwithrails.com/people/148426)!

## Contribuindo

1. Faça um Fork
2. Crie um branch para a nova funcionalidade (`git checkout -b minha-nova-funcionalidade`)
3. Faça o commit de suas alterações  (`git commit -am 'Adicionada nova funcionalidade'`)
4. Faça um push da sua nova funconalidade (`git push origin minha-nova-funcionalidade`)
5. Submeta uma nova Pull Request
