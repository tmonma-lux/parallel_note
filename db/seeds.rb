# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

note = Note.create(
  title: 'TOEIC問題集3 p.51',
  text_en: <<~TEXT,
  Arthur Chun (8:31 A.M.)
  Can you give me a hand? I can't get the projector to work in the conference room.

  Hannah Lind (8:31 A.M.)
  Sure. What's the problem?

  Arthur Chun (8:32 A.M.)
  No idea. I keep getting an error message when I press the power button.

  Hannah Lind (8:33 A.M.)
  Are the cables connected?

  Arthur Chun (8:33 A.M.)
  Yes. Would you be able to come over here? My presentation starts soon!

  Hannah Lind (8:34 A.M.)
  It's probably just a setting. I can show you. Give me a minute to get there.
  TEXT
  text_ja: <<~TEXT,
  Arthur Chun (午前8時31分)
  手を貸してくれるかな。会議室でプロジェクターを作動させることができないんだ。

  Hannah Lind (午前8時31分)
  もちろん。何が問題なの？

  Arthur Chun (午前8時32分)
  まったく分からないよ。電源ボタンを押すと、エラーメッセージが出続けるんだ。

  Hannah Lind (午前8時33分)
  ケーブルは接続されている？

  Arthur Chun (午前8時33分)
  うん。ここに来てもらうことは可能かな。僕の発表はもうすぐ始まるんだ。

  Hannah Lind (午前8時34分)
  おそらく、単に設定でしょうね。私が教えてあげられるわ。そこに行くのにちょっと時間をちょうだい。
  TEXT
)

Phrase.create(expression_en: 'give someone a hand', expression_ja: '〜に手を貸す', note: note)
Phrase.create(expression_en: 'Would you be able to do ~ ?', expression_ja: '〜していただくことは可能ですか？', note: note)

note.tag_list.add "TOEIC", "ビジネス"
note.save
