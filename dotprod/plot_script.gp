# Nom du fichier de sortie de l'histogramme
set terminal png
set output 'histogram.png'

# Titre du graphique
set title 'Histogramme comparant les versions par compilateurs'

# Utiliser le premier élément de chaque ligne comme étiquette de données
set xtic(1)
set xtics rotate by -70
set yrange [50:]
# Afficher l'histogramme
set style data histogram
set style histogram
set style fill solid border -1
set boxwidth 0.5
plot 'compar_par_compilateur_plotdata.txt' using 2:xtic(1) with boxes title 'MiB/s'
