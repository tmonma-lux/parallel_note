# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

note01 = Note.new(
  title: 'ボヘミアの醜聞 Chapter1',
  text_en: <<~TEXT,
  To Sherlock Holmes she is always the woman.

  I have seldom heard him mention her under any other name.

  In his eyes she eclipses and predominates the whole of her sex.

  It was not that he felt any emotion akin to love for Irene Adler.

   
  All emotions, and that one particularly, were abhorrent to his cold, precise but admirably balanced mind.

  He was, I take it, the most perfect reasoning and observing machine that the world has seen, but as a lover he would have placed himself in a false position.
  
  …

  - The Adventures of Sherlock Holmes
  著: Arthur Conan Doyle
  （Project Gutenbergより引用）
  TEXT
  text_ja: <<~TEXT
  シャーロック・ホームズにとって、彼女はいつも「かの女」である。

  その他の呼び方など、ほとんど聞いたこともない。

  彼の中では、彼女はすべての女を凌ぎ、圧倒する存在なのだ。

  しかし、彼はアイリーン・アドラーに対して愛のようなものは一切感じていなかった。

  あらゆる情、とくに愛情は、冷静沈着で狂いのない彼の精神には受け入れがたいものであった。

  私が思うに、彼は世界一思考や観察に長けた機械であるが、人を愛するという点においては器用でない。
  
  …
  TEXT
)
note01.tag_list.add '文学', 'シャーロック・ホームズ'
note01.save

Phrase.create(expression_en: 'predominate', expression_ja: '〜の優位に立つ', note: note01)
Phrase.create(expression_en: 'be abhorrent to', expression_ja: '〜にとって許しがたい', note: note01)


note02 = Note.new(
  title: 'ボヘミアの醜聞 Chapter2',
  text_en: <<~TEXT
  At three o'clock precisely I was at Baker Street, but Holmes had not yet returned.

  The landlady informed me that he had left the house shortly after eight o'clock in the morning.

  I sat down beside the fire, however, with the intention of awaiting him, however long he might be.
  
  …

  - The Adventures of Sherlock Holmes
  著: Arthur Conan Doyle
  （Project Gutenbergより引用）
  TEXT
)
note02.tag_list.add '文学', 'シャーロック・ホームズ'
note02.save

Phrase.create(expression_en: 'incisive', expression_ja: '鋭敏な，機敏な', note: note02)


note03 = Note.new(
  title: 'ボヘミアの醜聞 Chapter3',
  text_en: <<~TEXT
  I slept at Baker Street that night, and we were engaged upon our toast and coffee in the morning when the King of Bohemia rushed into the room.
  "You have really got it!" he cried, grasping Sherlock Holmes by either shoulder and looking eagerly into his face.
  …

  - The Adventures of Sherlock Holmes
  著: Arthur Conan Doyle
  （Project Gutenbergより引用）
  TEXT
)
note03.tag_list.add '文学', 'シャーロック・ホームズ'
note03.save

Phrase.create(expression_en: 'be engaged upon', expression_ja: '〜している最中である', note: note03)
Phrase.create(expression_en: 'grasp （人） by the （部位）', expression_ja: '（人）の（部位）を掴む', note: note03)


note04 = Note.new(
  title: '赤毛組合',
  text_en: <<~TEXT
  I had called upon my friend, Mr. Sherlock Holmes,
  one day in the autumn of last year and found him in deep conversation with
  a very stout, florid-faced, elderly gentleman with fiery red hair.
  …

  - The Adventures of Sherlock Holmes
  著: Arthur Conan Doyle
  （Project Gutenbergより引用）
  TEXT
)
note04.tag_list.add '文学', 'シャーロック・ホームズ'
note04.save

Phrase.create(expression_en: 'Sorry for the intrusion.', expression_ja: 'お邪魔してしまってすみません。', note: note04)
Phrase.create(expression_en: 'abruptly', expression_ja: '不意に，突然', note: note04)


note05 = Note.new(
  title: 'The Great Gatsby Chapter1',
  text_en: <<~TEXT
  In my younger and more vulnerable years my father gave me some advice that I've been turning over in my mind ever since.
  "Whenever you feel like criticizing anyone," he told me,
  "just remember that all the people in this world haven't had the advantages that you've had."
  He didn't say any more, but we've always been unusually communicative in a reserved way,
  and I understood that he meant a great deal more than that.
  …

  - The Great Gatsby
  著: F. Scott Fitzgerald
  （Project Gutenbergより引用）
  TEXT
)
note05.tag_list.add '文学', 'The Great Gatsby'
note05.save

Phrase.create(expression_en: 'vulnerable', expression_ja: '脆弱な，傷つきやすい', note: note05)
Phrase.create(expression_en: 'in a reserved way', expression_ja: '控えめに，遠慮して', note: note05)


note06 = Note.new(
  title: 'The Great Gatsby Chapter2',
  text_en: <<~TEXT
  About halfway between West Egg and New York the motor road hastily joins the railroad and runs beside it for a quarter of a mile,
  so as to shrink away from a certain desolate area of land.
  …

  - The Great Gatsby
  著: F. Scott Fitzgerald
  （Project Gutenbergより引用）
  TEXT
)
note06.tag_list.add '文学', 'The Great Gatsby'
note06.save

Phrase.create(expression_en: 'desolate', expression_ja: '荒れ果てた', note: note06)
Phrase.create(expression_en: 'ridge', expression_ja: '頂上部，尾根', note: note06)


# アニメ"RWBY"のテキスト引用における免責事項
# This is not endorsed by Rooster Teeth in any way.
# Views, opinions, and thoughts are all my own. Rooster Teeth and [name of Rooster Teeth show/character/etc.] are
# trade names or registered trademarks of Rooster Teeth Productions, LLC. © Rooster Teeth Productions, LLC.

note07 = Note.new(
  title: 'RWBY Season1 Episode1 Chapter1',
  text_en: <<~TEXT
  Narrator:
  Legends. Stories scattered through time.
  Mankind has grown quite fond of recounting the exploits of heroes and villains,
  forgetting so easily that we are remnants, byproducts, of a forgotten past.
  …

  （RWBY "Ruby Rose" / RoosterTeeth社 より引用）
  TEXT
)
note07.tag_list.add 'アニメ', 'RWBY'
note07.save

Phrase.create(expression_en: 'scatter', expression_ja: '〜を撒く', note: note07)
Phrase.create(expression_en: 'be fond of', expression_ja: '〜を好む', note: note07)


note08 = Note.new(
  title: 'RWBY Season1 Episode1 Chapter2',
  text_en: <<~TEXT
  Glynda:
  I hope that you realize that your actions tonight will not be taken lightly, young lady.
  You put yourself and others in great danger.

  Ruby:
  They started it!
  …

  （RWBY "Ruby Rose" / RoosterTeeth社 より引用）
  TEXT
)
note08.tag_list.add 'アニメ', 'RWBY'
note08.save

Phrase.create(expression_en: 'If it were up to me, ...', expression_ja: 'もし私次第であったなら', note: note08)
Phrase.create(expression_en: 'learn to do', expression_ja: '〜できるようになる', note: note08)


note09 = Note.new(
  title: 'RWBY Season1 Episode2 Chapter1',
  text_en: <<~TEXT
  Yang:
  The view from Vale's got nothing on this!

  Ruby:
  Ohmygosh, sis! That kid's got a collapsible staff! And she's got a fire sword! Ow! Ooww!
  …

  （RWBY "The Shining Beacon" / RoosterTeeth社 より引用）
  TEXT
)
note09.tag_list.add 'アニメ', 'RWBY'
note09.save

Phrase.create(expression_en: 'collapsible', expression_ja: '折り畳み式の', note: note09)
Phrase.create(expression_en: 'easy there.', expression_ja: '落ち着いて。', note: note09)


note10 = Note.new(
  title: 'RWBY Season1 Episode2 Chapter2',
  text_en: <<~TEXT
  Jaune:
  All I'm saying is that motion sickness is a much more common problem than people let on!

  Ruby:
  Look, I'm sorry! Vomit Boy was the first thing that came to mind.
  …

  （RWBY "The Shining Beacon" / RoosterTeeth社 より引用）
  TEXT
)
note10.tag_list.add 'アニメ', 'RWBY'
note10.save

Phrase.create(expression_en: "All I'm saying is that", expression_ja: '要するに，僕が言いたいのは', note: note10)
Phrase.create(expression_en: 'let on', expression_ja: '（秘密などを）漏らす，口外する', note: note10)


note11 = Note.new(
  title: '罪と罰（英語版） Part1 Chapter1',
  text_en: <<~TEXT
  On an exceptionally hot evening early in July a young man came out of the garret in which he lodged in S.
  Place and walked slowly, as though in hesitation, towards K. bridge.
  He had successfully avoided meeting his landlady on the staircase.
  …

  - Crime and Punishment
  著: Fyodor Dostoyevsky, 訳: Constance Garnett
  （Project Gutenbergより引用）
  TEXT
)
note11.tag_list.add '文学', '罪と罰'
note11.save

Phrase.create(expression_en: "exceptionally", expression_ja: '例外的に，異常に', note: note11)


note12 = Note.new(
  title: '罪と罰（英語版） Part1 Chapter2',
  text_en: <<~TEXT
  Raskolnikov was not used to crowds, and, as we said before, he avoided society of every sort, more especially of late.
  But now all at once he felt a desire to be with other people.
  Something new seemed to be taking place within him, and with it he felt a sort of thirst for company.
  …
  
  - Crime and Punishment
  著: Fyodor Dostoyevsky, 訳: Constance Garnett
  （Project Gutenbergより引用）
  TEXT
)
note12.tag_list.add '文学', '罪と罰'
note12.save

Phrase.create(expression_en: "all at once", expression_ja: '1.一斉に, 2.突然', note: note12)
