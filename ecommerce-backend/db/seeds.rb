User.destroy_all
Item.destroy_all


20.times do 

    name =  Faker::FunnyName.two_word_name
    username = name.split(' ').join('').downcase
    user = User.create(
        name: name,
        username: username,
        email: 'example@email.com'
    )
    title = Faker::Commerce.material
    keyword = title.downcase
    user.items.create(
        title: title,
        price: Faker::Commerce.price,
        keywords: keyword
    )
end