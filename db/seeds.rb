# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 管理者
AdminUser.create(:email, '':encrypted_password '')
# エンドユーザー
EndUser.create(:email '', :encrypted_password '', :lastname_kanji '',:firstname_kanji '', :lastname_kana '',:firstname_kana '',:phone_number '',)


# お届け先
Delivery.create(:end_user_id '', :lastname_kanji '',:firstname_kanji '',:lastname_kana '', :firstname_kana '',:phone_number '',:zipcode '',:address '')
# カード
Card.create(:end_user_id '',:customer_id '',:card_id '')
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

# アーティスト
Artist.create(artist_name: '平井　堅' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'AAA' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '天童　よしみ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '米津　玄師' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '湘南乃風' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'あいみょん' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'RADWIMPS' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'FUNKY MONKEY BABYS' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'GReeeeN' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'EXILE' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '東方神起' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'ポルノグラフィティ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'Aqua Timez' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'HY' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'AK-69' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'HAN-KUN' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '若旦那' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'WANIMA' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '星野　原' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '浜崎　あゆみ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'aiko' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '安室　奈美恵' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '中島　みゆき' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '五木　ひろし' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '松田　聖子' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '北島　三郎' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '西野　カナ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '郷　ひろみ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '大塚　愛' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '和田　アキ子' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'AI' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '哀川　翔' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '青山　テルマ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'AKB-48' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'SKE-48' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'NMB-48' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'HKT-48' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '乃木坂46' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'GLAY' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'UVERworld' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'ゆず' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '長渕　剛' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '水樹　奈々' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'JUJU' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'コブクロ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'スピッツ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'back number' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '宇多田　ヒカル' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'スキマスイッチ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'ナオトインティライミ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '加藤　ミリヤ' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'モーニング娘。' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: '福山　雅治' ,artist_introduction: '紹介文を変更してください')
Artist.create(artist_name: 'DA PUMP' ,artist_introduction: '紹介文を変更してください')

# 作品
Product.create(:genre_id '',:artist_id '',:label_id '',:product_name '',:price '',:stopped '')

# ディスク
Disc.create(:product_id '',:disc_number '')
# 収録曲
Song.create(:disc_id '',:track_number '',:song_name '')
# 入荷
Arrival.ceate(:product_id '',:received_qty '')
# 廃棄
Disposal.create(:product_id '',:scrapped_qty '')
# レビュー
Review.create(:end_user_id '',:product_id '', :review_content '')

# いいね
Favorite.create(:product_id '',:end_user_id '')
# 注文履歴
Order.create(:end_user_id '',:deliveries_address '',:payment_method '',:subtotal_ex_tax '',:subtotal_in_tax '',:freight '',:arrival_status '')
# 注文内容
OrderContent.create(:order_id '',:product_id '',:product_qty '',:price_sum_ex_tax '',:price_sum_in_tax '')
# 問い合わせ
Inquiry.create(:inquirer_name '',:mail '',:inquiry_content)
# 問い合わせ返信
Reply.create(:inquiry_id '',:reply_content '')




