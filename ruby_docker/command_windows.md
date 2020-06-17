# Windowsで動作させる

docker build -t ozkknnt/ruby2.5:latest .

- ボリューム指定してrun

- ローカル側のパスは適宜
docker run -it -d -v /D/Udemy/UdemyWebDev/ruby_docker/ruby:/usr/src/ruby -v cache:/cache -e SPROCKETS_CACHE=/cache -p 4000:4000 --name ruby2.5 ozkknnt/ruby2.5:latest


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

- cacheがWindowsだと正常に保存できない
　[記事](https://crieit.net/posts/Windows-Docker-Rails-sprockets)
  config/initializers/assets.rb 内に

  ```
  Rails.application.config.assets.configure do |env|
  env.cache = Sprockets::Cache::FileStore.new(
    ENV.fetch("SPROCKETS_CACHE", "#{env.root}/tmp/cache/assets"),
    Rails.application.config.assets.cache_limit,
    env.logger
  )
  end
  ```

  docker-compose.ymlを作成
  ```
  web:
    environment:
      - SPROCKETS_CACHE=/cache
    volumes:
      - /D/Udemy/UdemyWebDev/ruby_docker/ruby:/usr/src/ruby
      - cache:/cache

  volumes:
    cache:
  ```