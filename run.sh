{
    proxychains4 nextflow run $PWD \
        --max_cpus 28 \
        --max_memory 40GB \
        --designfile "$PWD/designfile.tsv" \
        --comparefile "$PWD/compare.txt" \
        --genome GRCh38 \
        --fasta /home/chenjun/dataBase/aws/references/Homo_sapiens/NCBI/GRCh38/Sequence/WholeGenomeFasta/genome.fa \
        --gtf /home/chenjun/dataBase/aws/references/Homo_sapiens/NCBI/GRCh38/Annotation/Genes/genes.gtf \
        --star_index /home/chenjun/dataBase/aws/references/Homo_sapiens/NCBI/GRCh38/Sequence/STARIndex/ \
        --skip_fastp --skip_fastqc --skip_rseqc \
        -profile docker -resume
        # -profile conda -resume
}
