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
  name: "上野原カントリークラブ",
  address: "山梨県上野原市上野原6887",
  access: "中央自動車道/上野原ＩＣ 6 km",
  detail: "丘陵コース。標高450ｍの向風山のゆるやかな東斜面に広がり、クラブハウスからコースが一望できる。全体にフェアウェイは広く、ブラインドホールが少ないのでのびのびプレーできる。アウトは打ち下ろしにはじまり、途中Ｓ字に曲がるロングホールなどがあり変化がある。",
  variation: Place.variations[:course],
})

Place.create({
  name: "甲斐ヒルズカントリー倶楽部",
  address: "山梨県甲斐市団子新居1927-4",
  access: "中央自動車道/韮崎ＩＣ 7 km",
  detail: "南アルプスの山々をのぞみ、遠くに富士山までも見渡せる絶好のロケーション。この恵まれた自然環境の中に、甲斐ヒルズカントリー倶楽部の18ホールズはあります。ストレスを感じさせないフラットでワイドなフェアウェイ、コースを引き締めるハザード。2グリーンでありながら、そのいずれもがクオリティの高いベントグリーンというのも魅力です。スクラッチプレーヤーからビギナーまで、あらゆるレベルのゴルファーが楽しめるレイアウトになっております。",
  variation: Place.variations[:course],
})

Place.create({
  name: "小淵沢カントリークラブ",
  address: "山梨県北杜市小淵沢町10060-163",
  access: "中央自動車道/小淵沢ＩＣ 3 km",
  detail: "八ヶ岳南麓に位置し、標高1,150ｍの高地でありながら、コースの高低差が少ない林間コース。コースは自生する白樺・カラマツでセパレートされフェアウエイが広く、各ホールから八ヶ岳・南アルプス・富士山等の眺望も楽しめる。
コース設計は国内に数々の名コースを手がけた安田幸吉。ブラインドホールの少ないオーソドックスな設計は戦略性に富み、初級者から上級者まで幅広いゴルファーを満足させる。
夏場は湿度が低いので、真夏でも涼しく快適なプレーをお楽しみいただけます。",
  variation: Place.variations[:course],
})

Place.create({
  name: "甲府国際カントリークラブ",
  address: "山梨県笛吹市御坂町下黒駒3193",
  access: "中央自動車道/一宮御坂ＩＣ 5 km",
  detail: "自然の地形を生かした丘陵コース。距離以上に長さを感じるフェアウエイと微妙なアンジュレーションの２ベントグリーンは正確なショット・パットがスコアメイクにつながる変化に富んだ楽しめる18ホール。特に№４ホールは打ち下ろしで豪快なティーショットをお楽しみ頂けます。
雄大な自然、四季ごとの花木に囲まれ、特に春には桃の花が一面ピンクのじゅうたんのように眼下にひろがり、美しく箱庭のような趣がある。",
  variation: Place.variations[:course],
})


Place.create({
  name: "明治神宮外苑ゴルフ練習場",
  address: "東京都新宿区霞ヶ丘町3番2号",
  access: "首都高速4号新宿線外苑出口から車で約3分",
  detail: "全長150ヤード",
  variation: Place.variations[:driving_range],
})

Place.create({
  name: "ロッテ葛西ゴルフ",
  address: "東京都江戸川区臨海町2-4-2",
  access: "葛西ICから車で約3分",
  detail: "全長250ヤード",
  variation: Place.variations[:driving_range],
})

Place.create({
  name: "藤沢ジャンボゴルフ",
  address: "神奈川県藤沢市遠藤3415",
  access: "東名・圏央道　海老名ICから車で約20分",
  detail: "全長266ヤード",
  variation: Place.variations[:driving_range],
})

Place.create({
  name: "ロイヤルグリーン水戸内原",
  address: "茨城県水戸市鯉渕町5951",
  access: "常磐道水戸ICから車で約15分",
  detail: "全長230ヤード",
  variation: Place.variations[:driving_range],
})

Place.create({
  name: "メトログリーン東陽町",
  address: "東京都江東区新砂1-6-40",
  access: "首都高速　新木場出口から車で約5分",
  detail: "全長165ヤード",
  variation: Place.variations[:driving_range],
})

Place.create({
  name: "SHONAN G.O.G.　【湘南銀河大橋ゴルフ】",
  address: "神奈川県平塚市四之宮4-18-1",
  access: "圏央道(茅ヶ崎～寒川北)　寒川南ICから車で約5分",
  detail: "全長350ヤード",
  variation: Place.variations[:driving_range],
})

Place.create({
  name: "サンプラス杉久保ゴルフガーデン",
  address: "神奈川県海老名市杉久保北3-3-14",
  access: "圏央道　海老名ＩＣから車で約10分",
  detail: "全長220ヤード",
  variation: Place.variations[:driving_range],
})


Place.create({
  name: "ゴルフパートナー 港北ニュータウン店",
  address: "神奈川県横浜市都筑区荏田東1-1-46",
  access: "センター南駅から徒歩20分",
  detail: "営業時間10:00〜20:00",
  variation: Place.variations[:shop],
})

Place.create({
  name: "ゴルフパートナー ヴィクトリアゴルフトレッサ横浜店",
  address: "神奈川県横浜市港北区師岡町７００番地
トレッサ横浜北棟１Ｆｳﾞｨｸﾄﾘｱｺﾞﾙﾌ内",
  access: "大倉山駅から徒歩15分",
  detail: "営業時間10:00〜21:00",
  variation: Place.variations[:shop],
})

Place.create({
  name: "ゴルフパートナー 江の島インドア練習場店",
  address: "神奈川県藤沢市片瀬海岸2-17-27",
  access: "片瀬江ノ島駅から徒歩20分",
  detail: "営業時間10:00〜22:00",
  variation: Place.variations[:shop],
})

Place.create({
  name: "",
  address: "",
  access: "",
  detail: "",
  variation: Place.variations[:shop],
})

Place.create({
  name: "",
  address: "",
  access: "",
  detail: "",
  variation: Place.variations[:shop],
})

Place.create({
  name: "",
  address: "",
  access: "",
  detail: "",
  variation: Place.variations[:shop],
})

Place.create({
  name: "",
  address: "",
  access: "",
  detail: "",
  variation: Place.variations[:shop],
})

Place.create({
  name: "",
  address: "",
  access: "",
  detail: "",
  variation: Place.variations[:shop],
})