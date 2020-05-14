sudo docker build --build-arg MODE=prod --build-arg DOMAIN=wargame.is119.kr --build-arg EMAIL=koyo@koyo.kr --build-arg TYPE=certbot -t="koyokr/war119:fbctf" .
sudo docker run -d --name fbctf -p 80:80 -p 443:443 -v ~/is119/letsencrypt:/etc/letsencrypt koyokr/war119:fbctf
