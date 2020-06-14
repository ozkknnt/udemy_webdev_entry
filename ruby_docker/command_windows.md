# Windowsで動作させる

docker build -t ozkknnt/ruby2.5:latest .

- ボリューム指定してrun

- ローカル側のパスは適宜
docker run -it -d -v /D/Udemy/UdemyWebDev/ruby_docker/ruby:/usr/src/ruby -p 4000:4000 --name ruby2.5 ozkknnt/ruby2.5:latest

- docker hub にPush
docker commit ruby2.5 ozkknnt/ruby2.5:latest

# Rails の起動

- Docker Container上のサーバのlocalhostはホストマシンのlocalhostではない  
  参考は
  [QIITA記事：docker上のアプリにlocalhostでアクセスしたらERR_EMPTY_RESPONSEが出る](https://qiita.com/amuyikam/items/01a8c16e3ddbcc734a46)

- 上記で`docker run `は4000ポートで実行しているので  
  railsのserver起動コマンドは以下のようにする

  ```
  rails server -b 0.0.0.0 -p 4000
  ```