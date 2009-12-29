#unweight.plt
#generates a gnuplot

set size .7, .7
set terminal latex
set xlabel "Total Degree"
set ylabel "Cover Size"
unset key
set xtics 10
set output "unweight.tex"
plot "unweighted-deg.dat" using 4:2:xticlabels(1) with points 11, "unweighted-deg.dat" using 4:3 with points 3
set output
set term pop
!lp unweight.tex
