#!/bin/bash

# Script para análise de qualidade de dados Illumina usando FastQC
# Este script executa o FastQC em todos os arquivos .fastq.gz no diretório atual

echo "Iniciando análise de qualidade com FastQC..."

# Verifica se há arquivos .fastq.gz no diretório
if ls *.fastq.gz 1> /dev/null 2>&1; then
    for file in *.fastq.gz; do
        echo "Processando $file"
        fastqc "$file"
    done
    echo "Análise concluída. Verifique os arquivos .html e .zip gerados pelo FastQC."
else
    echo "Nenhum arquivo .fastq.gz encontrado no diretório atual."
fi