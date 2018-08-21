
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Picture.destroy_all
Tag.destroy_all
PictureTag.destroy_all
Comment.destroy_all 

(1..15).each do |num|
    User.create(
      username:"user#{num}",
      email: "user#{num}@example.com",
      password: "test123"
    )
  end

  ["nature", "houston", "art", "lol", "love", "relationship", "party", "ofc", "flatiron", "code", "shenanigans", "travel", "zzz", "thankful", "ily", "congrats", "bae", 'food', 'meow'].each do |tag_name|
    Tag.create(name: tag_name)
  end

  kismetzzz = 'https://scontent-dfw5-1.cdninstagram.com/vp/1a26549409d8abb3efd2b2b528aa8987/5C06640B/t51.2885-15/e35/28765897_532640397137241_5321271158971039744_n.jpg'

  kismetkisses = 
  'https://scontent-dfw5-1.cdninstagram.com/vp/ea7bfaef06145b95d66344f55b75e80c/5C37FA66/t51.2885-15/e35/13735878_1256416137704733_307278193_n.jpg'

  kismetcoffee = 'https://scontent-dfw5-1.cdninstagram.com/vp/dbb8f033b576872e0200e158bc2c05d7/5BF7A263/t51.2885-15/e35/13736818_289123471435180_863292473_n.jpg'

  daressalaam = 'http://www.hippotours.com/images/destinations/Dar-es-salaam.jpg'

  kismetread = 
  'https://scontent-dfw5-1.cdninstagram.com/vp/b36abb06e13d7057558b4b9f17997e73/5BF7628C/t51.2885-15/e35/13249662_1622170424768426_1166067964_n.jpg'

  beach = 
  'http://yvrdeals.com/img/ul/i6g4xf2ycdik2gjo.jpg'

  corgashian = 'https://slack-imgs.com/?c=1&url=https%3A%2F%2Fi.pinimg.com%2F736x%2Fa5%2F11%2F71%2Fa51171aba6a6a9f618b89779975dbd68--cutest-animals-funny-animals.jpg'

  beefrib = 'https://s3-media1.fl.yelpcdn.com/bphoto/wc0UvpO1QN6rgMjFD-fgPw/o.jpg'

  accident = 'https://slack-imgs.com/?c=1&url=http%3A%2F%2Fwww.memegen.com%2Fm%2Fx6259d.jpg'

  houston = 'https://slack-imgs.com/?c=1&url=https%3A%2F%2Fo.aolcdn.com%2Fimages%2Fdims3%2FGLOB%2Flegacy_thumbnail%2F600x314%2Fformat%2Fjpg%2Fquality%2F85%2Fhttp%253A%252F%252Fo.aolcdn.com%252Fhss%252Fstorage%252Fadam%252Fa4622f0464dedc7172b58089437fec7c%252FHouston-Mural-600jm121613.jpg'

  Picture.create(
    image_url: kismetzzz,
    title: "Rockabye baby",
    user_id: User.all[1].id
  )

  Picture.create(
    image_url: kismetkisses,
    title: "Muah!",
    user_id: User.all[2].id
  )

  Picture.create(
    image_url: kismetcoffee,
    title: "Coffee...Zzz...",
    user_id: User.all[3].id
  )

  Picture.create(
    image_url: daressalaam,
    title: "Tanzania - where Kelly got married!",
    user_id: User.all[4].id
  )

  Picture.create(
    image_url: kismetread,
    title: "Books are important.",
    user_id: User.all[5].id
  )

  Picture.create(
    image_url: beach,
    title: "Zanzibar, Tanzania.  Where we would rather be.",
    user_id: User.all[6].id
  )

  Picture.create(
    image_url: corgashian,
    title: "Booty girl.",
    user_id: User.all[7].id
  )

  Picture.create(
    image_url: beefrib,
    title: "Pablo, this is not me.",
    user_id: User.all[8].id
  )

  Picture.create(
    image_url: accident,
    title: "Whatever works.",
    user_id: User.all[9].id
  )

  Picture.create(
    image_url: houston,
    title: "H-town best town. #art",
    user_id: User.all[0].id
  )