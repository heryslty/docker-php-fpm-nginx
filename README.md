# README
Contoh Dockerfile untuk container yang berisikan **PHP-FPM** dan **NGINX**
***
### HOW TO USE
* masuk kedalam file hasil clone, dan jalankan build docker image
```
$docker image build -t user/php-fpm-nginx:version .
```
* buat container dari docker image yang telah terbentuk
```
$docker container run -d -p 8800:80 --name nama user/php-fpm-nginx:version
```
* test hasil instalasi dengan
```
$curl localhost:8800
```
***
**NB:**
* Untuk mengganti aplikasi PHP anda dapat dimasukkan kedalam folder **sosial-media**
* gunakan command berikut untuk push image ini dari docker hub
```
docker pull heryslty/php-fpm-nginx:v1.1
```
