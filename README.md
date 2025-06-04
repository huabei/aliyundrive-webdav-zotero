# aliyundrive-webdav-zotero
应用aliyunpan到Zotero同步，轻量应用可以选择坚果云。

主要修改：
1. 修改--read-buffer-size选项为1M
2. 修改添加DNS为aliyun（223.5.5.5）


## Clone

```bash
git clone https://github.com/huabei/aliyundrive-webdav-zotero.git
cd aliyundrive-webdav-zotero
```


## Build
```bash
docker build . -f Dockerfile --tag huabei/aliyundrive-webdav-zotero:latest
```

## Run Container

```bash
docker compose up -d
```

## 获取 refresh token

* [通过在线工具获取 refresh token](https://messense-aliyundrive-webdav-backendrefresh-token-ucs0wn.streamlit.app/)
* 命令行运行 `aliyundrive-webdav qr login` 扫码授权后会输出 refresh token

![扫码获取 refresh token](./doc/refresh-token.png)

## 命令行用法

```bash
$ aliyundrive-webdav --help
WebDAV server for AliyunDrive

Usage: aliyundrive-webdav [OPTIONS]
       aliyundrive-webdav <COMMAND>

Commands:
  qr    Scan QRCode
  help  Print this message or the help of the given subcommand(s)

Options:
      --host <HOST>
          Listen host

          [env: HOST=]
          [default: 0.0.0.0]

  -p, --port <PORT>
          Listen port

          [env: PORT=]
          [default: 8080]

      --client-id <CLIENT_ID>
          Aliyun drive client_id

          [env: CLIENT_ID=]

      --client-secret <CLIENT_SECRET>
          Aliyun drive client_secret

          [env: CLIENT_SECRET=]

      --drive-type <DRIVE_TYPE>
          Aliyun drive type

          [env: DRIVE_TYPE=]

          Possible values:
          - resource: Resource drive
          - backup:   Backup drive
          - default:  Default drive

  -r, --refresh-token <REFRESH_TOKEN>
          Aliyun drive refresh token

          [env: REFRESH_TOKEN=]

  -U, --auth-user <AUTH_USER>
          WebDAV authentication username

          [env: WEBDAV_AUTH_USER=]

  -W, --auth-password <AUTH_PASSWORD>
          WebDAV authentication password

          [env: WEBDAV_AUTH_PASSWORD=]

  -I, --auto-index
          Automatically generate index.html

  -S, --read-buffer-size <READ_BUFFER_SIZE>
          Read/download buffer size in bytes, defaults to 10MB

          [default: 10485760]

      --upload-buffer-size <UPLOAD_BUFFER_SIZE>
          Upload buffer size in bytes, defaults to 16MB

          [default: 16777216]

      --cache-size <CACHE_SIZE>
          Directory entries cache size

          [default: 1000]

      --cache-ttl <CACHE_TTL>
          Directory entries cache expiration time in seconds

          [default: 600]

      --root <ROOT>
          Root directory path

          [env: WEBDAV_ROOT=]
          [default: /]

  -w, --workdir <WORKDIR>
          Working directory, refresh_token will be stored in there if specified

      --no-trash
          Delete file permanently instead of trashing it

      --read-only
          Enable read only mode

      --tls-cert <TLS_CERT>
          TLS certificate file path

          [env: TLS_CERT=]

      --tls-key <TLS_KEY>
          TLS private key file path

          [env: TLS_KEY=]

      --strip-prefix <STRIP_PREFIX>
          Prefix to be stripped off when handling request

          [env: WEBDAV_STRIP_PREFIX=]

      --debug
          Enable debug log

      --no-self-upgrade
          Disable self auto upgrade

      --skip-upload-same-size
          Skip uploading same size file

      --prefer-http-download
          Prefer downloading using HTTP protocol

      --redirect
          Enable 302 redirect when possible

  -h, --help
          Print help (see a summary with '-h')

  -V, --version
          Print version
```
