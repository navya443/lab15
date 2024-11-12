set datafile separator "," 
set terminal png
set output 'ques4_c.png'
set xlabel "Age"
set ylabel "Cholesterol"
set title "Age vs Cholesterol who dont have Heart Disease)"

plot "que4_c.csv" using 1:2 with linespoints title "Age vs Cholesterol"
