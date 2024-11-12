
set terminal png size 800,600
set output 'que4_a.png'
set style data histogram
set style fill solid border -1
set boxwidth 0.5
set key outside box
set xlabel "Gender (0 = Female, 1 = Male)"
set ylabel "Number of People with Heart Disease"
set title "Histogram of Gender vs Number of People with Heart Disease"
set xrange [-0.5:1.5]  # Explicitly set x-axis range to include 0 and 1

plot "< awk -F',' '$8 == 1 {print $2}' data.dat | sort | uniq -c | awk '{print $2,$1}' " using 2:xtic(1) with boxes lc rgb "blue" title "people with heart disease"

