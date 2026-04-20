# Análise de Qualidade de Dados Illumina com FastQC

Este repositório contém scripts para realizar análise de qualidade de dados de sequenciamento Illumina usando a ferramenta FastQC.

## O que é FastQC?

FastQC é uma ferramenta de controle de qualidade para dados de sequenciamento de alto rendimento. Ela gera relatórios visuais e estatísticos sobre a qualidade das sequências, ajudando a identificar problemas comuns em dados Illumina, como:

- Qualidade por base (per-base quality)
- Distribuição de qualidade (quality score distribution)
- Comprimento das sequências
- Duplicação de sequências
- Contaminação por adaptadores
- Composição de bases (per-base sequence content)
- E muito mais

## Scripts Disponíveis

- `fastqc_analysis.sh`: Script Bash para executar FastQC em arquivos .fastq.gz (compatível com Linux/WSL).
- `fastqc_analysis.ps1`: Script PowerShell para executar FastQC em arquivos .fastq.gz (compatível com Windows).

## Como Usar

1. Certifique-se de que o FastQC está instalado e no PATH do sistema.
2. Coloque os arquivos de dados Illumina (.fastq.gz) no diretório raiz.
3. Execute o script apropriado:
   - No Linux/WSL: `bash fastqc_analysis.sh`
   - No Windows: `.\fastqc_analysis.ps1`
4. Os relatórios serão gerados como arquivos .html e .zip no mesmo diretório.

## Pré-requisitos

- FastQC instalado (disponível em https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- Java Runtime Environment (JRE) para executar FastQC

## Resultados

Após a execução, verifique os arquivos de saída:
- `.html`: Relatório visual acessível em um navegador web.
- `.zip`: Arquivo compactado com dados detalhados.

Isso ajuda a avaliar se os dados estão prontos para análises downstream, como alinhamento ou montagem de genomas.
