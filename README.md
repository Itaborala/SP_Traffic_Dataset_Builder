# SP_Traffic_Dataset_Builder


[![DOI](https://zenodo.org/badge/411011461.svg)](https://zenodo.org/badge/latestdoi/411011461)


Scripts e Códigos-fonte utilizados descompactar, estruturar e anonimizar um dataset com dados de tráfego provenientes dos radares da Secretaria Municipal de Transportes de São Paulo no ano de 2018, disponibilizados pela mesma.

Este repositório é parte do material utilizado na tese de Doutorado de [Olímpio Mendes de Barros](https://orcid.org/0000-0002-0912-6502), no Departamento de Transportes (PTR) da Escola Politécnica da Universidade de São Paulo.

### Dependencias

Os scripts em python possuem as seguintes dependencias:

`pandas`:[https://pandas.pydata.org/](https://pandas.pydata.org/)

`numpy`:[https://numpy.org/](https://numpy.org/)

`onetimepad`: [https://pypi.org/project/onetimepad/](https://pypi.org/project/onetimepad/)

### Estrutura

Os Shell scripts que se encontram na pasta `scripts/` foram utilizados para descompactar os arquivos brutos disponibilizados pela SMT, em especial, o arquivo principal é o `process_month.sh`. Este script também roda o programa desenvolvido em `C` (`bin/append_to_csv`) para estruturar os arquivos descompactados como CSV.

Os Shell scripts presentes na pasta `Trafego_CSV/scripts/` foram utilizados para limpar, uniformizar, remover erros e checar os datasets criados. Por exemplo, deletar linhas vazias e garantir '`utf-8`' encoding, e checar se o `pandas` consegue ler os datasets sem erros.

Os notebooks na pasta raíz foram utilizados para indexar os tempos  de medição dos radares por minuto (`Rotulacao.ipynb`), e anonimização dos dados (`
Processa_Encripta.ipynb`)

### Notas
Os codigos Shell foram desenvolvidos para serem utilizados exclusivamente em sistemas Linux

###
Este repositório foi criado por [Paulo Vitor Itaboraí](https://orcid.org/0000-0002-4956-2958) em contribuição para a tese de Doutorado de Olímpio Mendes de Barros. O repositório está sob a licensa [BSD-3-Clause license](https://github.com/Itaborala/SP_Traffic_Dataset_Builder/blob/main/LICENSE)
