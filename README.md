# terraform-skeleton

terraformをサクッと導入するための自分用スケルトン

## 導入方法

①以下のコマンドでダウンロードする

```
git clone --depth 1 https://github.com/t-kuni/terraform-skeleton.git [FOLDER_NAME]
cd [FOLDER_NAME]
rm -rf .git
```

②AWSのtfstateをバックアップするためのバケットを用意する  
※暗号化、バージョニングを有効化するのがオススメ

③`main.tf`のbucketを手順②で用意したバケットに書き換える

④変数ファイルをコピーする（必要な場合のみ）

```
cp terraform.tfvars.example terraform.tfvars
```

⑤terraformを初期化する

```
terraform init
```

⑥`variables.tf`のプロジェクト名(`project_name`)を変更する  
（使わないなら削除しても良い）

