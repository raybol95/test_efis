### RUNNING PROGRAM ##
Use python environment to run this program
Install all the library needed in requirements.txt
after that is all fulfilled, just run job_executor.sh ---->  <./ job_executor.sh>
make sure that the path of main.py file in sh file is the same to the path that you upload for the file.

#### Asumsi saat cleansing data #####
Saya buat asumsi terkait berat ikan pada file json tersebut :

asumsi jika panjang list ikan tidak sama dengan panjang list berat
maka diambil value index pertama list berat untuk value ikan yang lainnya
jadi jika di data awal mengatakan itu rata-rata dan hanya mencantumkan satu buah angka
tetap akan terpenuhi dengan eror yang kecil, karena jika disamakan dengan value awal berat misal kan 5
dan terdapat panjang list ikan sebanyak 5, dan list berat yg awalnya 5 menjadi [5,5,5,5,5]
dan jika angka list tersebut di rata - ratakan, maka akan tetap menghasilkan satu angka 5