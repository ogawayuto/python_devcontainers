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

### Dockerビルド後に実行するコマンド
.devcontainer/onCreate コンテナビルド後に実行するコマンドを追加する(例: aptでのインストール等)

### postAttachCommandの設定
.devcontainer/devcontainer.jsonのpostAttachCommandにコンテナ起動後に実行したいコマンドを追加する
デフォルトではpostAttach.shが実行されるため、postAttach.shに追加したいコマンドを追加する

### spellcheckの設定
.vscode/settings.jsonにspellcheckの設定を追加する

## Python
## lefthookの設定
lefthook.ymlにcommit時等に実行したいコマンドを追加する
以下のコマンドでインストールする
```bash
lefthook install
```

### project nameの変更
python_project/ のディレクトリを変更する
pyproject.tomlのnameを変更する

### ruffの設定
ruff.tomlに無視するファイルやルールなどの設定を追加する

