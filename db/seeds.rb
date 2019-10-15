# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Place.create({
  name: "大厚木カントリークラブ　桜コース",
  address: "神奈川県厚木市上荻野4088",
  access: "東名高速道路/厚木IC 11 km",
  detail: "厚木市郊外の丘陵地にあるＯＵＴ・ＩＮの18ホール。桜コースは比較的フラットなコースが多い林間風の趣。",
  variation: Place.variations[:course],
})

Place.create({
  name: "小田原城カントリー倶楽部",
  address: "神奈川県小田原市根府川667",
  access: "小田原厚木道路/石橋ＩＣ 10 km",
  detail: "一番近い『天空のゴルフコース』",
  variation: Place.variations[:course],
})

Place.create({
  name: "沼津国際カントリークラブ",
  address: "静岡県沼津市足高字尾ノ上441-334",
  access: "東名高速道路/沼津ＩＣ 5 km",
  detail: "新東名長泉沼津ICより4km★第五世代ﾆｭｰﾍﾞﾝﾄｸﾞﾘｰﾝ",
  variation: Place.variations[:course],
})


Place.create({
  name: "明治神宮外苑ゴルフ練習場",
  address: "東京都新宿区霞ヶ丘町3番2号",
  access: "首都高速4号新宿線外苑出口から車で約3分",
  detail: "150ヤード",
  variation: Place.variations[:driving_range],
})

Place.create({
  name: "ロッテ葛西ゴルフ",
  address: "東京都江戸川区臨海町2-4-2",
  access: "葛西ICから車で約3分",
  detail: "250ヤード",
  variation: Place.variations[:driving_range],
})

Place.create({
  name: "藤沢ジャンボゴルフ",
  address: "神奈川県藤沢市遠藤3415",
  access: "東名・圏央道　海老名ICから車で約20分",
  detail: "266ヤード",
  variation: Place.variations[:driving_range],
})


Place.create({
  name: "ゴルフパートナー 港北ニュータウン店",
  address: "神奈川県横浜市都筑区荏田東1-1-46",
  access: "センター南駅",
  detail: "営業時間10:00〜20:00",
  variation: Place.variations[:shop],
})

Place.create({
  name: "ゴルフパートナー ヴィクトリアゴルフトレッサ横浜店",
  address: "神奈川県横浜市港北区師岡町７００番地
トレッサ横浜北棟１Ｆｳﾞｨｸﾄﾘｱｺﾞﾙﾌ内",
  access: "大倉山駅",
  detail: "営業時間10:00〜21:00",
  variation: Place.variations[:shop],
})

Place.create({
  name: "ゴルフパートナー 江の島インドア練習場店",
  address: "神奈川県藤沢市片瀬海岸2-17-27",
  access: "片瀬江ノ島駅",
  detail: "営業時間10:00〜22:00",
  variation: Place.variations[:shop],
})