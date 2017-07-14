class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
    seed.generate_admin
  end

  def generate_products
    Product.destroy_all
    User.destroy_all
    product_images = [
      "https://codepo8.github.io/canvas-images-and-pixels/img/horse.png",
      "https://www.dhresource.com/0x0s/f2-albu-g3-M01-45-79-rBVaHVXMYiyAdhjeAAKMXVH87ho921.jpg/horse-boy-mask-halloween-animation-game-show.jpg",
      "http://www.dhresource.com/260x260s/f2-albu-g5-M00-15-91-rBVaI1iurGWAV019AAFYkCxlCLY176.jpg/1701-full-head-mask-horse-head-mask-creepy.jpg",
      "http://funnypartyshop.ro/297-home_default/masca-halloween-cal-cu-dunga-alba.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRycYAqVbcgQzxg5rVekIIjGgeMP3-6TBnlyRURCWUv5nAHQ7Dz",
      "http://www.pngpix.com/wp-content/uploads/2016/03/Horse-PNG-image-1-250x296.png",
      "http://www.musthavetips.net/wp-content/uploads/2016/10/51Xb6Ad7MfL.jpg"
    ]
    20.times do |i|
      Product.create!(
        name: Faker::Lorem.word,
        price: rand(10...100),
        description: Faker::Lorem.sentence(5, false, 0).chop,
        image: product_images.sample)
    end
    p "added #{Product.count} products"
  end

  def generate_admin
    User.create!(
      name: "Admin",
      email: "admin@admin.com",
      password: "1234567",
      password_confirmation: "1234567",
      admin: true
    )
    p "created admin"
  end
end

Seed.begin
