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
Organizer.create!(
  email: 'o@o1',
  name: '主催者1',
  password: 'pppppp'
)

35.times do |time|
  User.create!(name: "test_#{time}", email: "e@e#{time}", password: "pppppp")
end
 User.create!(name: "ゲスト", email: "e@e36", password: "pppppp")

  Event.create!(
    name: 'お城コース',
    introduction: 'スタート地点：城
    ゴール地点：中学校',
    place: '彦根',
    capacity: 11,
    day: '2021-12-5',
    distance: 3.0,
    organizer_id: 1
    )
  Event.create!(
    name: '林道コース',
    introduction: 'スタート地点：道の駅
    ゴール地点：パン屋',
    place: '長浜',
    capacity: 21,
    day: '2021-12-12',
    distance: 5.0,
    organizer_id: 1
    )
  Event.create!(
    name: '公園コース',
    introduction: 'スタート地点：グラウンド
    ゴール地点：デパート',
    place: '草津',
    capacity: 31,
    day: '2021-12-19',
    distance: 10.0,
    organizer_id: 1
    )
  Event.create!(
    name: '山道コース',
    introduction: 'スタート地点：駅
    ゴール地点：高校',
    place: '米原',
    capacity: 41,
    day: '2021-12-26',
    distance: 3.0,
    organizer_id: 1
  )
  Event.create!(
    name: '川沿いコース',
    introduction: 'スタート地点：ファーストフード店
    ゴール地点：スーパー',
    place: '大津',
    capacity: 51,
    day: '2021-12-27',
    distance: 5.0,
    organizer_id: 1
  )


  10.times do |number|
    Entry.create!(user_id: number+4, event_id: 1, time: number+300 ,rank: number+3, start_time: '2021-12-5')
  end
    18.times do |number|
    Entry.create!(user_id: number+10, event_id: 2,time: number+1200 ,rank: number+4, start_time: '2021-12-12')
  end
    31.times do |number|
    Entry.create!(user_id: number+1 ,event_id: 3,time: 0 ,rank: number+1, start_time: '2021-12-19' )
  end
    20.times do |number|
    Entry.create!(user_id: number+1 ,event_id: 4,time: 0 ,rank: number+1, start_time: '2021-12-26')
  end
    20.times do |number|
    Entry.create!(user_id: number+1 ,event_id: 5,time: 0 ,rank: number+1, start_time: '2021-12-27')
  end
  Entry.create!(user_id: 36, event_id: 1, time: 299, rank: 2, start_time: '2021-12-5')
  Entry.create!(user_id: 36, event_id: 2, time: 1200, rank: 3, start_time: '2021-12-12')

  Entry.create!(user_id: 3, event_id: 1, time: 298, rank: 1, start_time: '2021-12-5')
  Entry.create!(user_id: 3, event_id: 2, time: 1190, rank: 1, start_time: '2021-12-12')
  Entry.create!(user_id: 5, event_id: 2, time: 1195, rank: 2, start_time: '2021-12-12')


  Map.create!(event_id: 1, start: 35.27679167064741, start_k: 136.25176259487478, goal: 35.24571985815995, goal_k: 136.22741371387067,
  way: 35.25950095843937, way_k: 136.21849524281228)
  Map.create!(event_id: 2, start: 35.34371272359508, start_k: 136.2775220678444, goal: 35.29706703982673, goal_k: 136.25711045736492,
  way: 35.30820462531615, way_k: 136.26112266142712)
  Map.create!(event_id: 3, start:  35.005956350631216, start_k: 135.91443679822848, goal: 34.99872358259439, goal_k: 135.90980194108553,
  way: 35.010490785593305, way_k: 135.92111013409829)
  Map.create!(event_id: 4, start: 35.31484576380116, start_k: 136.28875987589532, goal: 35.32002832070543, goal_k: 136.29721419847786,
  way: 35.31539730172106, way_k: 136.29374878451884)
  Map.create!(event_id: 5, start: 35.12535943647787, start_k: 135.91933079121918, goal: 35.12258655477777, goal_k: 135.94503951132663,
  way: 35.12126682768895, way_k: 135.94604504968555)

  10.times do |number|
  Favorite.create!(user_id: number+1, event_id: 1)
  end
  20.times do |number|
  Favorite.create!(user_id: number+1, event_id: 2)
  end







