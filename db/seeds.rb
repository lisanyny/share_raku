# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'admin@admin.com',
   password: '123456'
  )

customer = Customer.create!(
   [
    {email: 'hanae@test.com', first_name: '山田', last_name: '花恵', password: 'password'},
    {email: 'yuko@test.com', first_name: '佐藤', last_name: '優子', password: 'password'},
    {email: 'taro@test.com', first_name: '田中', last_name: '太郎', password: 'password'}
   ]
  )

 Place.create!(
   [
    {name: '名古屋城', address: '愛知県名古屋市中区本丸１－１'},
    {name: '名古屋港水族館', address: '愛知県名古屋市港区港町１−３'},
    {name: '東山動植物園', address: '愛知県名古屋市千種区東山元町３丁目７０'},
    {name: '熱田神宮', address: '愛知県名古屋市熱田区神宮１丁目１−１'},
    {name: 'リニア・鉄道館', address: '愛知県名古屋市港区金城ふ頭３丁目２−２'},
    {name: '名古屋市科学館', address: '愛知県名古屋市中区栄２丁目１７−１'},
    {name: '大名古屋ビルヂング', address: '愛知県名古屋市中村区名駅３丁目２８−１２'},
    {name: 'オアシス２１', address: '愛知県名古屋市東区東桜１丁目１１−１'},
    {name: 'ミッドランドスクエア', address: '愛知県名古屋市中村区名駅４丁目７−１'},
    {name: '徳川美術館', address: '愛知県名古屋市東区徳川町１０１７'},
    {name: '名古屋市美術館', address: '愛知県名古屋市中区栄２丁目１７−２５'},
    {name: 'ノリタケの森', address: '愛知県名古屋市西区則武新町３丁目１−３６'},
    {name: '鶴舞公園', address: '愛知県名古屋市昭和区鶴舞１'},
    {name: '大須観音', address: '愛知県名古屋市中区大須２丁目２１−４７'},
    {name: 'トヨタ産業技術記念館', address: '愛知県名古屋市西区則武新町４丁目１−３５'},
    {name: 'とだがわこどもランド', address: '愛知県名古屋市港区春田野１丁目３６１６'},
    {name: '徳川園', address: '愛知県名古屋市東区徳川町１００１'},
    {name: '名古屋市博物館', address: '愛知県名古屋市瑞穂区瑞穂通１丁目２７−１'},
    {name: '名城公園', address: '愛知県名古屋市北区名城１丁目２−２５'},
    {name: '東谷山フルーツパーク', address: '愛知県名古屋市守山区上志段味東谷２１１０'},
    {name: '白鳥庭園', address: '愛知県名古屋市熱田区熱田西町２−５'},
    {name: 'ヤマザキマザック美術館', address: '愛知県名古屋市東区葵１丁目１９−３０'},
    {name: '東山スカイタワー', address: '愛知県名古屋市千種区田代町瓶杁１−８'},
    {name: 'ジェイアール名古屋タカシマヤ', address: '愛知県名古屋市中村区名駅１丁目１−４'},
    {name: 'バンテリンドーム　ナゴヤ', address: '愛知県名古屋市東区大幸南１丁目１−１'},
    {name: 'レゴランド・ジャパン', address: '愛知県名古屋市港区金城ふ頭２丁目２−１'},
    {name: 'ジブリパーク', address: '愛知県長久手市茨ケ廻間乙１５３３−１'},
    {name: '愛・地球博記念公園（モリコロパーク）', address: '愛知県長久手市茨ヶ廻間乙１５３３−１'},
    {name: '博物館明治村', address: '愛知県犬山市内山１'},
    {name: '犬山城', address: '愛知県犬山市犬山北古券６５−２'},
    {name: '日本モンキーパーク', address: '愛知県犬山市官林２６'},
    {name: '野外民族博物館（リトルワールド）', address: '愛知県犬山市今井成沢９０−４８'},
    {name: '清洲城', address: '愛知県清須市朝日城屋敷１−１'},
    {name: 'キリンビアパーク名古屋', address: '愛知県清須市寺野花笠１００'},
    {name: '日間賀島', address: '愛知県知多郡南知多町日間賀島'},
    {name: '篠島', address: '愛知県南知多郡篠島'},
    {name: '岡崎公園', address: '愛知県岡崎市康生町５６１−１'},
    {name: '岡崎城', address: '愛知県岡崎市康生町５６１−１'},
    {name: '香嵐渓', address: '愛知県豊田市足助町飯盛'},
    {name: '佐久島', address: '愛知県西尾市一色町佐久島'},
    {name: '豊川稲荷', address: '愛知県豊川市豊川町１'},
    {name: '伊良湖岬灯台', address: '愛知県田原市伊良湖町古山'},
    {name: 'ラグーナテンボス', address: '愛知県蒲郡市海陽町２−３'},
    {name: '安城産業文化公園 デンパーク', address: '愛知県愛知県安城市赤松町梶１'},
    {name: 'サンテパルクたはら', address: '愛知県田原市野田町芦ヶ池８'},
    {name: '竹島', address: '愛知県蒲郡市竹島町３−１５'},
    {name: '竹島水族館', address: '愛知県蒲郡市竹島町１−６'},
    {name: 'お菓子の城', address: '愛知県犬山市新川１−１１'},
   ]
  )