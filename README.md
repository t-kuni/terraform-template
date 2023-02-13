# terraform-template

terraformをサクッと導入するための自分用スケルトン

## 導入方法

1. AWSのtfstateをバックアップするためのバケットを用意する  
※暗号化、バージョニングを有効化するのがオススメ

2. `main.tf`のbucketを手順②で用意したバケットに書き換える

3. 変数ファイルをコピーする（必要な場合のみ）

```
cp terraform.tfvars.example terraform.tfvars
```

4. terraformを初期化する

```
terraform init
```

5. `variables.tf`のプロジェクト名(`project_name`)を変更する  
（使わないなら削除しても良い）

