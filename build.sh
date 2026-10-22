#!/bin/sh
# app.html から index.html（ホーム画面に追加できる版）を作る
cd "$(dirname "$0")"
{
cat <<'H'
<!doctype html>
<html lang="ja"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<link rel="manifest" href="manifest.webmanifest">
<link rel="apple-touch-icon" href="icon-180.png">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta name="apple-mobile-web-app-title" content="給与帳">
<meta name="theme-color" content="#24467A">
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}img{max-width:100%}[hidden]{display:none!important}</style>
</head><body>
H
cat app.html
cat <<'T'
<script>if('serviceWorker' in navigator)navigator.serviceWorker.register('sw.js').catch(function(){});</script>
</body></html>
T
} > index.html
