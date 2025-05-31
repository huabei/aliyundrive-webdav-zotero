FROM messense/aliyundrive-webdav:latest
ENV NO_SELF_UPGRADE 1

# 默认buffer为10MB，会导致Android客户端报错，所以改为1MB
CMD ["/usr/bin/aliyundrive-webdav", "--auto-index", "--workdir", "/etc/aliyundrive-webdav", "--read-buffer-size", "1048576"]
