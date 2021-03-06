set terminal epslatex
set output 'cnn_compelxity-gnuplottex-fig1.tex'

# define axis
# remove border on top and right and set color to gray
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11

# define grid
set style line 12 lc rgb'#808080' lt 0 lw 1
set grid back ls 12

# color definitions
set style line 1 lc rgb '#8b1a0e' pt 1 ps 1.5 lt 1 lw 5 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 1.5 lt 1 lw 5 # --- green

set key bottom right

set xlabel 'Broj mapa značajki u prvom i drugom sloju'
set ylabel 'Točnost klasifikacije (\%)'
set xrange [0:8]
set yrange [92:100]

set xtics ("5-10" 1, "8-15" 2, "10-20" 3, "13-25" 4, "15-30" 5, "18-35" 6, "20-40" 7, "" 8 )

plot   'cnn_complexity.dat' using 1:2 title 'Synth450' with linespoints, \
                      'cnn_complexity.dat' using 1:3 title 'Manual' with linespoints


