set term pngcairo size 2000,2000
set output "histogram.png"
set title "Versions performances with CLANG and multiple flags"
set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.5
set xtic scale 0
set yrange [0:*]
set ylabel "mib/s"
plot "dotprod_gcc-O3_plotdata.txt" using 2:xtic(1) title "MiB/s (GCC-O3)" linecolor rgb "#00A5E3",\
"dotprod_clang-O3_plotdata.txt" using 2:xtic(1) title "MiB/s (CLANG-O3)" linecolor rgb "#d473d4"
