## ポートフォリオ概要
- 倉庫口コミ集
    - 倉庫の口コミを読むことができます。ログインすると倉庫情報の投稿、コメントを書くことができます。前職が物流業界で、倉庫各社とやりとりする機会が多かったのですが、倉庫の口コミのようなアプリがあれば倉庫の情報がわかり、倉庫に行く運転手が口コミアプリを使って事前に倉庫情報がわかれば良いなと思い開発しました。

[倉庫口コミ集](https://gyazo.com/8d8850cc6e06f6d42bf5cca9ebb6c609)

## URL
http://54.168.214.195

## テストアカウント
- Login user ID
    - 1004user@gmail.com
- password
    - 631004
- Nickname
    - user

## 開発環境
- Rails 5.2.4.1
- ruby 2.3.1
- HTML, CSS, Ruby, Ruby on Rails, MySQL, GitHub, AWS

## 開発期間
約3週間

## 1日あたりの平均作業時間
約8〜10時間/日

## 動作確認方法
- Chromeの最新版を利用してアクセスしてください
    - ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください
- 接続先およびログイン情報については、上記の通りです。
- 確認後、ログアウト処理をお願いします

## 実装機能
- ユーザー管理機能(ユーザー登録/ログイン/ログアウト)
- ユーザー編集機能(メールアドレス変更/パスワード変更)
- 倉庫情報投稿機能(新規作成/編集/削除)
- 倉庫情報検索機能
- コメント機能(ajaxによる新規投稿/削除)
- ページネーション機能(投稿一覧ページ/ユーザーマイページ)
- インフラ(AWS EC2)
- WEBサーバー(Nginx)
- Applicationサーバー(Unicorn)
- データベース(Mysql)
- デプロイ自動化(Capistrano)

## 工夫した点
コードが冗長にならずかつ処理スピードが早くなるようにリファクタリングしました。例えば、部分テンプレートを呼び出す際はlocalsは使わずにcollectionを使い処理スピードを早くしました。

## 苦労した点
コメント削除機能の実装方法を調べるためにあらゆるサイトを検索しましたが、実装方法が書いてあるサイトがなかなか
見つからず調べるのに丸1日かかってしまったことです。そこでただやみくもに検索するだけでなく、例えば英語で検索、マイナス検索、1次ソースを積極的に検索するようにしました。エンジニアには検索力も必要だと身をもって実感しました。

## 今後実装したい機能
- インクリメンタルサーチ
- フラッシュメッセージ

## 著者
[hirokihanabusa](https://github.com/hirokihanabusa)