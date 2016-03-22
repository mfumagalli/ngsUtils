
DATA=../../ngsPopGen/examples
DATA_SIM=../../ngsSim/examples

# Clean-up
rm -f testA.*

# Merge genotype posterior probabilities files
../GetMergedGeno -infiles $DATA/testA.geno $DATA/testA.geno -nind 24 24 -nsites 10000 -outfile testA.geno -verbose 1 1>&2
# nsites must be one value, sites must correspond

# Select a subset of genotype posterior probabilities files
# Rscript -e 'cat(seq(1,10000,2),sep="\n",file="pos_file.txt")'
../GetSubGeno -infile $DATA/testA.geno -posfile pos_file.txt -nind 24 -nsites 10000 -len 5000 -outfile testA.sub.geno -verbose 1 1>&2

# Select a subset of of individuals and sites from simulated data files
# ../GetSubSim -infile $DATA_SIM/testA.glf.gz -nind 24 -nsites 10000 -outfile testA.sim.glf.gz -nind_new 10 -nsites_new 500 -check 0 -verbose 1 1>&2

# Switch major/minor or ancestral/derived in genotype posterior probabilities files
../GetSwitchedGeno -infile $DATA/testA.geno -posfile pos_file.txt -nind 24 -nsites 10000 -len 5000 -outfile testA.switched.geno -verbose 1 1>&2

echo -e 1>&2

# Test MD5 checksum
md5sum testA* | sort -k 2,2 > /tmp/test.md5

if diff /tmp/test.md5 test.md5 > /dev/null
then
    echo "ngsUtils: All tests OK!"
else
    echo "ngsUtils: test(s) failed!"
fi
