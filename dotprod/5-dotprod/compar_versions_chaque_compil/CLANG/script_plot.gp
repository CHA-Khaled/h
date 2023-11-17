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
plot "dotprod_clang-O0_plotdata.txt" using 2:xtic(1) title "MiB/s (clang-O0)" linecolor rgb "#00A5E3",\
"dotprod_clang-O1_plotdata.txt" using 2:xtic(1) title "MiB/s (clang-O1)" linecolor rgb "#d473d4",\
"dotprod_clang-O2_plotdata.txt" using 2:xtic(1) title "MiB/s (clang-O2)" linecolor rgb "#48e1ff",\
"dotprod_clang-O3_plotdata.txt" using 2:xtic(1) title "MiB/s (clang-O3)" linecolor rgb "#ff00ff",\
"dotprod_clang-Ofast_plotdata.txt" using 2:xtic(1) title "MiB/s (clang-Ofast)" linecolor rgb "#48ff96",\
"dotprod_clang-Os_plotdata.txt" using 2:xtic(1) title "MiB/s (clang-Os)" linecolor rgb "#606060",\
"dotprod_clang-Og_plotdata.txt" using 2:xtic(1) title "MiB/s (clang-Og)" linecolor rgb "#ffff00"
