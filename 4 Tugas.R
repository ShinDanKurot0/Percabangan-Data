
#1. Diberikan sebuah vektor numerik, cari mediannya 
dengan fungsi yang dibuat sendiri (bukan fungsi dari R).

x <- c(10, 3, 7, 2, 9, 90, 5)

amen=function(x){
  x=sort(x)
  n=length(x)
  
  if(n%%2==0){
    (x[n/2] + x[n/2+1]) / 2
  }else{
  x[(n+1)/2]
  }
}
amen(x)  
median(x)



#2.Diberikan sebuah vektor numerik dengan panjang 4, 
misalnya 3, 4, 5, 6. Hitung mean, lalu tambahkan nilai mean 
ke dalam vektor, dan hitung lagi mean-nya. 
Ulangi sampai panjang vektor = 10. Implementasikan dalam fungsi R.


x <- c(3, 4, 5, 6)

check=function(y){
  while(length(y) < 10){
    y=c(y, mean(y))
  }
  return(y)
}  

check(x)


#3.Diberikan sebuah vektor numerik, buat fungsi untuk 
menghitung jumlah bilangan genap di dalam vektor.



rock=function(x){
  total=0
  
  for(cek in x){
    if(cek %% 2 == 0){
      total=total+1
    }
  }
  return(total)
}


x <- c(3, 4, 7, 10, 12, 15)
rock(x)


#4.Buat fungsi yang menerima sebuah matriks numerik
lalu hitung jumlah semua elemen genap di dalam matriks.

m <- matrix(1:12, nrow = 3, ncol = 4)


dealer=function(meth){
  total=0
  
  for(cek in meth){
    if(cek %% 2 == 0){
      total=total+cek
    }
  }
  
  return(total)
}

dealer(m)
