# This file should contain all the record creation needed to seed the dataset with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the dataset with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: '食器')
Category.create(name: '陶芸')
Category.create(name: 'インテリア')
Category.create(name: '衣服')
Category.create(name: 'アクセサリー')
Category.create(name: '日用品')

State.create(name: '北海道')
State.create(name: '東北')
State.create(name: '関東')
State.create(name: '北陸')
State.create(name: '中部')
State.create(name: '近畿')
State.create(name: '四国')
State.create(name: '中国')
State.create(name: '九州・沖縄')

Scene.create(name: '引き出物')
Scene.create(name: '引越し祝い')
Scene.create(name: '還暦祝い')
Scene.create(name: '結婚祝い')
Scene.create(name: '暑中見舞い')
Scene.create(name: '出産見舞い')
Scene.create(name: '自分用')




Product.create(name: '江戸切子グラス', price: '1000', description: '色の付いたガラスに精密に切子した江戸切子のグラスです。二色で展開しており、ペアルックでお使いいただけます。', image: open(File.expand_path('../../assets/images/ecsite_pic/dataset/dataset01.jpg', __FILE__)), category_id: '食器', state_id: '関東', scene_id: '引き出物')
Product.create(name: '切子グラス', price: '1000', description: '藍色が鮮やかな切子グラスです。湯のみやお猪口など多くの種類を揃えています。', image: open(File.expand_path('../../assets/images/ecsite_pic/dataset/dataset02.jpg', __FILE__)), category_id: '食器', state_id: '関東', scene_id: '引き出物')
