gprclean -P harness_cov.gpr
gprbuild -P harness_cov.gpr
gnatcov run -P harness_cov.gpr --output=cov\%1.trace covexe\%1 > Test_Results.lis
type Test_Results.lis
gnatcov coverage -P harness_cov.gpr cov\%1.trace
start "" "cov\index.html"
