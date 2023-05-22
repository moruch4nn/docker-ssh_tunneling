# docker-ssh_tunneling
SSHトンネリングを使用してリモートポートをローカルへフォワーディングを行うDockerImageです。

# setup
volumes:
```yaml
volumes:
  - "./id_ed25519:/key"
```
env:
```yaml
enviroment:
  SSH_USER=root # SSH情報
  SSH_HOST=example.com # SSH情報
  SSH_PORT=22 # SSH情報

  REMOTE_PORT=25565 # リモートコンピューター上で公開するポート番号

  HOST=localhost # フォワーディングしたいポートのホスト
  PORT=25565 # フォワーディングしたいポート
```
