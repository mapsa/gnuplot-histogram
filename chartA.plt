fontsize=12
set term postscript enhanced eps fontsize
set terminal pngcairo size 500,402 enhanced font 'Verdana,12'
set output 'figureA.eps'
set boxwidth 0.9
set style fill solid 1.00 border 0
set style histogram errorbars gap 1 lw 1
set style data histograms
set xtics rotate by -45
set bars 0.5
set tic scale 0
set title "T14 -1 hours"
set yrange [ 0 : 250 ]
set datafile separator ","
set ylabel "Relative gene expression (%)"
#set label '*' at 0.5,200 center
#set label '*' at 1,150 center

#plot 'dataA.dat' using 2:3:xtic(1) ti "NPY" linecolor rgb "#555555", \
#        '' using 4:5 ti "CCK" lt 1 lc rgb "#FFFFFF", \
#        '' using 6:7 ti "LEP" lt 1 lc rgb "#A4A4A4"


#set multiplot
plot 'dataA.dat' u 3:4:xtic(1) ti "NPY" linecolor rgb "#555555", \
'' using 6:7 ti "CCK" lt 1 lc rgb "#FFFFFF", \
'' using 9:10 ti "LEP" lt 1 lc rgb "#A4A4A4", \
'' u (($2)-1.25):(($3)):5 ti ''  with labels font "arial,12" , \
'' u (($2)-1):(($6)):8 ti ''  with labels font "arial,12" , \
'' u (($2)-0.75):(($9)):11 ti ''  with labels font "arial,12"

# 'dataA.dat' u 0:(($5)+40):7 ti ''  with labels font "arial,20"
