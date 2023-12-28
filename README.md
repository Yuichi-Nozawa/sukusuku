# アプリケーション名
 すくすく

# アプリケーション概要
子育てアプリ。日々の赤ちゃんの飲んだミルクの量、おむつ交換のタイミング、体温などを記録し、家族で共有できるアプリ。

# URL
https://sukusuku.onrender.com

# 利用方法
1, トップページの「新規登録」ボタンからユーザーを登録（登録済みの場合は「ログイン」ボタンからログイン）<br>
2, トップページの「新しい赤ちゃん」ボタンから記録の対象となる赤ちゃんを登録<br>
3, トップページから、記録する赤ちゃんを選択<br>
4, 新たに記録する場合は、「記録する」ボタンから記録内容を入力<br>
5, これまでの記録を見る場合は、「記録を見る」ボタンから記録を確認<br>

# アプリケーションを作成した背景
現在0歳の赤ちゃんの子育てをしており、飲んだミルクの量などのデータをすべてノートに記録している。しかしこれではいつ誰が何をしたのかが分かりづらく、常にノートとペンを持ち歩かなければならないという不便さもあった。そこでこのような課題を解決できればと思い、このアプリを作成した。

# 実装予定の機能
家族内のみで情報を共有できるようにしたいので、登録しているユーザーを家族ごとのグループに分け、他の家族の情報は見れないような仕組みにしていきたい。

# データベース設計
 [![Image from Gyazo](https://i.gyazo.com/851f964dc9f0fb84508c26c964be56e2.png)](https://gyazo.com/851f964dc9f0fb84508c26c964be56e2)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/1fe3c7b352b1717625905d0134cc18a7.png)](https://gyazo.com/1fe3c7b352b1717625905d0134cc18a7)

# 開発環境
・使用言語<br>
Ruby, HTML, CSS<br>
・インフラ<br>
render<br>
・テキストエディタ<br>
Visual Studio Code<br>
。タスク管理<br>
GitHub

# 工夫したポイント
ミルクの量を選択する欄では、実際の哺乳瓶のメモリに合わせて10ccごとの選択肢にした。
記録を表示する画面では、「いつ誰が何をしたのか」がひと目でわかるような表を作成した。

# 改善点
レスポンシブデザインを採用することで、より見やすい画面に改善できる。

# 制作時間
1週間
