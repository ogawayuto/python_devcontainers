# 確認事項

# 設定方法

## 共通

### userIDとgroupIDの設定
.devcontainer/.env localのuserIDとgroupIDをセットする。コンテナ内ではこれらのIDを用いて環境が設定される

### devcontainerの設定
.devcontainer/devcontainer.jsonの設定を変更する
featuresにインストールしておきたいソフトウェアを追加する
vscodeの拡張機能を追加する
vscodeの設定を追加する

### postAttachCommandの設定
.devcontainer/devcontainer.jsonのpostAttachCommandにコンテナ起動後に実行したいコマンドを追加する
デフォルトではpostAttach.shが実行されるため、postAttach.shに追加したいコマンドを追加する

### spellcheckの設定
.vscode/settings.jsonにspellcheckの設定を追加する

## Python
### precommitの設定方法
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

### project nameの変更
python_project/ のディレクトリを変更する
pyproject.tomlのnameを変更する

### ruffの設定
ruff.tomlに無視するファイルやルールなどの設定を追加する

