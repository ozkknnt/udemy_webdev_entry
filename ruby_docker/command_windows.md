# Windowsで動作させる

docker build -t ozkknnt/ruby2.5:latest .

- ボリューム指定してrun

- ローカル側のパスは適宜
docker run -it -d -v /D/Udemy/UdemyWebDev/ruby_docker/ruby:/usr/src/ruby --name ruby2.5 ozkknnt/ruby2.5:latest

- docker hub にPush
docker commit ruby2.5 ozkknnt/ruby2.5:latest
