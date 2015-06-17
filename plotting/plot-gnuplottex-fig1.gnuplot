set terminal epslatex
set output 'plot-gnuplottex-fig1.tex'

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

set xlabel 'Kompleksnost modela'
set ylabel 'Točnost klasifikacije (\%)'
set xrange [0:5]
set yrange [92:100]

set xtics ("cnn-5-10" 1, "cnn-10-20" 2, "cnn-15-30" 3, "cnn-20-40" 4, "" 5 )

plot   'data/cnn_complexity.dat' using 1:2 title 'Synth450' with linespoints, \
                      'data/cnn_complexity.dat' using 1:3 title 'Manual' with linespoints


