# 確認事項

# 設定方法
.devcontainer/.env localのuserIDとgroupIDをセットする。コンテナ内ではこれらのIDを用いて環境が設定される

## precommitの設定方法
1. hooks の更新
```bash
pre-commit update
```
2. pre-commitの設定
```bash
pre-commit install
```
3. pre-commitのcommit-msgの設定
```bash
pre-commit install --hook-type commit-msg
```
