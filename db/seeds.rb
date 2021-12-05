# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'a@a1',
  password: 'pppppp'
)

10.times do |time|
  User.create!(name: "test_#{time}", email: "test_#{time}@test.com", password: "1234567890")
end

# User.create!(
#     name: 'アルジュナ',
#     email: 's@s1',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'カルナ',
#     email: 's@s2',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ギルガメッシュ',
#     email: 's@s3',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ニトクリス',
#     email: 's@s4',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'オジマン',
#     email: 's@s5',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'アーラシュ',
#     email: 's@s6',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'アキレウス',
#     email: 's@s7',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ダビデ',
#     email: 's@s8',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ロムルス',
#     email: 's@s9',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'レオニダス',
#     email: 's@s10',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'カエサル',
#     email: 's@s11',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'クレオパトラ',
#     email: 's@s12',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'クー・フーリン',
#     email: 's@s13',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ブーティカ',
#     email: 's@s14',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ネロ',
#     email: 's@s15',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ひみこ',
#     email: 's@s16',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ゲオルギウス',
#     email: 's@s17',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'アルトリア',
#     email: 's@s18',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'モードレッド',
#     email: 's@s19',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'マーリン',
#     email: 's@s20',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ランスロット',
#     email: 's@s21',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ガウェイン',
#     email: 's@s22',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'トリスタン',
#     email: 's@s23',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ベディヴィエール',
#     email: 's@s24',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: '紫式部',
#     email: 's@s25',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: '清少納言',
#     email: 's@s26',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ジャンヌ',
#     email: 's@s27',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ダヴィンチ',
#     email: 's@s28',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'コロンブス',
#     email: 's@s29',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'エリザベート',
#     email: 's@s30',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: '織田信長',
#     email: 's@s31',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'ナポレオン',
#     email: 's@s32',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: '坂本龍馬',
#     email: 's@s33',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'エジソン',
#     email: 's@s34',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: 'テスラ',
#     email: 's@s35',
#     password: 'pppppp'
#   )
#   User.create!(
#     name: ' ゲスト',
#     email: 's@s36',
#     password: 'pppppp'
#   )

  Event.create!(
    name: '公園コース',
    introduction: '手軽で身近でアットホームな大会',
    place: '草津',
    capacity: 11,
    day: '2021-11-21',
    distance: 3.0
    )
  Event.create!(
    name: '山道コース',
    introduction: 'スタート地点：彦根城
    ゴール地点：中学校',
    place: '米原',
    capacity: 21,
    day: '2021-11-28',
    distance: 5.0
    )
  Event.create!(
    name: '川沿いコース',
    introduction: '全国有数のクロスカントリーコース',
    place: '大津',
    capacity: 31,
    day: '2021-12-5',
    distance: 10.0
    )
  Event.create!(
    name: 'お城コース',
    introduction: '歴史・文化にもふれあうことができます',
    place: '彦根',
    capacity: 41,
    day: '2021-12-12',
    distance: 3.0
  )
  Event.create!(
    name: '林道コース',
    introduction: '上り下りのアドバイスを交えて徹底サポートします',
    place: '長浜',
    capacity: 51,
    day: '2021-12-19',
    distance: 5.0
  )


  10.times do |number|
    Entry.create!(user_id: 1+number, event_id: 1, time: number+300 ,rank: number+1)
  end
  #   18.times do |number|
  #   Entry.create!(user_id: number+10, event_id: 2,time: number+1200 ,rank: number+3)
  # end
  #   20.times do |number|
  #   Entry.create!(user_id: number+1 ,event_id: 3,time: number+300 ,rank: number+1)
  # end
  #   20.times do |number|
  #   Entry.create!(user_id: number+1 ,event_id: 4,time: number+300 ,rank: number+1)
  # end
  #   20.times do |number|
  #   Entry.create!(user_id: number+1 ,event_id: 5,time: number+300 ,rank: number+1)
  # end
  # Entry.create!(user_id: 36, event_id: 1, time: 299, rank: 2, start_time: '2021-11-21')
  # Entry.create!(user_id: 36, event_id: 2, time: 299, rank: 3, start_time: '2021-11-28')
  # Entry.create!(user_id: 36, event_id: 3, time: 299, rank: 4, start_time: '2021-12-5')
  # Entry.create!(user_id: 36, event_id: 4, time: 299, rank: 5, start_time: '2021-12-12')
  # Entry.create!(user_id: 36, event_id: 5, time: 299, rank: 6, start_time: '2021-12-19')
  # Entry.create!(user_id: 3, event_id: 2, time: 1190, rank: 1)
  # Entry.create!(user_id: 5, event_id: 2, time: 1195, rank: 2)


  Map.create!(event_id: 1, start: 35.27679167064741, start_k: 136.25176259487478, goal: 35.24571985815995, goal_k: 136.22741371387067,
  way: 35.25950095843937, way_k: 136.21849524281228)
  Map.create!(event_id: 2, start: 35.34371272359508, start_k: 136.2775220678444, goal: 35.29706703982673, goal_k: 136.25711045736492,
  way: 35.30820462531615, way_k: 136.26112266142712)




