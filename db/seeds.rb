puts "DESTROY IT ALL!!"

Location.destroy_all
UserLocation.destroy_all
User.destroy_all

puts "ALL CLEAR"

puts "LETS MAKE SOME LOCATIONS..."

l1 = Location.create(name: "Inner Peaks South End", address: "2220 S Tryon St, Charlotte, NC 28203", city: "Charlotte", image: "https://innerpeaks.com/wp-content/uploads/South-End118.jpg", description: "Inner Peaks South End is a state-of-the-art climbing gym, right in the heart of historic South End and a short walk from breweries, restaurants and nightlife. Our auto-belays allow for you to get a full-climbing workout, alone or with friends.")
l2 = Location.create(name: "Glencairn Garden", address: "725 Crest St, Rock Hill, SC 29730", city: "Rock Hill", image: "https://i0.wp.com/www.roadtripsandrollercoasters.com/wp-content/uploads/2021/05/PXL_20210502_191450375.jpg?resize=1024%2C768&ssl=1", description: "For over 50 years, award-winning Glencairn Garden has displayed nature’s finest colors, textures, and shapes." )
l3 = Location.create(name: "Mint Museum Uptown", address: "500 S Tryon St, Charlotte, NC 28202", city: "Charlotte", image: "https://cdn0.weddingwire.com/vendor/491534/3_2/960/jpg/davis-party-574_51_435194-161885867853285.jpeg", description: "Mint Museum Uptown houses the internationally renowned Craft + Design collection, as well as outstanding collections of American and contemporary art.")
l4 = Location.create(name: "Cat's Paw Winery", address: "1567 Fayrene Rd, Rock Hill, SC 29732", city: "Rock Hill", image: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_limit,q_75,w_1200/https://assets.simpleviewinc.com/simpleview/image/upload/crm/yorkcountysc/41_CatsPaw_585b55e7-5056-a36a-0b120f42ecd36eaf.jpg", description: "Cat’s Paw Winery is the ideal venue to meet and relax with friends! Nestled on 40 acres in a quiet country setting, you might even be greeted by some of the cats that call this place home.")
l5 = Location.create(name: "Discovery Place Science", address: "301 N Tryon St, Charlotte, NC 28202", city: "Charlotte", image: "https://eventective-media.azureedge.net/2493995_lg.jpg", description: "Discovery Place Science is an innovative, hands-on Museum in Uptown Charlotte that encourages scientific exploration and creativity.")
l6 = Location.create(name: "Sleeping Giant Distillery", address: "122 Southern St, Rock Hill, SC 29730", city: "Rock Hill", image: "https://cdn.vox-cdn.com/thumbor/qrHUIMHZf6nTiRC3d_7iwdLE0PQ=/0x0:1440x1080/1200x800/filters:focal(605x425:835x655)/cdn.vox-cdn.com/uploads/chorus_image/image/70487850/271986939_478914593667328_3643899562550697592_n.0.jpg", description: "Sleeping Giant Distillery is York County, South Carolina's 1st legal distillery since prohibition.")
l7 = Location.create(name: "Bush-N-Vine Farm", address: "1650 Filbert Hwy, York, SC 29745", city: "York", image: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_610,q_75,w_910/https://assets.simpleviewinc.com/simpleview/image/upload/crm/yorkcountysc/Bush-n-Vine-1_a37504ed-5056-a36a-0b709a99155779b3.jpg", description: "Bush-n-Vine is a family-owned farm providing you with locally-grown strawberries, peaches, blueberries, raspberries and fresh produce in season.")

puts "YEP, THOSE ARE INDEED SOME PLACES!"

puts "I WANNA BE WHERE THE USERS AREEE...."

u1 = User.create(name: "Sunny", email: "sunny@email.com", password: "ILikeCats1234*")
u2 = User.create(name: "Tommy", email: "tommy@email.com", password: "ILikeDogs1234*")
u3 = User.create(name: "Luca", email: "luca@email.com", password: "Meow1234*")

puts "MY BIKE"

puts "LETS GIVE THEM SOME FAV PLACES..."

ul1 = UserLocation.create(location: l2, user: u1)
ul2 = UserLocation.create(location: l4, user: u1)
ul3 = UserLocation.create(location: l1, user: u1)
ul4 = UserLocation.create(location: l7, user: u2)
ul5 = UserLocation.create(location: l4, user: u2)
ul6 = UserLocation.create(location: l2, user: u2)
ul7 = UserLocation.create(location: l6, user: u2)
ul8 = UserLocation.create(location: l4, user: u3)
ul8 = UserLocation.create(location: l5, user: u3)
ul9 = UserLocation.create(location: l3, user: u3)

puts "THATS WHAT I'M TALKING ABOUT!"

puts "WE'RE FINISHED BOYS"

