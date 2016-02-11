cd /home/ubuntu/bodega-howe-ncbi
formatdb -i data/nifh-database-fastas/all-nifh.fa -o T -p F
for x in data/*fa; do blastall -i $x -d data/nifh-database-fastas/all-nifh.fa =o $x.x.nifhblastnout -p blastn -p blastn -a 4 -b 1 -e 1-5; done