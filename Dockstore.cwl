baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: key_gene_coverage
inputs:
  bai:
    doc: ''
    inputBinding:
      position: 5
      prefix: --bai
    type: File
  bam:
    doc: ''
    inputBinding:
      position: 4
      prefix: --bam
    type: File
  bq:
    default: 20
    doc: ''
    inputBinding:
      position: 1
      prefix: --bq
    type: long
  cov:
    default: 20
    doc: ''
    inputBinding:
      position: 3
      prefix: --cov
    type: long
  gatk:
    doc: GATK jar file; see README for more details
    inputBinding:
      position: 7
      prefix: --gatk
    type: File
  gene_list:
    doc: 'The first four columns must be: chrom, start, stop, gene_name'
    inputBinding:
      position: 6
      prefix: --gene_list
    type: File
  mem:
    default: 16
    doc: Memory Required to run GATK
    inputBinding:
      position: 9
      prefix: --mem
    type: long
  mq:
    default: 20
    doc: ''
    inputBinding:
      position: 2
      prefix: --mq
    type: long
  ref:
    doc: ''
    inputBinding:
      position: 8
      prefix: --ref
    type: string
label: Coverage of Key Genes
outputs:
  coverage_metrics:
    doc: ''
    outputBinding:
      glob: coverage_metrics/*
    type: File
  coverage_plot:
    doc: ''
    outputBinding:
      glob: coverage_plot/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/key_gene_coverage:44
s:author:
  class: s:Person
  s:name: Rachel Goldfeder
