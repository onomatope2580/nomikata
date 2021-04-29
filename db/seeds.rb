Game.create(title: "古今東西ゲーム", rule: "制限時間は1人10秒です。\n出されたお題に関連した単語を1人ずつ言っていきます。
            \n前に出た単語と同じ単語を言ったり、同じ意味やカテゴリーのことを言ってはいけません。
            \n例：「飲み物」というお題で,前に「お酒」というワードが出ていた場合
            \n「アルコール」（同じ意味）、「ビール」（同じカテゴリー）といった単語は言えません。
            \n制限時間以内に答えられなかった人が罰ゲームとなります。",
            explanation: "任意で順番を決めましょう。
            \n1人がお題を確認して全員に共有し、ゲームスタートです。
            \n順番に答えていき、答える人の前の順番の人が制限時間を声に出して数えましょう。")
Game.create(title: "条件付きしりとり", rule: "制限時間は1人10秒です。
            \n出された条件を満たす言葉しか使えません。それ以外は普通のしりとりです。
            \n制限時間以内に答えられなかった人が罰ゲームとなります。",
            explanation: "任意で順番を決めましょう。
            \n1人が条件と始まりの言葉を確認して全員に共有し、ゲームスタートです。
            \n順番に答えていき、答える人の前の順番の人が制限時間を声に出して数えましょう。")
Game.create(title: "イエスノーゲーム", rule: "親を1人決め、親だけお題を確認します。
            \n子は順番に1回ずつ、親に対してイエスかノーで答えられる質問をします。
            \n親はその質問に正直に答えます。わからないことは「わからない」と答えます。
            \n全ての質問内容と親の回答をもとに、子はお題を推理してください。
            \nそれぞれの子には、自分の番で質問をした後に一度ずつお題の答えを回答する権利があります。
            \n回答は、誰にも見られないように親に伝えてください。
            \n一番回答が遅かった子が罰ゲームです。",
            explanation: "任意で親と子、そして子の順番を決めましょう。
            \n親がお題を確認して、ゲームスタートです。
            \n子は質問するとき、他の子に内容が聞こえるように質問しましょう。
            \n親も回答するときは、全員に聞こえるように回答してください。
            \n親は正解者がでたとき、「〜さん正解！」と全員がわかるように宣言してください。")

Theme.create(themes: '青い髪のアニメキャラ', game_id: 1)
Theme.create(themes: '赤い髪のアニメキャラ', game_id: '1')
Theme.create(themes: 'メガネのアニメキャラ', game_id: '1')
Theme.create(themes: '女優の名前', game_id: '1')
Theme.create(themes: '男性俳優の名前', game_id: '1')
Theme.create(themes: 'お笑い芸人の名前', game_id: '1')
Theme.create(themes: 'ビールの名前', game_id: '1')
Theme.create(themes: '缶酎ハイの名前', game_id: '1')
Theme.create(themes: '日本酒の名前', game_id: '1')
Theme.create(themes: '焼酎の名前', game_id: '1')
Theme.create(themes: '本や雑誌のタイトル', game_id: '1')
Theme.create(themes: 'ゲームのタイトル', game_id: '1')
Theme.create(themes: '調味料の名前', game_id: '1')
Theme.create(themes: '魚の名前', game_id: '1')
Theme.create(themes: 'この中で、一番誕生日が早い人の良いところ', game_id: '1')
Theme.create(themes: '男性のみのアーティストバンド名または活動名', game_id: '1')
Theme.create(themes: '女性のみのアーティストのバンド名または活動名', game_id: '1')
Theme.create(themes: 'サッカー選手の名前', game_id: '1')
Theme.create(themes: '素数', game_id: '1')
Theme.create(themes: '企業の名前', game_id: '1')
Theme.create(themes: '戦国武将の名前', game_id: '1')
Theme.create(themes: '山の名前', game_id: '1')
Theme.create(themes: '歌詞のない曲の名前', game_id: '1')
Theme.create(themes: '鳥の名前', game_id: '1')
Theme.create(themes: 'カップ麺の名前', game_id: '1')
Theme.create(themes: 'アイスの名前', game_id: '1')
Theme.create(themes: 'スナック菓子の名前', game_id: '1')
Theme.create(themes: '炭酸ジュースの名前', game_id: '1')
Theme.create(themes: '中華料理の名前', game_id: '1')

Punishment.create(punish_game: '国歌を斉唱してください。', example: '日本国歌でなくても構いません。')
Punishment.create(punish_game: 'アニメキャラ風に自己紹介してください。', example: '例：「俺は太郎。海賊王になる男だ！」')
Punishment.create(punish_game: 'この中で、一番家が近い人をベタ褒めしてください。', example: '例：笑顔が素敵、センスがいい、結婚したい、など')
Punishment.create(punish_game: '以降、語尾に「にゃん」をつけて話してください。', example: '恥じらわないことがポイントです。')
Punishment.create(punish_game: '自分が今飲んでいるお酒についてプレゼンテーションしてください。', example: '他の人が飲みたいと思えるようにお願いします。')
Punishment.create(punish_game: '今いる人以外の誰かに、「いつもありがとう、大好きだよ」と伝えてください', example: '電話かLINE、メールで伝えましょう。')
Punishment.create(punish_game: '半沢直樹風に土下座して謝ってください。', example: '半沢直樹を知らない人は調べましょう。')
Punishment.create(punish_game: '江頭2:50のモノマネをしてください。', example: 'エガちゃんを知らない人は調べましょう。')
Punishment.create(punish_game: '本気の喜怒哀楽を顔で表現してください。', example: '身振り手振りをつけても構いません。')
Punishment.create(punish_game: '最高のドヤ顔をしましょう。', example: '他の人は写真を撮ってあげてください。')
Punishment.create(punish_game: '日本の未来について語ってください。', example: '嘘の知識を言っても構いません。それっぽく語りましょう。')
Punishment.create(punish_game: 'あなたは悪の組織に狙われています。理由を説明してください。', example: '設定は何でも構いません。')



