# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

note1 = Note.create(
  title: 'TOEIC公式問題集3 p.51',
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

Phrase.create(expression_en: 'give someone a hand', expression_ja: '〜に手を貸す', note: note1)
Phrase.create(expression_en: 'Would you be able to do ~ ?', expression_ja: '〜していただくことは可能ですか？', note: note1)

note1.tag_list.add 'TOEIC', 'ビジネス'
note1.save


note2 = Note.create(
  title: 'TOEIC公式問題集4 p.53',
  text_en: <<~TEXT,
  Dear Mr. Dembinsky,

  Over the last five years we have been placing bulk orders with you on a largely intermittent basis.
  Recently, demand for some of the publications we produce has increased, and we would therefore like to schedule regular paper deliveries in larger amounts.
  Would you be prepared to offer us a discount in exchange for a multiyear commitment?
  At this point we are able to guarantee a minimum monthly order for two years, if a satisfactory rate can be agreed upon.
  Please contact me by October 9 if this possibility interests you.

  With best wishes,

  Kristen Hendriks
  Tisken and Dodge
  TEXT
  text_ja: <<~TEXT,
  Dembinsky様

  過去５年にわたり、当社は御社に対し、おおむね断続的に大量注文をしてきました。
  最近、当社が制作する出版物の一部の需要が高まり、そのため当社は、定期的な用紙の納入をより多くの数量で予定したいと思っています。
  複数年の委託と引き換えに、当社に割引をご提供いただく考えはおありでしょうか。
  納得のいく規定料金が合意できれば、当社は現時点で、２年間、毎月の最低量の注文を保証できます。
  この可能性が御社のご関心を引くようでしたら、１０月９日までに私にご連絡ください。

  よろしくお願いいたします。

  Kristen Hendriks
  Tisken and Dodge社
  TEXT
)

Phrase.create(expression_en: 'bulk order', expression_ja: '大量注文', note: note2)
Phrase.create(expression_en: 'on an intermittent basis', expression_ja: '断続的に', note: note2)
Phrase.create(expression_en: 'commitment', expression_ja: '委託，約束', note: note2)
Phrase.create(expression_en: 'satisfactory', expression_ja: '納得のいく', note: note2)

note2.tag_list.add 'TOEIC', 'ビジネス'
note2.save


note3 = Note.create(
  title: '十二夜 冒頭',
  text_en: <<~TEXT,
  Sebastian and his sister Viola, a young gentleman and lady of Messaline, were twins, and (which was accounted a great wonder) from their birth they so much resembled each other that, but for the difference in their dress, they could not be known apart.
  They were both born in one hour, and in one hour they were both in danger of perishing, for they were shipwrecked on the coast of Illyria, as they were making a sea-voyage together.
  The ship on board of which they were split on a rock in a violent storm, and a very small number of the ship's company escaped with their lives.
  TEXT
  text_ja: <<~TEXT,
  メッサリンの青年紳士と令嬢であった、セバスチャンとヴァイオラの兄妹は、双子で、しかも（大変な驚異とみなされていたことですが）彼らは、着物の違いがなければ見分けが付かないほどに、生まれたときから互いに大層よく似ていたのでした。
  二人は同じ時に生まれ、そして同じ時に命を落とすほどの危難に見舞われました。というのは、一緒に船旅をしていたとき、イリリアの沿岸で難破したのです。
  暴風雨のなか、二人が乗っていた船は岩に乗り上げて裂け、船に乗っていた者のうち生きて脱出できたのはごくわずかでした。
  TEXT
)

Phrase.create(expression_en: 'account A B', expression_ja: 'AをBとみなす', note: note3)
Phrase.create(expression_en: 'shipwreck', expression_ja: '難破する', note: note3)
Phrase.create(expression_en: 'perish', expression_ja: '命を落とす', note: note3)

note3.tag_list.add '文学', 'シェイクスピア'
note3.save
