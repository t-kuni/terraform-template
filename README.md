# terraform-template

terraformをサクッと導入するための自分用テンプレート

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
export AWS_PROFILE=xxx
terraform init
```

※AWSのprofileを指定する場合は先頭に `AWS_PROFILE=xxx` を付ける

5. `variables.tf`のプロジェクト名(`project_name`)を変更する  
（使わないなら削除しても良い）

## terraformのバージョンを最新化する

```
rm -rf .terraform
vi .terraform-version
terraform init
```