# Dockerized yt-dlp CLI

Simple Docker-container with yt-dlp inside, it has a self-updating logic.

## How to install

Clone repository:

```shell
git clone https://github.com/EvilFreelancer/yt-dlp-app.git
cd yt-dlp-app
```

Build and run:

```shell
docker copose build
docker copose up -d
```

Fix permissions of volume:

```shell
chown 1000:1000 ./yt-dlp_data/
```

## How to use

Just execute following command:

```shell
docker compose exec app yt-dlp https://www.youtube.com/watch?v=9bZkp7q19f0
```

File will be downloaded to `./yt-dlp_data/` folder.

## Links

* https://github.com/yt-dlp/yt-dlp
* https://github.com/Totonyus/ydl_api_ng
