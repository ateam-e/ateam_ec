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

Product.create(name: '江戸切子グラス', price: '1000', description: '色の付いたガラスに精密に切子した江戸切子のグラスです。二色で展開しており、ペアルックでお使いいただけます。', image: open("#{Rails.root}/app/assets/images/ecsite_pic/dataset/dataset01.jpg"), category_id: '食器', state_id: '関東', scene_id: '引き出物')
Product.create(name: '切子グラス', price: '1000', description: '藍色が鮮やかな切子グラスです。湯のみやお猪口など多くの種類を揃えています。', image: open("#{Rails.root}/db/dataset/dataset02.jpg"), category_id: '食器', state_id: '関東', scene_id: '引き出物')
Product.create(name: '津軽塗夫婦箸', price: '1000', description: '鮮やかで強い色が印象的な津軽塗の箸です。夫婦箸となっており、贈り物にもぴったりです。', image: open("#{Rails.root}/db/dataset/dataset03.jpg"), category_id: '食器', state_id: '東北', scene_id: '結婚祝い')
Product.create(name: '青い切子グラス（薩摩切子）', price: '1000', description: '深みのある薩摩切子のグラスです。コースターとセットになっています。', image: open("#{Rails.root}/db/dataset/dataset04.jpg"), category_id: '食器', state_id: '九州・沖縄', scene_id: '引越し祝い')
Product.create(name: '猪口/徳利セット', price: '3000', description: '猪口と徳利のセット商品です。日本酒をより味わい深い体験にしてくれる一品です。', image: open("#{Rails.root}/db/dataset/dataset05.jpg"), category_id: '食器', state_id: '中部', scene_id: '還暦祝い')
Product.create(name: '箸/箸置き', price: '1000', description: 'シンプルな箸と箸置きのセットです。末端まで丁寧に塗装されており、末長く使える商品です。', image: open("#{Rails.root}/db/dataset/dataset06.jpg"), category_id: '食器', state_id: '北陸', scene_id: '結婚祝い')
Product.create(name: '小紋柄小皿', price: '1000', description: 'シンプルかつモダンな小皿です。小紋柄がかわいい商品になっています。', image: open("#{Rails.root}/db/dataset/dataset07.jpg"), category_id: '食器', state_id: '中国', scene_id: '引き出物')
Product.create(name: '有田焼の蕎麦猪口', price: '1000', description: '有田焼の蕎麦猪口です。400年以上続く焼き物であり、信頼できる一品です。', image: open("#{Rails.root}/db/dataset/dataset08.jpg"), category_id: '食器', state_id: '九州・沖縄', scene_id: '還暦祝い')
Product.create(name: '輪島塗夫婦椀', price: '2000', description: '輪島塗の夫婦椀です。丈夫さに重きを置いた塗装が施されており、長く使える商品です。', image: open("#{Rails.root}/db/dataset/dataset09.jpg"), category_id: '食器', state_id: '北陸', scene_id: '結婚祝い')
Product.create(name: '大風量扇子', price: '2480', description: 'モダンなカラーバリエーションを揃えた扇子です。細部まで丁寧に作られており、夏を彩る商品です。', image: open("#{Rails.root}/db/dataset/dataset10.jpg"), category_id: '日用品', state_id: '近畿', scene_id: '暑中見舞い')
Product.create(name: '横手急須', price: '2980', description: '注ぎ手の立場に立って作られた急須です。シンプルであり、目に飛び込んでくる水玉模様が特徴の商品です。', image: open("#{Rails.root}/db/dataset/dataset11.png"), category_id: '陶芸', state_id: '関東', scene_id: '還暦祝い')
Product.create(name: '照明スタンド', price: '108,000', description: '引箔の魅力を最大限に引き出した照明スタンドです。黄金色に光る姿は、中秋の夜空のような美しさがあります。', image: open("#{Rails.root}/db/dataset/dataset12.jpg"), category_id: 'インテリア', state_id: '中国', scene_id: '引越し祝い')
Product.create(name: 'ピアス', price: '4800', description: '工芸の素材の魅力をそのまま落とし込んだピアスです。小さい商品ながら、力強い存在感を放つ一品です。', image: open("#{Rails.root}/db/dataset/dataset13.jpg"), category_id: 'アクセサリー', state_id: '関東', scene_id: '自分用')
Product.create(name: 'ジャケット', price: '8800', description: '伝統的な模様を取り入れたジャケットです。肩からふわりと羽織ることができる心地よい着心地です。', image: open("#{Rails.root}/db/dataset/dataset14.jpg"), category_id: '衣服', state_id: '関東', scene_id: '自分用')
Product.create(name: 'hiraliのスカーフ', price: '3980', description: 'デザインが特徴的なスカーフです。新緑の緑が首元を彩ってくれます。', image: open("#{Rails.root}/db/dataset/dataset15.jpg"), category_id: '衣服', state_id: '近畿', scene_id: '自分用')
Product.create(name: '今治タオル', price: '2980', description: '確かな信頼を持つ今治のタオルです。ふわりとした肌触りがとても気持ちの良い商品です。', image: open("#{Rails.root}/db/dataset/dataset16.jpg"), category_id: '日用品', state_id: '四国', scene_id: '引越し祝い')
Product.create(name: '黒器の湯のみ', price: '1500', description: '重厚感漂う黒器の湯のみです。手にした時の重みには黒器の歴史が込められています。', image: open("#{Rails.root}/db/dataset/dataset17.jpg"), category_id: '陶芸', state_id: '東北', scene_id: '還暦祝い')
Product.create(name: '揺れるぐい呑', price: '1500', description: '一点もののぐい呑です。収まりのいい適度な丸みの帯びた形状に、ついついお酒が進んでしまう商品です。', image: open("#{Rails.root}/db/dataset/dataset18.jpg"), category_id: '食器', state_id: '中部', scene_id: '引越し祝い')
Product.create(name: '友禅のうつわ丸皿', price: '8800', description: '透明なガラスに浮かび上がる花柄を見ているだけでも美しい商品です。どのような食卓も彩ってくれる商品です。', image: open("#{Rails.root}/db/dataset/dataset19.jpg"), category_id: '食器', state_id: '北陸', scene_id: '引き出物')
Product.create(name: '漆まめさら', price: '2700', description: 'パステルカラーと中央のイラストが可愛らしい丸皿です。6色で展開しています。', image: open("#{Rails.root}/db/dataset/dataset20.png"), category_id: '食器', state_id: '東北', scene_id: '出産見舞い')


##Path Test
Product.create(name: '江戸切子グラス', price: '1000', description: '色の付いたガラスに精密に切子した江戸切子のグラスです。二色で展開しており、ペアルックでお使いいただけます。', image: open(File.expand_path('assets/images/ecsite_pic/dataset/dataset01.jpg', __FILE__)), category_id: '食器', state_id: '関東', scene_id: '引き出物')
Product.create(name: '切子グラス', price: '1000', description: '藍色が鮮やかな切子グラスです。湯のみやお猪口など多くの種類を揃えています。', image: open(File.expand_path('assets/images/ecsite_pic/dataset/dataset02.jpg', __FILE__)), category_id: '食器', state_id: '関東', scene_id: '引き出物')
