#!/bin/bash
read -p "URLを入力" url
if [ -z "$url" ]; then
  echo "URLが入力されていません。再度実行してください。"
  exit
fi
read -p "同時接続のコネクション数を指定(デフォルト:5)" option_x
if [ -z "$option_x" ]; then
  option_x=5
fi
read -p "複数サーバへの並列接続時に指定するコネクション数を指定(デフォルト:5)" option_s
if [ -z "$option_s" ]; then
  option_s=5
fi
read -p "分散ダウンロード時のブロックサイズ(MB)を指定してください(デフォルト:20)" option_k
if [ -z "$option_k" ]; then
  option_k=20M
fi
echo "aria2c -x$option_x -s$option_s -k$option_k $url を実行"
aria2c -x$option_x -s$option_s -k$option_k $url

echo "処理が終了しました。"