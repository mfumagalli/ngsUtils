
# Some utilities to quickly manipulate files generated by ANGSD.

## Merge genotype posterior probabilities files

%    ../GetMergedGeno -infiles testA.geno testB.geno -nind 24 24 -nsites 10000 -outfile testA.geno -verbose 0      

Please note -nsites must be a unique value, and thus sites must correspond between files.

## Select a subset of sites of genotype posterior probabilities files

First generate a file of indexes for sites to keep (already provided in the folder):

%     # Rscript -e 'cat(seq(1,10000,2),sep="\n",file="pos_file.txt")'       

%     ../GetSubGeno -infile testA.geno -posfile pos_file.txt -nind 24 -nsites 10000 -len 5000 -outfile testA.sub.geno -verbose 0      

-nsites refers to the original file, while -len is the number of sites to keep.

## Select a subset of sites of sample allele frequency posterior probabilities files

%      ../GetSubSfs -infile testA.rf.saf -posfile pos_file.txt -nind 24 -nsites 10000 -len 5000 -outfile testA.rf.sub.saf -isfold 0 -verbose 0       


## Select a subset of of individuals and sites from simulated data files

%      ../GetSubSim -infile testA.glf.gz -nind 24 -nsites 10000 -outfile testA.sim.glf.gz -nind_new 10 -nsites_new 500 -check 0       


## Switch major/minor or ancestral/derived in genotype posterior probabilities files

%      ../GetSwitchedGeno -infile testA.geno -posfile pos_file.txt -nind 24 -nsites 10000 -len 5000 -outfile testA.switched.geno -verbose 0       


## Switch major/minor or ancestral/derived in sample allele frequency posterior probabilities files

%     ../GetSwitchedSfs -infile testA.rf.saf -posfile pos_file.txt -nind 24 -nsites 10000 -len 5000 -outfile testA.rf.switched.saf -isfold 0 -verbose 0      

