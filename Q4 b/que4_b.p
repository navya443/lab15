set terminal png
set output 'que4_b.png'  
set xlabel "Age"  
set datafile separator ','
set ylabel "Blood Pressure"  
set title "Age vs Blood Pressure"  
plot "data_b.dat" using 1:4 with points title "Age vs BP"
