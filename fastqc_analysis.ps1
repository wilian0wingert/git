# Script para análise de qualidade de dados Illumina usando FastQC
# Este script executa o FastQC em todos os arquivos .fastq.gz no diretório atual

Write-Host "Iniciando análise de qualidade com FastQC..."

# Encontra arquivos .fastq.gz
$files = Get-ChildItem -Filter "*.fastq.gz"

if ($files.Count -gt 0) {
    foreach ($file in $files) {
        Write-Host "Processando $($file.Name)"
        & fastqc $file.FullName
    }
    Write-Host "Análise concluída. Verifique os arquivos .html e .zip gerados pelo FastQC."
} else {
    Write-Host "Nenhum arquivo .fastq.gz encontrado no diretório atual."
}