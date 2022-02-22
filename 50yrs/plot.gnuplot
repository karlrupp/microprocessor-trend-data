

set terminal postscript eps color enhanced #font 'CourierBold,14'
set output "50-years-processor-trend.eps"

set rmargin at screen 0.64

set style line 1 lt 1 ps 1 pt 13 lc rgb "#000000"
set style line 2 lt 1 ps 1 pt 5  lc rgb "#008800"
set style line 3 lt 1 ps 1 pt 7  lc rgb "#0000BB"
set style line 4 lt 1 ps 1 pt 9  lc rgb "#CC6600"
set style line 5 lt 1 ps 1 pt 11 lc rgb "#BB0000"


set size 0.8
set size ratio 0.63

set border lw 1.5

set xlabel "Year"

set grid
unset key
set logscale y
set format y "10^{%T}"

set xrange [1970:2022.5]
set yrange [0.2:7e7]
unset mytics

set label "Number of"     at 2023,2e1 tc ls 1
set label "Logical Cores" at 2023,6.6e0 tc ls 1

set label "Frequency (MHz)"    at 2023,3e3 tc ls 2

set label "Single-Thread"      at 2023,1.5e5 tc ls 3
set label "Performance"        at 2023,5e4 tc ls 3
set label "(SpecINT x 10^{3})" at 2023,1.9e4 tc ls 3

set label "Transistors"   at 2023,6e6 tc ls 4
set label "(thousands)"   at 2023,2e6 tc ls 4

set label "Typical Power" at 2023,3e2 tc ls 5
set label "(Watts)"       at 2023,1e2 tc ls 5

set title "50 Years of Microprocessor Trend Data"

set label "Original data up to the year 2010 collected and plotted by M. Horowitz, F. Labonte, O. Shacham, K. Olukotun, L. Hammond, and C. Batten" at 1970,6e-3 tc ls 1 font ",8"
set label "New plot and data collected for 2010-2021 by K. Rupp" at 1970,3e-3 tc ls 1 font ",8"

plot \
 "cores.dat"        using 1:2 ls 1 with points, \
 "frequency.dat"    using 1:2 ls 2 with points, \
 "specint.dat"      using 1:2 ls 3 with points, \
 "transistors.dat"  using 1:2 ls 4 with points, \
 "watts.dat"        using 1:2 ls 5 with points
