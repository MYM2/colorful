# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 管理者
AdminUser.create(email: 'admin@gmail.com',password: 'admin1')
# エンドユーザー
EndUser.create(email: 'a@a.com', password: 'aaaaaa', lastname_kanji: '阿部',firstname_kanji: '弘', lastname_kana: 'アベ',firstname_kana: 'ヒロシ',phone_number: '09011111111')
EndUser.create(email: 'b@b.com', password: 'bbbbbb', lastname_kanji: '馬場',firstname_kanji: '弘', lastname_kana: 'ババ',firstname_kana: 'ヒロシ',phone_number: '09022222222')
EndUser.create(email: 'c@c.com', password: 'cccccc', lastname_kanji: '両津',firstname_kanji: '勘吉', lastname_kana: 'リョウツ',firstname_kana: 'カンキチ',phone_number: '09033333333')
EndUser.create(email: 'd@d.com', password: 'dddddd', lastname_kanji: '金',firstname_kanji: '正恩', lastname_kana: 'キム',firstname_kana: 'ジョンウン',phone_number: '09044444444')
EndUser.create(email: 'e@e.com', password: 'eeeeee', lastname_kanji: '江田',firstname_kanji: '弘', lastname_kana: 'エダ',firstname_kana: 'ヒロシ',phone_number: '09055555555')
EndUser.create(email: 'f@f.com', password: 'ffffff', lastname_kanji: '和田',firstname_kanji: 'アキ子', lastname_kana: 'ワダ',firstname_kana: 'アキコ',phone_number: '09066666666')
EndUser.create(email: 'g@g.com', password: 'gggggg', lastname_kanji: '新井',firstname_kanji: '敏光', lastname_kana: 'アライ',firstname_kana: '敏光',phone_number: '09077777777')
EndUser.create(email: 'h@h.com', password: 'hhhhhh', lastname_kanji: '橋本',firstname_kanji: '環奈', lastname_kana: 'ハシモト',firstname_kana: 'カンナ',phone_number: '09088888888')
EndUser.create(email: 'i@i.com', password: 'iiiiii', lastname_kanji: '飯田',firstname_kanji: '剛', lastname_kana: 'イイダ',firstname_kana: 'ツヨシ',phone_number: '09099999999')
# お届け先
Delivery.create(end_user_id: '1',lastname_kanji: '阿部',firstname_kanji: '剛', lastname_kana: 'アベ',firstname_kana: 'ツヨシ',phone_number: '09011111112',zipcode: '1112222',address: '兵庫県伊丹市')
Delivery.create(end_user_id: '2',lastname_kanji: '馬場',firstname_kanji: '弘', lastname_kana: 'ババ',firstname_kana: 'ヒロシ',phone_number: '09022222222',zipcode: '2222222',address: '兵庫県神戸市中央区')
Delivery.create(end_user_id: '3',lastname_kanji: '両津',firstname_kanji: '勘吉', lastname_kana: 'リョウツ',firstname_kana: 'カンキチ',phone_number: '09033333333',zipcode: '3333333',address: '兵庫県神戸市北区')
Delivery.create(end_user_id: '4',lastname_kanji: '金',firstname_kanji: '正恩', lastname_kana: 'キム',firstname_kana: 'ジョンウン',phone_number: '09044444444',zipcode: '4444444',address: '神戸市兵庫区')
Delivery.create(end_user_id: '5',lastname_kanji: '江田',firstname_kanji: '弘', lastname_kana: 'エダ',firstname_kana: 'ヒロシ',phone_number: '09055555555',zipcode: '5555555',address: '兵庫県伊丹市中央区')
Delivery.create(end_user_id: '6',lastname_kanji: '和田',firstname_kanji: 'アキ子', lastname_kana: 'ワダ',firstname_kana: 'アキコ',phone_number: '09066666666',zipcode: '6666666',address: '兵庫県尼崎市中央区')
Delivery.create(end_user_id: '1',lastname_kanji: '阿部',firstname_kanji: '弘', lastname_kana: 'アベ',firstname_kana: 'ヒロシ',phone_number: '09011111111',zipcode: '1111111',address: '兵庫県伊丹市')
Delivery.create(end_user_id: '7',lastname_kanji: '新井',firstname_kanji: '敏光', lastname_kana: 'アライ',firstname_kana: '敏光',phone_number: '09077777777',zipcode: '7777777',address: '兵庫県西宮市中央区')
Delivery.create(end_user_id: '8',lastname_kanji: '橋本',firstname_kanji: '環奈', lastname_kana: 'ハシモト',firstname_kana: 'カンナ',phone_number: '09088888888',zipcode: '8888888',address: '兵庫県神戸市垂水区')
Delivery.create(end_user_id: '9',lastname_kanji: '飯田',firstname_kanji: '剛', lastname_kana: 'イイダ',firstname_kana: 'ツヨシ',phone_number: '09099999999',zipcode: '9999999',address: '兵庫県神戸市中央区')
Delivery.create(end_user_id: '9',lastname_kanji: '飯田',firstname_kanji: '環奈', lastname_kana: 'イイダ',firstname_kana: 'カンナ',phone_number: '09088888888',zipcode: '9998888',address: '兵庫県明石市中央区')
Delivery.create(end_user_id: '9',lastname_kanji: '飯田',firstname_kanji: '正義', lastname_kana: 'イイダ',firstname_kana: 'マサヨシ',phone_number: '09098989898',zipcode: '9898989',address: '兵庫県伊丹市')
Delivery.create(end_user_id: '8',lastname_kanji: '橋本',firstname_kanji: '彩香', lastname_kana: 'ハシモト',firstname_kana: 'アヤカ',phone_number: '09089898989',zipcode: '8989898',address: '兵庫県加西市')


# アーティスト
Artist.create(artist_name: '平井　堅' ,artist_introduction: '平井堅のプロフィール 平井堅（ヒライ ケン） 歌手。1972年1月17日生まれ、大阪府出身。 A型。2000年、シングル「楽園」でブレイクを果たす。 また2004年、シングル「瞳をとじて」（映画『世界の中心で、愛をさけぶ』の主題歌）の大ヒットで、日本のミュージックシーンにおいて不動の地位を獲得。')
Artist.create(artist_name: '哀川　翔' ,artist_introduction: '哀 川　翔 あいかわしょう
SHOW AIKAWA
生年月日	1961年5月24日
出身地	鹿児島県（徳島県生まれ）
SIZE	身長：178cm
靴サイズ：26.0cm
B：98cm
W：75cm
H：88cm
血液型	AB型
趣味	釣り、ゴルフ
資格	普通自動車免許
大型自動二輪車
国際C級ライセンス')
Artist.create(artist_name: 'AAA' ,artist_introduction: 'AAA（トリプル・エー）

男女6人組のスーパーパフォーマンスグループ。

2005年9月14日にシングル「BLOOD on FIRE」でデビュー。
2005年末、「第47回輝く！日本レコード大賞」最優秀新人賞受賞。
また、デビュー1周年にあたる2006年9月13日には初の日本武道館ライブを、
前代未聞の無料招待で行い、約1万人の動員を記録。

デビュー10周年となる2015年は、1月～7月まで7ヶ月SG連続リリース、
全国アリーナツアー「AAA ARENA TOUR 2015 10th Anniversary -Attack All Around-」、
自身初となるアジアツアー「WAKUWAKU JAPAN Presents AAA ASIA TOUR 2015 -ATTACK ALL AROUND- Supported by KOJI」、
9月にはグループ単独初となる野外ライブ「AAA 10th Anniversary SPECIAL 野外LIVE in 富士急ハイランド」を開催。
ベストアルバム「AAA 10th ANNIVERSARY BEST」は過去最高枚数で、ウィークリーランキング初登場1位を獲得。

11月にはグループ単独初となるドーム公演
「AAA Special Live 2016 in Dome -FANTASTIC OVER-」を京セラドーム大阪(11/12.13)、東京ドーム(11/15.16)にて開催。4日間で18万人動員を記録して大成功を収める。

2017年2月に発売した最新アルバム「WAY OF GLORY」も2月度アルバム月間ランキング1位を獲得し、2017年にグループ初となる4大ドームツアー「AAA DOME TOUR 2017 -WAY OF GLORY-」を開催。

2017年10月18日にリリースしたシングル「LIFE」はフジテレビ系月9ドラマ『民衆の敵～世の中、おかしくないですか！？～』の主題歌に決定した。')
Artist.create(artist_name: '天童　よしみ' ,artist_introduction: '本名　吉田　芳美（よしだ　よしみ）
誕生日　9月26日
出身地　大阪府　八尾市
血液型　Ｂ型
趣味　ショッピング、クリスタル集め、


天童よしみは、何にもまして歌うことが大好きな少女だった。
当時、さまざまなのど自慢大会に出場しては、優勝をさらってしまうほどの実力派だったようだ。
1971年、「ちびっこのど自慢」に出場して優勝。
その実力が認められ、フジTV系の「いなかっぺ大将」挿入歌「大ちゃん数え唄」をレコーディング。

読売テレビ「全日本歌謡選手権」で10週を勝ち抜き、最年少で7代目チャンピオンとなる。
1972年、「風が吹く」でデビュー。その後、「道頓堀人情」が大ブレークし、
1997年「珍島物語」が100万枚の大ヒット。
20世紀最後の年となる2000年、「NHK紅白歌合戦」で紅組のトリから始まり、
これまで3度にわたって紅組のトリを務めている。
ディズニー映画「ブラザーベア」では劇中歌「グレートスピリット」
（作詞作曲：フィル・コリンズ）を歌い、
2010年に発売したアルバム「16粒の愛の物語」（第52回日本レコード大賞企画賞受賞）や、
プレミアムライブ「こぶしのない夜」「YOSHIMI TENDO スペシャルライブ」開催など、
演歌に拘らない多彩なジャンルで活躍を続けている。

45周年を迎えた2017年、「日本有線大賞 有線音楽優秀賞」受賞。
さらに、自身3度目となる「日本レコード大賞 最優秀歌唱賞」に輝き、さらなる高みへ向けての挑戦は続く。')
Artist.create(artist_name: '米津　玄師' ,artist_introduction: '米津玄師

KENSHI YONEZU

本名 / 28歳 / 徳島県出身

別名義：ハチ

作詞・作曲・アレンジ・プログラミング・歌唱・演奏・イラスト・アニメーション動画


ハチ名義でボカロシーンを席巻し、2012年本名の米津玄師としての活動を開始。

その独特なサウンドメイクをした楽曲の強さと、リアルな言葉の数々は圧倒的で、今の音楽シーンにはない新鮮さを鮮烈に刻み話題に。2015年リリースの3rdアルバム「Bremen」ではオリコン週間アルバムランキング1位、iTunes週間チャート1位、Billboard Japan週間チャート1位という三冠を達成、2015年度レコード大賞優秀アルバム賞受賞した。

2016年はユニバーサル・スタジオ・ジャパン15周年企画 “やり過ぎ” コラボ、ルーヴル美術館特別展「ルーヴルNo.9 ～漫画、9番目の芸術～」公式イメージソング、佐藤健・有村架純らが主演の映画「何者」の主題歌を中田ヤスタカ×米津玄師として初のコラボレーション作品として発表したりと、多岐にわたる才能を披露した。同年9月に発売したシングル「LOSER / ナンバーナイン」はオリコン週間シングルランキング自身最高の2位を記録。')
Artist.create(artist_name: '湘南乃風' ,artist_introduction: '人間の持つ喜怒哀楽を魂で歌う4人組クルー
──RED RICE、若旦那、SHOCK EYE、HAN-KUN、それが湘南乃風だ。
2000～2003年、自らのレーベル134RECORDINGSを立ち上げ、合計4本に及んだオリジナルミックス・テープを携えて
全国ワン・ボックス・ツアーを敢行。
当時のテープの1本に『湘南の風』という表題があり、後の湘南乃風というクルー名の起源となった。
2003年、アルバム『湘南乃風 ～Real Riders～』でデビュー、現在までに19枚のシングルと7作のアルバム、ベスト盤2タイトルをリリース。
『風伝説』と呼ばれる4人のストーリーを紡ぎ続けている。
結成
「RED RICE」と「HAN-KUN」の2人が湘南で活動していた頃、「SHOCK EYE」と出逢い、お互いの志を確認。
同じ頃、湘南に住んでRaggae Barを経営していた「若旦那」は、中学校～高校時代の知り合いながらしばらく顔を合わせていなかった
「SHOCK EYE」と、偶然にも茅ケ崎で再会。
それぞれが出会い、自らの風を吹かせるための活動がここから始まった...。')
Artist.create(artist_name: 'あいみょん' ,artist_introduction: '1995年生まれ。兵庫県西宮市出身のシンガー・ソングライター。かつて歌手を夢見ていた祖母や、音響関係の仕事に就いている父親の影響で幼少の頃より音楽に触れて育ち、中学の頃からソングライティングを始める。

15年3月にタワレコ限定シングル「貴方解剖純愛歌～死ね～」でインディーズデビュー、オリコンインディーズチャートTOP10入りをはたす。
5月、初の全国流通盤となる1stミニアルバム「tamago」12月に2ndミニアルバム「憎まれっ子世に憚る」をリリース。

16年11月30日、ワーナーミュージック・ジャパン内レーベル unBORDE よりシングル「生きていたんだよな」でメジャーデビュー。そして17年2月に公開になったヤオ・アイニン主演映画『恋愛奇譚集』の書き下ろし主題歌に「漂白」が抜擢され話題を呼んだ。

5月には2ndシングル「愛を伝えたいだとか」 8月に3rdシングル「君はロックを聴かない」をリリース。9月にファーストフルアルバム「青春のエキサイトメント」を発表し、ロングセールスを記録中。')
Artist.create(artist_name: 'RADWIMPS' ,artist_introduction: 'RADWIMPS（ラッドウインプス）　野田洋次郎（Vo＆G）、桑原彰（G＆Cho）、武田祐介（B＆Cho）、山口智史（Dr＆Cho）からなるロックバンド。2001年結成。2005年にシングル「25コ目の染色体」でメジャーデビュー。国内の主要フェスに数多く出演し、ライブを中心に精力的に活動中。バンド名には、「かっこいい弱虫」「見事な意気地なし」「マジスゲーびびり野郎」といった意味合いがある。')
Artist.create(artist_name: 'FUNKY MONKEY BABYS' ,artist_introduction: '東京八王子出身、「ファンキー加藤」「モン吉」「DJ ケミカル」の3人が、04年元旦に結成した2MC1DJ の3人組グループ。06 年1月、CD ジャケットに東国原英夫　元宮崎県知事（当時そのまんま東氏）を起用したシングル『 そのまんま東へ』でメジャーデビュー。07 年1月リリースの『Lovin Life』がCD セールス20万枚、着うた(R)200万ダウンロードを突破。2007年度上半期 着うたフル(R)ランキング3位に輝く超ロングヒットを記録、ブレイクを果たす。


2010年2月初のベストアルバム『ファンキーモンキーベイビーズBEST』が2作連続のオリコンウィークリーランキング1 位を獲得し、19週連続TOP30にランクイン、2010年発売上半期アルバムセールスランキング1 位に!!85万枚を突破し、2011年1月に発表された「第25回 日本ゴールドディスク大賞」では2010年最も売れたアルバム5枚に選ばれ「第25回 日本ゴールドディスク大賞 ザ・ベスト5アルバム」を受賞した。')
Artist.create(artist_name: 'GReeeeN' ,artist_introduction: '現役歯科医師として活躍し、その素顔は明かさないボーカルグループのGReeeeN（グリーン）。
謎に包まれた彼らの正体ですが、実は様々な過去があったのです。
GReeeeN結成からデビューまでの道のりは実写映画にもなりました。')
Artist.create(artist_name: 'EXILE' ,artist_introduction: '
EXILE HIRO、松本利夫、EXILE ÜSA、EXILE MAKIDAI、EXILE ATSUSHI、EXILE AKIRA、EXILE TAKAHIRO、橘ケンチ、黒木啓司、EXILE TETSUYA、EXILE NESMITH、EXILE SHOKICHI、EXILE NAOTO、小林直己、岩田剛典、白濱亜嵐、関口メンディー、世界、佐藤大樹からなる19人組のダンス＆ヴォーカルグループ。

2001年9月27日、シングル「Your eyes only ～曖昧なぼくの輪郭～」でデビュー。

2006年3月29日、前VOCAL SHUNのソロ転身をもって、同年6月、パフォーマーAKIRAが加入。

同年9月22日、EXILE Vocal Battle Audition 2006 ～ASIAN DREAM～にて、約1万人の中から勝ちとったTAKAHIROが選ばれ、EXILE第二章開幕。

2008年、EXILE PERFECT YEARと題した大規模な1年がスタート。この年、EXILE初のドームツアー「EXILE LIVE TOUR“EXILE PERFECT LIVE 2008”」を敢行。

同年12月30日、「Ti Amo」にて第50回日本レコード大賞を受賞。')
Artist.create(artist_name: '東方神起' ,artist_introduction: '東方神起とは" 東方の神が起きる！ " という意味で、アジア全域から世界にその名を広げられるグループとして名付けられた。2004年2月に韓国でデビュー。日本においてもJ-POPの新人として、2005年4月にデビューを果たす。現在その圧倒的な人気は韓国・日本だけに留まらず、中国、台湾、タイ、マレーシアを始めアジア各国でその名を轟かせており、2006、2007年でのアジアツアーを大成功させている。
2011年待望の再始動以降は、アジアだけに留まらず欧米諸国、ヨーロッパにまでその存在を渇望され、世界的に活動を行っている。
2013年自身初の 5大ドームツアー、さらに海外アーティスト初の 単独日産スタジアム公演を開催。また、2012年「東方神起 LIVE TOUR 2012 ～TONE～」、2013年「東方神起 LIVE TOUR 2013 ～TIME～」、「東方神起 LIVE TOUR 2014 ～TREE～」の3年間で海外アーティストとしては史上最多、最速の200万人を動員。2015年には記念すべき日本デビュー10周年を迎え、自身２度目の全国５大ドームツアー「東方神起LIVE TOUR 2015 ～WITH～」を行い圧巻のライブステージを披露した。音楽シングル総売り上げ枚数海外アーティスト歴代1位など 、数々の輝かしい記録を打ち立てている。')
Artist.create(artist_name: 'ポルノグラフィティ' ,artist_introduction: '広島県因島出身。高校でバンドを結成。95年から大阪にて、ストリートライヴやイベントに精力的に出演し、バンドコンテスト等でも数々の賞を受賞。
そして、1999年、1stシングル「アポロ」で、衝撃のメジャーデビューを果たした。新しいタイプのアーティストとして一気に認知を広げ、翌年2000年7月には3rdシングル「ミュージック・アワー」（大塚製薬「ポカリスエット」CF曲）をリリースし、この夏の話題曲となる。
4thシングル「サウダージ」は大ヒットとなり、立て続けに5ｔｈシングル「サボテン」をリリースして2000年のオリコンのヒットチャートを賑わした。
その後も、「アゲハ蝶」（エフティ資生堂「ティセラトコナッツココナッツ」TVCFイメージソング）、「メリッサ」（MBS・TBS系全国ネットアニメ「鋼の錬金術師」オープニングテーマ）、「愛が呼ぶほうへ」（TBS系ドラマ日曜劇場「末っ子長男姉三人」主題歌）を続々リリース。これらシングル楽曲が大ヒットとなり、2004年9月8日のデビュー5周年に先駆けて、同年7月28日に初のベストアルバム「PORNO GRAFFITTI BEST REDS」「PORNO GRAFFITTI BEST BLUES」を2枚同時リリース。自身初のオリコンアルバムチャート1位獲得とともに、2週連続1位2位を独占し記録的大ヒットとなる。')
Artist.create(artist_name: 'Aqua Timez' ,artist_introduction: '2003年結成。太志(フトシ/Vocal)、OKP-STAR(オーケーピースター/Ba)、大介(ダイスケ/Gt)、mayuko(マユコ/Key)、TASSHI(タッシー/Dr)からなる5人組バンド。太志、OKP-STARを中心にバンド結成、サポートメンバーだった大介、mayukoが参加し、2006年7月TASSHIが加わって現在の5人編成に。希望、愛情、悲しみ、切なさなど普遍的でありながらも強烈なメッセージ性を持った歌詞とそれをより一層感情にうったえさせる印象的なメロディーがティーンを中心とした若いリスナー世代から大きな支持を集め、2005年8月にリリースされたインディーズ1stミニアルバム「空いっぱいに奏でる祈り」に収録された「等身大のラブソング」が注目されて80万枚の大ヒット、ウィークリーオリコンランキングで1位を獲得する。

　2006年4月、EPICレコードより2ndミニアルバム「七色の落書き」をリリース。7月には、話題の映画「ブレイブストーリー」の主題歌となった1stシングル「決意の朝に」をリリースし、110万セールス（パッケージ+楽曲フル配信含む/※「着うた」は120万ダウンロード）の大ヒットを記録した。同年11月に2ndシングル「千の夜をこえて」をリリース、この曲は劇場版「BLEACH」の主題歌として注目され、着うたフルで100万ダウンロード、パッケージと合わせて120万セールスを突破し、1stシングル「決意の朝に」に引き続き大ヒットを記録した。そして待望の1stフル・アルバム「風をあつめて」を12月にリリース。初の紅白歌合戦出場も果たし、50万枚を超えるセールスを記録して、現在も尚ロングヒット中。')
Artist.create(artist_name: 'HY' ,artist_introduction: 'HY（エイチワイ）　新里英之（Vo＆G＆Rap）、名嘉俊（Dr＆Rap＆Cho）、許田信介（B）、仲宗根泉（Vo＆Key＆Cho）、宮里悠平（G＆Cho）による5人組バンド。2000年結成。翌年に沖縄限定でリリースしたアルバム『Departure』が即完売。同年4月に同作品を全国リリースし、注目を集める。2ndアルバム『Street Story』ではインディーズながら4週連続1位を獲得し、その後も数多くのアルバム作品で1位を獲得。ライブ活動も精力的に行っており、男女問わず支持を集めている。')
Artist.create(artist_name: 'AK-69' ,artist_introduction: 'AK-69（エーケーシックスティーナイン、1978年 - ）は愛知県小牧市出身のヒップホップミュージシャン、実業家である。MCとしてラップをする際はAK-69を、シンガーとして歌う際はKalassy Nikoff（カラシニコフ）を名乗る。また、2004年より自身のファッションブランド「BAGARCH（バガーチ）」のプロデュースも行っている。

人物・活動
インディーズでの活動にこだわりを持っており、メジャーレーベルとの契約を行っていない。
2014年3月5日に自身初となる日本武道館にてワンマンライブを開催した。
大の車好きであり、現在の愛車はロールス・ロイス・レイス・フェラーリ・F12ベルリネッタ。過去にはベントレー・コンチネンタルGTC W12・ポルシェ・パナメーラ4S・BMW・X5も所有していた。
2012年6月よりニューヨークへ渡り武者修行を開始。NYのヒップホップ専門ラジオ曲HOT97が主催する現地でのライブに出演した。
現在も日本とNYを行き来しながら活動を続けており、DJキャレド・ファボラス・ファット・ジョー等海外アーティストとの楽曲製作も精力的に行っている。
愛知県出身であり、自身もファンである事、親交が深い谷繁元信が選手兼任監督に就任した事から、2014年以降は中日ドラゴンズと関係が深くなっている。2012年4月にはナゴヤドームで始球式を務めた。2014年9月23日には試合前にナゴヤドームのグラウンドでライブを行い、2014年のチームスローガンのヒントになった「Start it Again」を披露した。')
Artist.create(artist_name: 'HAN-KUN' ,artist_introduction: '本名：半澤 卓朗（はんざわ　たくろう）

芸名：HAN-KUN

生年月日：1979年1月27日

出身地：神奈川県鎌倉市深沢

血液型：B型

身長：164cm位（ネット上の情報）

趣味：サッカー

職業：シンガーソングライター

ジャンル：J-POP、レゲエ

活動期間：1998年 –

レーベル：トイズファクトリー

事務所：134 Recordings
MAGIC MOMENT RECORDS

共同作業者：湘南乃風等

')
Artist.create(artist_name: '若旦那' ,artist_introduction: '“湘南乃風”のメンバーの一人。
そのストレートで、熱く、優しい言葉で、日本の音楽シーンにおいて唯一無二の存在であり続けている若旦那。“湘南乃風“の活動と並行して、自身のソロ名義の作品リリース、他アーティストのプロデュース、楽曲提供なども行っている。
様々なチャリティ活動や震災への支援活動を行うなど、文化人として幅広い社会活動にも参加している。')
Artist.create(artist_name: 'WANIMA' ,artist_introduction: '熊本県出身の3ピースバンド　WANIMA

飛ぶ鳥を落とす勢いとはまさしくこの事。

メロディアスなパンクに乗せて、ストレートな表現で胸を打つ歌詞。
あけすけなエロチックな歌とのバランスも絶妙で、弾けまくるライブパフォーマンス。

そんなWANIMAにハマっている人、増殖中！')
Artist.create(artist_name: '星野　原' ,artist_introduction: '星野源（ホシノ ゲン）　シンガー・ソングライター・俳優。1981年1月28日生まれ、埼玉県出身。音楽家、俳優、文筆業など多方面で活動。2013年、映画『箱入り息子の恋』で主演し、NHKバラエティ番組『LIFE！～人生に捧げるコント～』など、数々のドラマや映画、舞台に出演。2016年、TBS系ドラマ『逃げるは恥だが役に立つ』（通称：逃げ恥）に出演し、同作の主題歌「恋」にあわせて踊る“恋ダンス”が大ブームに。同曲で『第67回 NHK紅白歌合戦』に出場した。')
Artist.create(artist_name: '浜崎　あゆみ' ,artist_introduction: '浜崎あゆみは1978年10月2日、福岡で生まれる。幼い頃から芸能界入りし、子役として活躍していたが、歌手としてデビューするまでは歌はあまり意識していなかったようだ。19歳のとき「Poker Face」でデビュー。自らの作詞曲としても最初となる作品。浜崎あゆみはこのときから確実にアーティストとしての一歩を踏み出していた。数々の話題と完成された作品群、リリースの度に新たな評価を得てきた彼女。')
Artist.create(artist_name: 'aiko' ,artist_introduction: 'aiko（アイコ）　シンガー・ソングライター。1975年11月22日生まれ、大阪府出身。AB型。等身大の歌詞、耳なじみのよいメロディーライン、飾らないキャラクターなどで男女ともに高い人気を誇る。さまざまなスタイルのライブ活動を行っており、その楽しさは折り紙つき。代表曲は「花火」、「カブトムシ」、「ボーイフレンド」など。')
Artist.create(artist_name: '安室　奈美恵' ,artist_introduction: '安室奈美恵（アムロ ナミエ）　アーティスト。1977年9月20日生まれ、沖縄県出身。O型。沖縄アクターズスクール発の5人組グループ・スーパーモンキーズを経てソロアーティストに転向。以降、「CAN YOU CELEBRATE？」「Don’t wanna cry」「Chase the Chance」「NEVER END」などのヒット曲を多数リリース。1990年代には、ファッションやメイクを真似る“アムラー”が社会現象に。2016年7月発売のシングル「Hero」が、同年夏開催の『リオデジャネイロオリンピック・パラリンピック』のNHK放送テーマソングに起用され、その年を代表する1曲となった。40歳の誕生日である2017年9月20日、公式サイトで2018年9月16日をもって引退することを発表。18年9月16日、引退。')
Artist.create(artist_name: '中島　みゆき' ,artist_introduction: '中島みゆき（ナカジマ ミユキ）　歌手・作詞家・作曲家・ラジオパーソナリティー。1952年2月23日生まれ、北海道出身。B型。1975年シングル「アザミ嬢のララバイ」でデビュー。以来、数々のヒット曲をリリース。重厚な楽曲と明るい語り口調のギャップも魅力のひとつ。')
Artist.create(artist_name: '五木　ひろし' ,artist_introduction: '本名
松山数夫

生年月日
1948年3月14日生まれ

出身地
福井県三方郡美浜町

あゆみ
芸能生活50周年を経て、2015年(平成27年)五木ひろし「よこはま・たそがれ」より45周年を迎えた。
1964年(昭和39年)「第15回コロムビア全国歌謡コンクール」で優勝し、プロ歌手となる。
1970年(昭和45年)「全日本歌謡選手権」で10週勝ち抜きの栄冠を得る。翌1971年(昭和46年)3月1日に「五木ひろし」として「よこはま・たそがれ」を発表。この曲の大ヒットにより、数多くの賞を受賞し、一躍ミリオンセラー歌手となる。
毎年年末のNHK紅白歌合戦では、1971年「よこはま・たそがれ」で出場以来、連続しての出場。また2004年3月には、自身の構成演出による日生劇場ライブコンサートが評価され、文化庁より第54回芸術選奨文部科学大臣賞（大衆芸能部門）を受賞。2007年11月には紫綬褒章を受章。
常にチャレンジを続ける日本歌謡界のトップランナー。
あらゆるジャンルで最高の声を披露できる日本を代表する歌手として、多方面から評価を得ている。')
Artist.create(artist_name: '松田　聖子' ,artist_introduction: '松田聖子（歌手・女優）
歌手としては、デビュー以来４０以上の音楽賞を受賞、シングルチャート２４曲連続１位という記録を持つ。
海外でも早くから活動しており、全米ビルボードのダンスチャートの上位にランク・インした。
アジアの国々でも名を知られており、２００５年に台湾で発売された北京語のアルバム「愛的禮物」は、台湾のアルバムチャートで初登場１位を獲得した。 ２００７年には、中国で開催された「アジア芸術祭」にも参加するなど国内外問わず活躍を続けている。



日本では、２００７年発売アルバム「Babys breath」、２００８年発売アルバム「my pure melody」から、作詞作曲、プロデュースを手掛け、歌手としてだけではなく作家、プロデューサーとしての才能も発揮している。



２０１１年には、かねてから親交の深い米国音楽プロデューサー クインシージョーンズ氏のオファーにより、ロスアンゼルスのハリウッドボウルで行われた彼のコンサートに参加した。

そして、２０１２年９月１８日、全世界発売のコンテンポラリー・ジャズ界のスーパーグループ「Fourplay」のアルバム「ESPRIT DE FOUR」にゲストヴォーカルとして参加した。')
Artist.create(artist_name: '北島　三郎' ,artist_introduction: '・本名：大野 穣
・生年月日：1936年10月4日
・出身地：北海道上磯郡知内町
・血液型：O型
・デビュー曲：1962年6月「ブンガチャ節」（日本コロムビア）
・1962年12月
「なみだ船」第4回日本レコード大賞・新人賞受賞
・1980年00月
「風雪ながれ旅」第1回古賀政男記念音楽大賞受賞
・1986年12月
「北の漁場」第28回日本レコード大賞・最優秀歌唱賞受賞
・1989年12月
日本作曲大賞・特別賞受賞
・1990年12月
第32回日本レコード大賞・特別賞受賞
・1991年08月
故郷・北海道より道民栄誉賞を授与される
・1991年12月
「北の大地」第33回日本レコード大賞・歌謡曲演歌部門大賞受賞
・1996年12月
第38回日本レコード大賞・美空ひばりメモリアル賞受賞
・1999年08月
函館市より函館市栄誉賞を授与される')
Artist.create(artist_name: '西野　カナ' ,artist_introduction: '平成元年生まれ、三重県出身。
2008年にメジャーデビュー以降、リアルな恋愛観を綴った歌詞と、類まれな歌声が話題を集め、女性ファンを中心にブレイク。
またそのキュートなルックスから数々のファッション誌の表紙を飾るなど、ファッションアイコンとしても絶大な支持を集める。


2010年、セツナイ恋心を歌った失恋ソング「会いたくて 会いたくて」が500万ダウンロードを超えるヒットを記録し、
そのヒットシングルを収録した2ndアルバム「to LOVE」は、オリコンチャート１位を獲得、90万枚を超えるロングヒットとなった。


現在、楽曲のトータルダウンロード数は5500万DLを超えており、
昨今では、飾ることのないカップルの心温まる愛情を描いたラブソング「Darling」や、
なかなか男性に伝わりにくい女性の心を取り扱い説明書になぞらえて表現したヒットシングル「トリセツ」など、
その独特なリリック手法で、老若男女問わず、幅広い層より支持を集めるようになった。


2016年末には、シングル「Dear Bride」にて【第49回日本有線大賞】の大賞、シングル「あなたの好きなところ」にて【第58回 輝く！日本レコード大賞】の大賞を受賞。
2017年夏には、平成生まれの女性ソロアーティスト初となる東京・大阪ドーム公演を開催。')
Artist.create(artist_name: '郷　ひろみ' ,artist_introduction: '郷ひろみ（ゴウ ヒロミ）　歌手・男優。1955年10月18日生まれ、福岡県出身。A型。1972年にNHK大河ドラマ『新・平家物語』で男優デビュー、シングル「男の子 女の子」で歌手デビューを果たす。西城秀樹、野口五郎とともに“新御三家”と呼ばれ、爆発的な人気を集めた。')
Artist.create(artist_name: '大塚　愛' ,artist_introduction: '大塚愛（オオツカ アイ）　シンガーソングライター。1982年9月9日生まれ、大阪府出身。O型。シングル「さくらんぼ」でブレイク。メインのシンガー・ソングライターとしての活動のほか、女優、イラストレーター、絵本作家としても活躍。作詞・作曲のクレジットは「愛」。')
Artist.create(artist_name: 'AI' ,artist_introduction: 'AI（アイ）　歌手。1981年11月2日生まれ、鹿児島県出身。B型。日本人の父と日系米国人の母を持つクオーター。ロサンゼルスのパフォーミング・アーツ・スクール出身（ダンス専攻）。全米デビューのオファーを受けたが、日本での活動を選択し2000年にシングル『Cry， just Cry』でデビュー。日本を代表するR＆Bシンガーとして活躍する。')
Artist.create(artist_name: '青山　テルマ' ,artist_introduction: '青山テルマ（アオヤマ テルマ）　歌手。1987年10月27日生まれ、奈良県出身。B型。多数アーティストの楽曲に参加を経て、2007年にシングル「ONE WAY」でメジャーデビューを果たす。SoulJaとフィーチャリングしたシングル「そばにいるね」が大ヒットし、『第50回 日本レコード大賞』『第23回 日本ゴールドディスク大賞』など数多くの賞を受賞。包み込むような柔らかさを漂わす声質が特徴的。同性を中心に高い支持を集めている。')
Artist.create(artist_name: 'AKB-48' ,artist_introduction: '東京・秋葉原（東京都千代田区外神田）に専用劇場「AKB48劇場」（エーケービーフォーティエイトシアター）を持ち、「会いに行けるアイドル」をコンセプトとして日替わりメンバーで、ほぼ毎日公演を行うことを特徴としている。マスメディアを通した遠い存在ではなく、ファンがメンバーを身近な存在として感情移入して応援し、その成長過程を共有するスタイルがファンの支持を得ている。

「AKB48」というグループ名から、メンバー数は48人であると誤解されることがあるが、正規メンバーと研究生を合わせて100人を超えるメンバーが在籍している（現在のメンバー数はAKB48のグループ構成を参照）。2010年11月には正規メンバー48人、2013年3月には全メンバー88人でギネス世界記録に認定された。

姉妹グループとして日本国内にSKE48・NMB48・HKT48・NGT48・STU48、日本国外にJKT48・BNK48・MNL48・AKB48 Team SH・AKB48 Team TP・SGO48がある。さらにタイ・チェンマイにおいてCGM48、インドにおいてDEL48とMUB48のプロジェクトが進行中である。AKB48に姉妹グループを含めた場合には「AKB48グループ」・「48グループ」と総称されている。')
Artist.create(artist_name: 'GLAY' ,artist_introduction: 'GLAY（グレイ）　TAKURO（G）、TERU（Vo）、JIRO（B）、HISASHI（G）によるロックバンド。1994年にシングル「RAIN」でメジャーデビュー。それ以降、瞬く間に日本を代表するロックバンドとなる。1997年に発売された初のベストアルバム『REVIEW-BEST OF GLAY』では、発売から1週間で300万枚を達成する。当時の歴代アルバムセールスを更新して歴代1位となった。また、EXILE、氷室京介とのコラボレーションシングルも大きな話題となる。')
Artist.create(artist_name: 'UVERworld' ,artist_introduction: 'UVERworld（ウーバーワールド）　TAKUYA∞（Vo）、克哉（G）、彰（G）、信人（B）、真太郎（Dr）、誠果（Sax）によるロックバンド。2005年7月、シングル「D-tecnoLife」でメジャーデビュー。2008年11月、シングル「儚くも永久のカナシ」で初のオリコン1位を獲得。同年に初の日本武道館ライブを開催。バンド名はドイツ語と英語から作られた造語で、“自分たちがやったことを超えていきたい”という意味が込められている。')
Artist.create(artist_name: 'ゆず' ,artist_introduction: '北川悠仁、岩沢厚治により1996年3月結成。横浜・伊勢佐木町で路上ライブを行うようになる。
1997年10月、1st Mini Album『ゆずの素』をリリース。
等身大でありながら独自の感性で切り取られた歌詞とキャッチーなメロディ、弾き語りとは思えない広がりのあるアコースティックギターサウンドが人々を惹きつけ、翌98年6月にリリースした1st Single『夏色』で脚光を浴び、7月リリースの1st Album『ゆず一家』で一躍全国区に。
8月30日に行われた路上ライブラストには7,000人を集め、路上ライブが社会現象となるきっかけとなった。
その後、ライブはホールクラスからアリーナクラスへとステージを上げ、2001年には初の東京ドーム公演を敢行。
2005年7月23・24日には、ゆず史上過去最高のキャパとなる日産スタジアムで「YUZU STADIUM 2005 GO HOME」を行う。
2007年にはCDデビュー10周年を迎え、10月に記念アルバム『ゆずのね1997-2007』をリリース、10周年感謝祭ライブを行う(全9公演)。その後も精力的に活動を続けながら、15周年の2012年には、ベストアルバム『YUZU YOU［2006-2011］』をリリースし、アニバーサリーイヤーを象徴する「ゆず15周年感謝祭 ドーム公演 YUZU YOU」(5月26・27日 京セラドーム大阪／6月2・3日 東京ドーム)を大成功に収め、同年10月には地元・横浜にて初の展覧会「ゆず展〜15th Anniversary Exhibition〜」を開催し、およそ2万人を動員。
その後も2013年5月に発売した 11th Album『LAND』が、「第55回 輝く！日本レコード大賞」最優秀アルバム賞に選出。
2015年8月15・16日には、単独有料ライブとしてはおよそ15年ぶりとなる横浜スタジアムでの弾き語りライブ＜二人参客＞を開催。
2日間で約6万人を動員する。9月9日には約14年ぶりとなるライブアルバム『二人参客 2015.8.15〜緑の日〜』『二人参客 2015.8.16〜黄色の日〜』を2枚同時リリースし、オリコン週間アルバムランキングで初登場1、2位独占の快挙を達成する。2016年7月には、自身初のアジアツアー＜YUZU ASIA TOUR 2016 Summer NATSUIRO＞を開催し、台湾、香港、シンガポールの3都市で初ライブを実施。
同年11月には、東京ドームにてデビュー20周年突入記念弾き語りライブ「ゆずのみ」を開催し、2日間で約10万人を動員。
そして2017年。デビュー20周年イヤーとして、4月26日にオールタイムベストアルバム『ゆずイロハ 1997-2017』をリリースし、ロングヒットを記録中。
5月3日からは初の全国ドームツアー＜YUZU 20th Anniversary DOME TOUR 2017 ゆずイロハ＞を敢行。その後も休まることなく、6月21日＆28日に『謳おう』EP、『4LOVE』EPの新作EPを2週連続リリースすることも決定。
さらなるエンターテインメントの可能性を追求しながら、現在も第一線で活動中。')
Artist.create(artist_name: '水樹　奈々' ,artist_introduction: '水樹奈々（ミズキ ナナ）　声優・アーティスト。1980年1月21日生まれ、愛媛県出身。O型。1998年にゲームのキャラクター役で声優デビューを果たし、2000年に歌手デビュー。アニメ、声優ファンの間で絶大な支持を獲得していく。2009年、声優初の『NHK紅白歌合戦』出場という快挙を達成。')
Artist.create(artist_name: 'JUJU' ,artist_introduction: 'JUJU（ジュジュ）　J-POP／R＆Ｂのシンガー・ソングライター。12才頃からジャズシンガーを志し、18才で単身渡米。2001年頃からアメリカと日本で並行して音楽活動を開始し、さまざまなアーティストの作品に参加。04年にメジャーデビュー。3rdシングル「奇跡を望むなら...」で一躍注目を集め、08年「君のすべてに」の着うた（R）の配信が､300万ダウンロードを突破する大ヒットを記録。そのアンサーソング「素直になれたら」も、08年最速ダウンロード記録を次々と塗り替える大ヒット。ダウンロード世代のヒロインとして活躍している。')
Artist.create(artist_name: 'コブクロ' ,artist_introduction: 'コブクロ　小渕健太郎（G＆Vo）、黒田俊介（Vo）によるデュオ。1998年、大阪の路上でストリートミュージシャンをしていた黒田と小渕が出会い結成。2001年、シングル「YELL～エール～／Bell」でメジャーデビュー。2004年に発売されたシングル「永遠にともに／Million Films」収録曲の「永遠にともに」が、NHK『みんなのうた』で放送され結婚式ソングとして話題に。2005年、『第56回 NHK紅白歌合戦』に初出場。メロディラインとハーモニーの美しさで老若男女を問わず人気を集める、日本を代表するボーカルユニット。')
Artist.create(artist_name: 'スピッツ' ,artist_introduction: 'スピッツ　草野マサムネ（Vo＆G）、三輪テツヤ（G）、田村明浩（B）、崎山龍男（Dr）によるポップスバンド。都内でのライブ活動によって注目され、1991年にメジャーデビューする。シングル「ロビンソン」のロングヒットで人気を集める。1997年からは、ロックイベント『ロックロックこんにちは！』を主催する。')
Artist.create(artist_name: 'back number' ,artist_introduction: 'back number（バックナンバー）　清水依与吏（V＆G）、小島和也（B＆Cho）、栗原寿（Dr）によるロックバンド。2004年10月結成。2011年4月、シングル「はなびら」でメジャーデビュー。同年、新人ながら『ROCK IN JAPAN』『RISING SUN ROCK FES.』など6本の夏フェスに出演。以降、シングル「クリスマスソング」、「ハッピーエンド」、「ヒロイン」、「高嶺の花子さん」などのヒットソングを発表。2015年12月、アルバム『シャンデリア』で初のオリコンランキング1位を記録。')
Artist.create(artist_name: '宇多田　ヒカル' ,artist_introduction: '宇多田ヒカル（ウタダ ヒカル）　シンガー・ソングライター。1983年1月19日生まれ。A型。1998年、シングル「Automatic」で日本デビュー。翌年リリースしたアルバム『First Love』で、約765万枚という驚異的な売上げを記録する。日本を代表する女性アーティストとして活躍。')
Artist.create(artist_name: 'スキマスイッチ' ,artist_introduction: 'スキマスイッチ　大橋卓弥（Vo＆G）、常田真太郎（P）による2人組ユニット。1999年結成。2002年に『AUGUSTA CAMP 2002』のサブステージに出演し注目を集める。翌年にシングル「view」でメジャーデビュー。シングル「全力少年」で『第56回 NHK紅白歌合戦』に初出場、シングル「ボクノート」で『第48回 輝く！日本レコード大賞』金賞を受賞した。高い音楽性が幅広い層から支持を集めている。')
Artist.create(artist_name: 'ナオトインティライミ' ,artist_introduction: '8月15日三重県生まれ、千葉県育ち。

世界66カ国を一人で渡り歩き、各地でLIVEを行い、世界の音楽と文化を体感。

『インティ ライミ』とは南米インカの言葉で『太陽の祭り』を意味する。

自らのソロ活動の他、コーラス&ギターとして Mr.Childrenツアーサポートメンバーに抜擢され、知名度を上げていく。2010年にメジャーデビュー。

「タカラモノ ～この声がなくなるまで～」、「今のキミを忘れない」では１００万ダウンロードを超えるヒット。2012年リリースの3rdアルバム「風歌キャラバン」は自身初となるオリコン・ウィークリーチャート1位を獲得。同年にはNHK紅白歌合戦に初出場を果たす。 2015年には15thシングル「いつかきっと」が資生堂シーブリーズCM楽曲タイアップとなり、6月には初のベストアルバム「THE BEST!」が発売。年末には自身初となる大阪、京セラドームでのLIVEも行い4万人の観客と共に大成功のうちに収める。

2016年7月リリース18thシングル「Overflows〜言葉にできなくて〜」はフジテレビ系「痛快TV スカッとジャパン 胸キュンスカッと」テーマソングとしても起用され、配信開始と共に主要配信9サイト･18部門で1位を獲得し､iTunes･レコチョク･歌ネットなどでは週間ランキング1位を獲得｡')
Artist.create(artist_name: '加藤　ミリヤ' ,artist_introduction: '1988年生まれのシンガーソングライター。2004年に「Never let go / 夜空」でデビューするとリアルで等身大な歌詞とメロディセンス、生きざまが支持され瞬く間に同世代女性のカリスマとして注目を集めた。
ファッションデザイナーとしても活躍する彼女の髪型やメイク、ファッションを真似する“ミリヤー”現象を巻き起こし、『VOGUE JAPAN WOMAN OF THE YEAR 2010』に選ばれる。現在は小説家としても才能を発揮。
デビュー15周年、現在も現代女性の愛や葛藤を歌い続け、“時代の代弁者”と呼ばれている。')
Artist.create(artist_name: 'モーニング娘。' ,artist_introduction: 'テレビ東京系「ASAYAN」でのオーディション企画、「シャ乱Qロックヴォーカリストオーディション」に落選した5人が、インディーズのCDシングル「愛の種」を5日間で5万枚売り切ることを条件にメジャーデビューを果たす。グループ名の由来は「いろいろついてくる、盛り沢山、おトク感、親しみやすい」を表したもの。シングル「モーニングコーヒー」でメジャーデビュー。７thシングル「LOVEマシーン」で初のミリオンを記録。その後、女性グループが持つ数々の記録を更新し続けている。
2014年1月1日よりアーティスト名の後ろに、西暦の年号を入れて表記する。
それに伴い2019年1月1日よりアーティスト名が「モーニング娘。19（もーにんぐむすめ わんないん」に改名。')
Artist.create(artist_name: '福山　雅治' ,artist_introduction: '福山雅治（フクヤマ マサハル）　シンガー・ソングライター・俳優。1969年2月6日生まれ、長崎県出身。O型。1990年、シングル「追憶の雨の中」でデビュー。以降、「桜坂」、「HELLO」、「IT’S ONLY LOVE」、「虹／ひまわり／それがすべてさ」などヒット曲を多数リリース。俳優としても活躍しており、フジテレビ系ドラマ『ひとつ屋根の下』をはじめ、同局系ドラマ『ガリレオ』シリーズ、NHK大河ドラマ『龍馬伝』などに出演。2015年9月、女優の吹石一恵と結婚。2016年12月、第1子の誕生を発表。')
Artist.create(artist_name: 'DA PUMP' ,artist_introduction: '2001年に花開いたバンド、Bump Of Chicken。インディーズからジワジワと、そして瞬く間に広まった天体観測。最近のロック畑では珍しいくらいストレートなメロディ、誰もが思い出せるようなそんな小っさな感触と記憶を綴った歌詞、それを楽器の一部のようでバンプをバンプ足らしめる藤原のボーカル。間違いなく2002年の台風の目となった彼らは、当時まだ22才。日本のロックも彼等がいるお蔭で、まだまだワクワクすることを忘れさせてはくれません。

Bump Of Chickenは、藤原基央（Vo&G）、増川弘明（G）、直井由文（B）、升秀夫（Dr）の４人メンバー。４人とも1979年生まれの千葉県育ち、幼稚園からの幼なじみという珍しいパターンは、彼等の一癖も二癖もある性格特徴を推測するに、ある意味最強な絆を保つ所以なのではないでしょうか。かの長嶋茂雄と同じ小学校に通い、中学３年で藤原・直井・升とプラス１名で学園祭の為にバンドを組む。増川は、受験終了後に加入。翌1995年に初ライヴ。地元千葉でコンスタントにライヴ活動に励む。1996年、Beat Brust in Japan に「ガラスのブルース」で出場。全国大会でグランプリに輝く。')
Artist.create(artist_name: '長渕　剛' ,artist_introduction: '長渕 剛（ながぶちつよし）
1956年9月7日生まれ　鹿児島県出身

1978年シングル「巡恋歌」で本格デビュー。翌年にファースト・アルバム『風は南から』をリリースし、’80年「順子」でチャート１位を獲得する。 以後、’85年「勇次」、’87年「ろくなもんじゃ ねぇ」、’88年「乾杯」「とんぼ」など、’80年代を通じヒットを連発。
’90年代に入り、’91年『JAPAN』、’93年『Captain of the Ship』など、オリジナリティに溢れたアルバムをリリースする。

’03年シングル「しあわせになろうよ」でシングルの総売り上げは1000万枚を突破。さらに、ソロ・アーティストとして12枚のオリジナル・アルバムでオリコンチャート1位獲得という、金字塔も打ち立てている。 また、’04年・夏、桜島の荒地を開拓して作った野外会場でのオールナイトライブでは、日本全国から75,000人を集めるという驚異の集客力を見せつけた。経済効果50億と言われたこの公演は、音楽界のみならず、国内に大きな衝撃と感動を与えた。

2011年の東日本大震災後は、いち早く復興支援ラジオ番組を立ち上げ、自らの足で被災地をたびたび訪れた。なかでも、航空自衛隊松島基地で敢行した自衛隊員激励ライブは、全国を感動の渦に巻き込んだ。年末にはNHK紅白歌合戦で石巻市門脇小の校庭から「ひとつ」を歌い、シングル・ヒットを記録。これらの経験から生まれた多数の歌を収めたアルバム「Stay Alive」を2012年5月にリリース。

2015年3月6日、「長渕剛HALL TOUR 2015 ‘ROAD TO FUJI’」（全国13会場14公演）をスタートし、ツアー中に録音されたLIVEシングル「富士の国」を6月22日にリリース。

8月22日、富士山麓に10万人を集めた前代未聞のオールナイト・ライブ・イベントを成功させる。

俳優としても、TVドラマ「家族ゲーム」「親子ゲーム」「とんぼ」、映画「オルゴール」「英二」他で主演。
さらに芸術分野では、1998年に東京・銀座の「日動画廊」に於いて初の詩画展を開催その後も全国で詩画展を開催し、
その画力も高い評価を得ている。')

# ジャンル
Genre.create(genre_name: 'J-POP')
Genre.create(genre_name: 'ロック')
Genre.create(genre_name: 'レゲエ')
Genre.create(genre_name: '洋楽')
Genre.create(genre_name: 'ヴィジュアル系')
Genre.create(genre_name: '演歌')
Genre.create(genre_name: 'K-POP')
Genre.create(genre_name: 'アニメソング')
Genre.create(genre_name: 'ヘヴィメタル')
Genre.create(genre_name: 'ジャズ')
Genre.create(genre_name: '民謡')
Genre.create(genre_name: 'トランス')
Genre.create(genre_name: 'ヒップホップ')
Genre.create(genre_name: 'ブルーズ')
Genre.create(genre_name: 'ゲーム/サウンドトラック')

# レーベル
Label.create(label_name: 'P-VINE')
Label.create(label_name: 'カクバリズム')
Label.create(label_name: 'BAYON PRODUCTION')
Label.create(label_name: '術ノ穴')
Label.create(label_name: 'MAGNIPH')
Label.create(label_name: 'Rallye Label')
Label.create(label_name: 'Maltine Records')
Label.create(label_name: 'TREKKIE TRAX')
Label.create(label_name: 'flau')
Label.create(label_name: 'shrine')


# 作品
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: 'とんぼ',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: 'いつかの少年',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: 'しゃぼん玉',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: 'RUN',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: '乾杯',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: 'ひまわり',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: '巡恋歌',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: '人間',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: 'しょっぱい三日月の夜',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: '友よ',price: '1000',stopped: '1')
Product.create(genre_id: '2',artist_id: '49',label_id: '1',product_name: 'JEEP',price: '1000',stopped: '1')
Product.create(genre_id: '1',artist_id: '1',label_id: '2',product_name: '瞳をとじて',price: '1000',stopped: '1')
Product.create(genre_id: '11',artist_id: '1',label_id: '2',product_name: '大きな古時計',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: '純恋歌',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: '恋時雨',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: 'ガチ桜',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: '花火',price: '1000',stopped: '1')
Product.create(genre_id: '7',artist_id: '12',label_id: '4',product_name: 'TIME',price: '1000',stopped: '1')
Product.create(genre_id: '8',artist_id: '36',label_id: '5',product_name: 'パノラマ',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: '覇王樹',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: '黄金魂',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: '応援歌',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: 'カラス',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: '晴伝説',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: '炎天夏',price: '1000',stopped: '1')
Product.create(genre_id: '3',artist_id: '6',label_id: '3',product_name: 'バブル',price: '1000',stopped: '1')
Product.create(genre_id: '6',artist_id: '4',label_id: '5',product_name: 'きずな橋',price: '1000',stopped: '1')
Product.create(genre_id: '6',artist_id: '4',label_id: '5',product_name: '一番星',price: '1000',stopped: '1')
Product.create(genre_id: '6',artist_id: '4',label_id: '5',product_name: 'ふるさと銀河',price: '1000',stopped: '1')
Product.create(genre_id: '6',artist_id: '4',label_id: '5',product_name: 'いのちの春',price: '1000',stopped: '1')

# ディスク
Disc.create(product_id: '1',disc_number: '1')
Disc.create(product_id: '2',disc_number: '1')
Disc.create(product_id: '3',disc_number: '1')
Disc.create(product_id: '4',disc_number: '1')
Disc.create(product_id: '5',disc_number: '1')
Disc.create(product_id: '6',disc_number: '1')
Disc.create(product_id: '7',disc_number: '1')
Disc.create(product_id: '8',disc_number: '1')
Disc.create(product_id: '9',disc_number: '1')
Disc.create(product_id: '10',disc_number: '1')
Disc.create(product_id: '11',disc_number: '1')
Disc.create(product_id: '12',disc_number: '1')
Disc.create(product_id: '13',disc_number: '1')
Disc.create(product_id: '14',disc_number: '1')
Disc.create(product_id: '15',disc_number: '1')
Disc.create(product_id: '16',disc_number: '1')
Disc.create(product_id: '17',disc_number: '1')
Disc.create(product_id: '18',disc_number: '1')
Disc.create(product_id: '19',disc_number: '1')
Disc.create(product_id: '20',disc_number: '1')
Disc.create(product_id: '21',disc_number: '1')
Disc.create(product_id: '22',disc_number: '1')
Disc.create(product_id: '23',disc_number: '1')
Disc.create(product_id: '24',disc_number: '1')
Disc.create(product_id: '25',disc_number: '1')
Disc.create(product_id: '26',disc_number: '1')
Disc.create(product_id: '27',disc_number: '1')
Disc.create(product_id: '28',disc_number: '1')
Disc.create(product_id: '29',disc_number: '1')
Disc.create(product_id: '30',disc_number: '1')
# 収録曲
Song.create(disc_id: '1',track_number: '1',song_name: 'とんぼ')
Song.create(disc_id: '1',track_number: '2',song_name: 'STAY DREAM ')
Song.create(disc_id: '2',track_number: '1',song_name: 'いつかの少年')
Song.create(disc_id: '3',track_number: '1',song_name: 'しゃぼん玉')
Song.create(disc_id: '4',track_number: '1',song_name: 'RUN')
Song.create(disc_id: '5',track_number: '1',song_name: '乾杯')
Song.create(disc_id: '6',track_number: '1',song_name: 'ひまわり')
Song.create(disc_id: '7',track_number: '1',song_name: '巡恋歌')
Song.create(disc_id: '8',track_number: '1',song_name: '人間')
Song.create(disc_id: '9',track_number: '1',song_name: 'しょっぱい三日月の夜')
Song.create(disc_id: '10',track_number: '1',song_name: '友よ')
Song.create(disc_id: '11',track_number: '1',song_name: 'JEEP')
Song.create(disc_id: '12',track_number: '1',song_name: '瞳をとじて')
Song.create(disc_id: '13',track_number: '1',song_name: '大きな古時計')
Song.create(disc_id: '14',track_number: '1',song_name: '純恋歌')
Song.create(disc_id: '15',track_number: '1',song_name: '恋時雨')
Song.create(disc_id: '16',track_number: '1',song_name: 'ガチ桜')
Song.create(disc_id: '17',track_number: '1',song_name: '花火')
Song.create(disc_id: '18',track_number: '1',song_name: 'TIME')
Song.create(disc_id: '19',track_number: '1',song_name: 'パノラマ')
Song.create(disc_id: '20',track_number: '1',song_name: '覇王樹')
Song.create(disc_id: '21',track_number: '1',song_name: '黄金魂')
Song.create(disc_id: '22',track_number: '1',song_name: '応援歌')
Song.create(disc_id: '23',track_number: '1',song_name: 'カラス')
Song.create(disc_id: '24',track_number: '1',song_name: '晴伝説')
Song.create(disc_id: '25',track_number: '1',song_name: '炎天夏')
Song.create(disc_id: '26',track_number: '1',song_name: 'バブル')
Song.create(disc_id: '27',track_number: '1',song_name: 'きずな橋')
Song.create(disc_id: '28',track_number: '1',song_name: '一番星')
Song.create(disc_id: '29',track_number: '1',song_name: 'ふるさと銀河')
Song.create(disc_id: '30',track_number: '1',song_name: 'いのちの春')
# 入荷
Arrival.create(product_id: '1',received_qty: '100')
Arrival.create(product_id: '2',received_qty: '100')
Arrival.create(product_id: '3',received_qty: '100')
Arrival.create(product_id: '4',received_qty: '100')
Arrival.create(product_id: '5',received_qty: '100')
Arrival.create(product_id: '6',received_qty: '100')
Arrival.create(product_id: '7',received_qty: '100')
Arrival.create(product_id: '8',received_qty: '100')
Arrival.create(product_id: '9',received_qty: '100')
Arrival.create(product_id: '10',received_qty: '100')
Arrival.create(product_id: '11',received_qty: '100')
Arrival.create(product_id: '12',received_qty: '100')
Arrival.create(product_id: '13',received_qty: '100')
Arrival.create(product_id: '14',received_qty: '100')
Arrival.create(product_id: '15',received_qty: '100')
Arrival.create(product_id: '16',received_qty: '100')
Arrival.create(product_id: '17',received_qty: '100')
Arrival.create(product_id: '18',received_qty: '100')
Arrival.create(product_id: '19',received_qty: '100')
Arrival.create(product_id: '20',received_qty: '100')
Arrival.create(product_id: '21',received_qty: '100')
Arrival.create(product_id: '22',received_qty: '100')
Arrival.create(product_id: '23',received_qty: '100')
Arrival.create(product_id: '24',received_qty: '100')
Arrival.create(product_id: '25',received_qty: '100')
Arrival.create(product_id: '26',received_qty: '100')
Arrival.create(product_id: '27',received_qty: '100')
Arrival.create(product_id: '28',received_qty: '100')
Arrival.create(product_id: '29',received_qty: '100')
Arrival.create(product_id: '30',received_qty: '100')
# 廃棄
Disposal.create(product_id: '1',scrapped_qty: '1')
Disposal.create(product_id: '3',scrapped_qty: '2')
Disposal.create(product_id: '5',scrapped_qty: '6')
Disposal.create(product_id: '7',scrapped_qty: '1')
Disposal.create(product_id: '9',scrapped_qty: '8')
Disposal.create(product_id: '13',scrapped_qty: '6')
Disposal.create(product_id: '15',scrapped_qty: '3')
Disposal.create(product_id: '16',scrapped_qty: '1')
Disposal.create(product_id: '19',scrapped_qty: '17')
Disposal.create(product_id: '24',scrapped_qty: '13')
Disposal.create(product_id: '26',scrapped_qty: '12')
# レビュー
Review.create(end_user_id: '1',product_id: '1', review_content: '音質がとても良かったです')
Review.create(end_user_id: '2',product_id: '2', review_content: '音質がとても良かったです')
Review.create(end_user_id: '3',product_id: '3', review_content: '音質がとても良かったです')
Review.create(end_user_id: '4',product_id: '4', review_content: '音質がとても良かったです')
Review.create(end_user_id: '5',product_id: '5', review_content: '音質がとても良かったです')
Review.create(end_user_id: '6',product_id: '6', review_content: '音質がとても良かったです')
Review.create(end_user_id: '7',product_id: '7', review_content: '音質がとても良かったです')
Review.create(end_user_id: '8',product_id: '8', review_content: '音質がとても良かったです')
Review.create(end_user_id: '9',product_id: '9', review_content: '音質がとても良かったです')
Review.create(end_user_id: '1',product_id: '10', review_content: '音質がとても良かったです')
Review.create(end_user_id: '2',product_id: '11', review_content: '音質がとても良かったです')
Review.create(end_user_id: '3',product_id: '12', review_content: '音質がとても良かったです')
Review.create(end_user_id: '4',product_id: '13', review_content: '音質がとても良かったです')
Review.create(end_user_id: '5',product_id: '14', review_content: '音質がとても良かったです')
Review.create(end_user_id: '6',product_id: '15', review_content: '音質がとても良かったです')
Review.create(end_user_id: '7',product_id: '16', review_content: '音質がとても良かったです')
Review.create(end_user_id: '8',product_id: '17', review_content: '音質がとても良かったです')
Review.create(end_user_id: '9',product_id: '18', review_content: '音質がとても良かったです')
Review.create(end_user_id: '1',product_id: '19', review_content: '音質がとても良かったです')
Review.create(end_user_id: '2',product_id: '20', review_content: '音質がとても良かったです')
Review.create(end_user_id: '3',product_id: '21', review_content: '音質がとても良かったです')
Review.create(end_user_id: '4',product_id: '22', review_content: '音質がとても良かったです')
Review.create(end_user_id: '5',product_id: '23', review_content: '音質がとても良かったです')
Review.create(end_user_id: '6',product_id: '24', review_content: '音質がとても良かったです')
Review.create(end_user_id: '7',product_id: '25', review_content: '音質がとても良かったです')
Review.create(end_user_id: '8',product_id: '26', review_content: '音質がとても良かったです')
Review.create(end_user_id: '9',product_id: '27', review_content: '音質がとても良かったです')
Review.create(end_user_id: '1',product_id: '28', review_content: '音質がとても良かったです')
Review.create(end_user_id: '2',product_id: '29', review_content: '音質がとても良かったです')
Review.create(end_user_id: '3',product_id: '30', review_content: '音質がとても良かったです')
# 問い合わせ
Inquiry.create(inquirer_name: '和田　アキ子',mail: 'y@y',inquiry_content: '私の曲も入れなさいよ')
Inquiry.create(inquirer_name: '長渕　剛',mail: 't@t',inquiry_content: '俺の曲沢山入ってるな。わかってんじゃねーか。')
Inquiry.create(inquirer_name: '吉田　沙織',mail: 'u@u',inquiry_content: 'CDが届きません')
Inquiry.create(inquirer_name: '佐藤　健',mail: 'j@j',inquiry_content: '会員登録が出来ません')
Inquiry.create(inquirer_name: '佐藤　剛',mail: 'n@n',inquiry_content: '退会したのですがやはり戻せませんでしょうか？')
Inquiry.create(inquirer_name: '斎藤さん',mail: 'm@m',inquiry_content: '斎藤さんだぞ？')
Inquiry.create(inquirer_name: 'ボビーオロゴン',mail: 'k@k',inquiry_content: '俺がボビーだよ')
Inquiry.create(inquirer_name: '田中',mail: 'i@i',inquiry_content: 'クレジットカードって使えますか？')
Inquiry.create(inquirer_name: '坂木',mail: 'l@l',inquiry_content: '海外でも注文できますか？')
Inquiry.create(inquirer_name: '新井',mail: 'o@o',inquiry_content: '届け先は選べますか？')
Inquiry.create(inquirer_name: '吉松',mail: 'p@p',inquiry_content: '購入してからどれくらいで届きますか？')




# 問い合わせ返信
Reply.create(inquiry_id: '10',reply_content: '3日ほどです。')
Reply.create(inquiry_id: '1',reply_content: '早急にご用意いたします。')
Reply.create(inquiry_id: '2',reply_content: '有難うございます。')

# いいね
Favorite.create(product_id: '1',end_user_id: '1')
Favorite.create(product_id: '1',end_user_id: '2')
Favorite.create(product_id: '1',end_user_id: '3')
Favorite.create(product_id: '1',end_user_id: '4')
Favorite.create(product_id: '1',end_user_id: '5')
Favorite.create(product_id: '1',end_user_id: '6')
Favorite.create(product_id: '1',end_user_id: '7')
Favorite.create(product_id: '1',end_user_id: '8')
Favorite.create(product_id: '1',end_user_id: '9')
Favorite.create(product_id: '20',end_user_id: '1')
Favorite.create(product_id: '2',end_user_id: '1')
Favorite.create(product_id: '3',end_user_id: '1')
Favorite.create(product_id: '4',end_user_id: '1')
Favorite.create(product_id: '5',end_user_id: '1')
Favorite.create(product_id: '6',end_user_id: '1')
Favorite.create(product_id: '7',end_user_id: '1')
Favorite.create(product_id: '8',end_user_id: '1')
Favorite.create(product_id: '9',end_user_id: '1')
Favorite.create(product_id: '10',end_user_id: '1')
Favorite.create(product_id: '11',end_user_id: '1')
Favorite.create(product_id: '12',end_user_id: '1')
Favorite.create(product_id: '13',end_user_id: '1')
Favorite.create(product_id: '14',end_user_id: '1')
Favorite.create(product_id: '15',end_user_id: '1')
Favorite.create(product_id: '16',end_user_id: '1')
Favorite.create(product_id: '17',end_user_id: '1')
Favorite.create(product_id: '18',end_user_id: '1')
Favorite.create(product_id: '19',end_user_id: '1')
# 注文履歴
Order.create(end_user_id: '1',deliveries_address: '東京都千代田区',payment_method: '1',subtotal_ex_tax: '4000',subtotal_in_tax: '4320',freight: '500',arrival_status: '2')
Order.create(end_user_id: '2',deliveries_address: '京都府京都市',payment_method: '1',subtotal_ex_tax: '2000',subtotal_in_tax: '2160',freight: '500',arrival_status: '2')
Order.create(end_user_id: '3',deliveries_address: '大阪府大阪市',payment_method: '2',subtotal_ex_tax: '7000',subtotal_in_tax: '7560',freight: '500',arrival_status: '2')
Order.create(end_user_id: '4',deliveries_address: '香川県高松市',payment_method: '1',subtotal_ex_tax: '11000',subtotal_in_tax: '11880',freight: '500',arrival_status: '1')
Order.create(end_user_id: '5',deliveries_address: '福岡県福岡市',payment_method: '2',subtotal_ex_tax: '15000',subtotal_in_tax: '16200',freight: '500',arrival_status: '1')
Order.create(end_user_id: '6',deliveries_address: '北海道札幌市',payment_method: '2',subtotal_ex_tax: '19000',subtotal_in_tax: '21520',freight: '500',arrival_status: '1')
Order.create(end_user_id: '7',deliveries_address: '北海道根室市',payment_method: '1',subtotal_ex_tax: '23000',subtotal_in_tax: '24840',freight: '500',arrival_status: '0')
Order.create(end_user_id: '8',deliveries_address: '山口県山口市',payment_method: '1',subtotal_ex_tax: '27000',subtotal_in_tax: '29160',freight: '500',arrival_status: '0')
Order.create(end_user_id: '9',deliveries_address: '山口県山口市',payment_method: '1',subtotal_ex_tax: '31000',subtotal_in_tax: '33480',freight: '500',arrival_status: '0')
Order.create(end_user_id: '1',deliveries_address: '東京都千代田区',payment_method: '1',subtotal_ex_tax: '54000',subtotal_in_tax: '58320',freight: '500',arrival_status: '0')
Order.create(end_user_id: '2',deliveries_address: '京都府京都市',payment_method: '2',subtotal_ex_tax: '63000',subtotal_in_tax: '68040',freight: '500',arrival_status: '0')
Order.create(end_user_id: '3',deliveries_address: '鹿児島県鹿児島市',payment_method: '2',subtotal_ex_tax: '23000',subtotal_in_tax: '24840',freight: '500',arrival_status: '0')
Order.create(end_user_id: '4',deliveries_address: '鹿児島県鹿児島市',payment_method: '2',subtotal_ex_tax: '23000',subtotal_in_tax: '24840',freight: '500',arrival_status: '0')
# 注文内容
OrderContent.create(order_id: '2',product_id: '4',product_qty: '1',price_sum_ex_tax: '1000',price_sum_in_tax: '1080')
OrderContent.create(order_id: '2',product_id: '5',product_qty: '1',price_sum_ex_tax: '1000',price_sum_in_tax: '1080')
OrderContent.create(order_id: '3',product_id: '6',product_qty: '3',price_sum_ex_tax: '3000',price_sum_in_tax: '3240')
OrderContent.create(order_id: '3',product_id: '7',product_qty: '4',price_sum_ex_tax: '2000',price_sum_in_tax: '4320')
OrderContent.create(order_id: '4',product_id: '8',product_qty: '5',price_sum_ex_tax: '5000',price_sum_in_tax: '5400')
OrderContent.create(order_id: '4',product_id: '9',product_qty: '6',price_sum_ex_tax: '6000',price_sum_in_tax: '6480')
OrderContent.create(order_id: '5',product_id: '10',product_qty: '7',price_sum_ex_tax: '7000',price_sum_in_tax: '7560')
OrderContent.create(order_id: '5',product_id: '11',product_qty: '8',price_sum_ex_tax: '8000',price_sum_in_tax: '8640')
OrderContent.create(order_id: '6',product_id: '12',product_qty: '9',price_sum_ex_tax: '9000',price_sum_in_tax: '9720')
OrderContent.create(order_id: '6',product_id: '13',product_qty: '10',price_sum_ex_tax: '10000',price_sum_in_tax: '10800')
OrderContent.create(order_id: '7',product_id: '14',product_qty: '11',price_sum_ex_tax: '11000',price_sum_in_tax: '11880')
OrderContent.create(order_id: '7',product_id: '15',product_qty: '12',price_sum_ex_tax: '12000',price_sum_in_tax: '12960')
OrderContent.create(order_id: '8',product_id: '16',product_qty: '13',price_sum_ex_tax: '13000',price_sum_in_tax: '14040')
OrderContent.create(order_id: '8',product_id: '17',product_qty: '14',price_sum_ex_tax: '14000',price_sum_in_tax: '15120')
OrderContent.create(order_id: '9',product_id: '18',product_qty: '15',price_sum_ex_tax: '15000',price_sum_in_tax: '16200')
OrderContent.create(order_id: '9',product_id: '19',product_qty: '16',price_sum_ex_tax: '16000',price_sum_in_tax: '17280')
OrderContent.create(order_id: '10',product_id: '20',product_qty: '17',price_sum_ex_tax: '17000',price_sum_in_tax: '18360')
OrderContent.create(order_id: '10',product_id: '21',product_qty: '18',price_sum_ex_tax: '18000',price_sum_in_tax: '19440')
OrderContent.create(order_id: '10',product_id: '22',product_qty: '19',price_sum_ex_tax: '19000',price_sum_in_tax: '21520')
OrderContent.create(order_id: '11',product_id: '23',product_qty: '20',price_sum_ex_tax: '20000',price_sum_in_tax: '21600')
OrderContent.create(order_id: '11',product_id: '24',product_qty: '21',price_sum_ex_tax: '21000',price_sum_in_tax: '22680')
OrderContent.create(order_id: '11',product_id: '25',product_qty: '22',price_sum_ex_tax: '22000',price_sum_in_tax: '23760')
OrderContent.create(order_id: '12',product_id: '26',product_qty: '23',price_sum_ex_tax: '23000',price_sum_in_tax: '24840')
OrderContent.create(order_id: '1',product_id: '1',product_qty: '1',price_sum_ex_tax: '1000',price_sum_in_tax: '1080')
OrderContent.create(order_id: '1',product_id: '2',product_qty: '1',price_sum_ex_tax: '1000',price_sum_in_tax: '1080')
OrderContent.create(order_id: '1',product_id: '3',product_qty: '2',price_sum_ex_tax: '2000',price_sum_in_tax: '2160')
OrderContent.create(order_id: '13',product_id: '27',product_qty: '24',price_sum_ex_tax: '24000',price_sum_in_tax: '25920')


