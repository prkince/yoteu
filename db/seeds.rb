# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Ship.destroy_all
Category.destroy_all

puts 'Creating categories...'
explorer = Category.create!(name: 'explorer', description: 'Ships who conquered the world')
historical = Category.create!(name: 'historical', description: 'Ships eveyrone must remembered')
warship = Category.create!(name: 'warship', description: 'Ships involded in battles')
prk_ship = Category.create!(name: 'PrkShip', description: 'Ships you can rely on')

puts 'Creating ships...'

#explorers
Ship.create!(sku: 'astrolobe-size-1', name: 'Astrolobe Size 1', 
	description: 'The Astrolobe was a horse barge converted to an exploration ship of the French Navy and was originally named Coquille. She is famous for her travels with Jules Dumont d’Urville.', 
	dimension: 'Model Dimensions: Length 60cm x Width 17cm x Height 44cm', category: explorer, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_12_wnbjeg.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_13_uklj0e.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_12_wnbjeg.jpg', 
	detail: 'She is famous for her travels with Jules Dumont d’Urville. The name derives from a Voyage under the command of Louis Isidore Duperrey. Louis Isidore Duperrey commanded Coquille on its circumnavigation of the earth (1822?1825) with Jules Dumont d’Urville as second. René-Primevère Lesson also travelled on Coquille as a naval doctor and naturalist. On their return in March 1825, Lesson and Dumont brought back to France an imposing collection of animals and plants collected on the Falkland Islands, on the coasts of Chile and Peru, in the archipelagos of the Pacific and New Zealand, New Guinea and Australia. During the voyage the ship spent two weeks in the Bay of Islands in the north of New Zealand in 1824.On the return voyage to France the ship sailed through the Ellice Islands (now known as Tuvalu). Early navigational instrument, the astrolabe, a precursor to the sextant.', 
	quantity: 4, price: 1500)

Ship.create!(sku: 'hms-endeavour-size-2', name: 'HMS Endeavour Size 2', 
	description: 'Iconic ship.', 
	dimension: 'Model Dimensions: Length 77cm x Width 25cm x Height 72cm', category: explorer, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837410/bobato/boat_model_4_werdec.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_7_xf3q1d.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837407/bobato/boat_model_15_emqy0t.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique minima sint pariatur porro quibusdam voluptatum molestiae quasi eligendi, repellat nihil doloribus neque sapiente corporis cum. Consequuntur hic ducimus dolorem alias.',
	quantity: 2, price: 750)

Ship.create!(sku: 'wasa-size-4', name: 'Wasa Size 4', 
	description: 'Iconic ship.', 
	dimension: 'Model Dimensions: Length 110cm x Width 42cm x Height 88cm', category: explorer, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_9_imfizw.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837405/bobato/boat_model_5_uwgvn5.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837403/bobato/boat_model_2_pmvdqp.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus, necessitatibus minus. Dolores, corporis, delectus atque saepe quisquam nobis vitae animi neque enim nemo, ad ipsum iusto? Laborum corrupti odit cumque!',
	quantity: 2, price: 2300)

#historicals
Ship.create!(sku: 'albatros', name: 'Albatros', 
	description: 'Named like a bird.', 
	dimension: 'Model Dimensions: Length 74cm x Width 22cm x Height 57cm', category: historical, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_12_wnbjeg.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583167765/bobato/boat_model_pmxesu.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_9_imfizw.jpg',  
	detail: 'Albatross, originally named Albatros, later, was a sailing ship built as a schooner at the state shipyard in Amsterdam, Netherlands, in 1920, to serve as a pilot boat in the North Sea. Albatros was built in Baltimore in 1840 and was fitted with a gun deck. The shape of her slim and elegant hull was inspired by French frigates that frequently came to port along the American coast. The schooners became a popular sight first along both American coasts and later on further afield. On the west coast, they were mainly used to transport timber whereas on the east coast their main cargo was coal. Albatros was mainly used to transport timber whereas on the east coast their main cargo was coal. Shipyard: Amsterdam, Netherlands', 
	quantity: 7, price: 320)

Ship.create!(sku: 'titanic-size-3', name: 'Titanic Size 3', 
	description: 'had some Iceberg issue.', 
	dimension: 'Model Dimensions: Length 150cm x Width 18cm x Height 45cm', category: historical, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837403/bobato/boat_model_3_mkygf7.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837407/bobato/boat_model_15_emqy0t.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_7_xf3q1d.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae dolorum, itaque id deserunt iste nihil animi molestiae dignissimos ducimus soluta quaerat optio, corrupti hic aliquam sed eveniet quidem, voluptatum eaque.',
	quantity: 1, price: 1850)

Ship.create!(sku: 'viking', name: 'Viking', 
	description: 'Warriors on board.', 
	dimension: 'Model Dimensions: Length 82cm x Width 44cm x Height 59cm', category: historical, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_7_xf3q1d.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_12_wnbjeg.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837403/bobato/boat_model_3_mkygf7.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi debitis, voluptatibus eius tempora similique voluptates dignissimos quaerat iure vero placeat sint eveniet, dolorem fuga numquam at labore veritatis! At, incidunt!',
	quantity: 8, price: 7000)

#warships
Ship.create!(sku: 'black-pearl', name: 'Black Pearl', 
	description: 'Pirate of the Caribbean.', 
	dimension: 'Model Dimensions: Length 210cm x Width 70cm x Height 153cm', category: warship, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_7_xf3q1d.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583167765/bobato/boat_model_pmxesu.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_16_onvdgb.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum vitae quaerat nihil nisi enim accusamus consequuntur, at voluptatem nostrum, delectus eveniet quae sit corporis aperiam! Quasi vel impedit beatae officiis.',
	quantity: 9, price: 240)

Ship.create!(sku: 'hms-victorysize-4', name: 'HMS Victory Size 4', 
	description: 'Let the battle begin.', 
	dimension: 'Model Dimensions: Length 56cm x Width 26cm x Height 48cm', category: warship, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583167765/bobato/boat_model_pmxesu.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_12_wnbjeg.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837407/bobato/boat_model_15_emqy0t.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio veritatis dicta impedit, quas eius animi modi ducimus pariatur, quos earum quaerat obcaecati, vitae perspiciatis! Esse veritatis hic natus dolore, cumque.',
	quantity: 7, price: 2950)

Ship.create!(sku: 'canot-imperial', name: 'Canot Imperial', 
	description: 'Where is the emperor?', 
	dimension: 'Model Dimensions: Length 82cm x Width 17cm x Height 41cm', category: warship, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583167765/bobato/boat_model_pmxesu.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837410/bobato/boat_model_4_werdec.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_7_xf3q1d.jpg',
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic dicta alias, nobis nesciunt natus magnam error quae soluta nemo, maiores adipisci voluptatibus recusandae ab eos modi unde nihil quasi reprehenderit!', 
	quantity: 6, price: 670)

#explorers
Ship.create!(sku: 'astrolobe-size-1', name: 'Astrolobe Size 1', 
	description: 'The Astrolobe was a horse barge converted to an exploration ship of the French Navy and was originally named Coquille. She is famous for her travels with Jules Dumont d’Urville.', 
	dimension: 'Model Dimensions: Length 60cm x Width 17cm x Height 44cm', category: explorer, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_16_onvdgb.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_7_xf3q1d.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837403/bobato/boat_model_2_pmvdqp.jpg', 
	detail: 'She is famous for her travels with Jules Dumont d’Urville. The name derives from a Voyage under the command of Louis Isidore Duperrey. Louis Isidore Duperrey commanded Coquille on its circumnavigation of the earth (1822?1825) with Jules Dumont d’Urville as second. René-Primevère Lesson also travelled on Coquille as a naval doctor and naturalist. On their return in March 1825, Lesson and Dumont brought back to France an imposing collection of animals and plants collected on the Falkland Islands, on the coasts of Chile and Peru, in the archipelagos of the Pacific and New Zealand, New Guinea and Australia. During the voyage the ship spent two weeks in the Bay of Islands in the north of New Zealand in 1824.On the return voyage to France the ship sailed through the Ellice Islands (now known as Tuvalu). Early navigational instrument, the astrolabe, a precursor to the sextant.', 
	quantity: 4, price: 1500)

#historicals
Ship.create!(sku: 'albatros', name: 'Albatros', 
	description: 'Named like a bird.', 
	dimension: 'Model Dimensions: Length 74cm x Width 22cm x Height 57cm', category: historical, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_16_onvdgb.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_9_imfizw.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837403/bobato/boat_model_2_pmvdqp.jpg',  
	detail: 'Albatross, originally named Albatros, later, was a sailing ship built as a schooner at the state shipyard in Amsterdam, Netherlands, in 1920, to serve as a pilot boat in the North Sea. Albatros was built in Baltimore in 1840 and was fitted with a gun deck. The shape of her slim and elegant hull was inspired by French frigates that frequently came to port along the American coast. The schooners became a popular sight first along both American coasts and later on further afield. On the west coast, they were mainly used to transport timber whereas on the east coast their main cargo was coal. Albatros was mainly used to transport timber whereas on the east coast their main cargo was coal. Shipyard: Amsterdam, Netherlands', 
	quantity: 7, price: 320)

#warships
Ship.create!(sku: 'black-pearl', name: 'Black Pearl', 
	description: 'Pirate of the Caribbean.', 
	dimension: 'Model Dimensions: Length 210cm x Width 70cm x Height 153cm', category: warship, 
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837403/bobato/boat_model_2_pmvdqp.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583167765/bobato/boat_model_pmxesu.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_9_imfizw.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum vitae quaerat nihil nisi enim accusamus consequuntur, at voluptatem nostrum, delectus eveniet quae sit corporis aperiam! Quasi vel impedit beatae officiis.',
	quantity: 9, price: 240)

#Prk Ship
#category_id: 15 <-- pour rajouter un bateau en console direct 

Ship.create!(sku: 'explorer-ship', name: 'The Explorer', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 
	dimension: 'Model Dimensions: Length 210cm x Width 70cm x Height 153cm', category: prk_ship,
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_13_uklj0e.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837409/bobato/boat_model_16_onvdgb.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837406/bobato/boat_model_9_imfizw.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum vitae quaerat nihil nisi enim accusamus consequuntur, at voluptatem nostrum, delectus eveniet quae sit corporis aperiam! Quasi vel impedit beatae officiis.',
	quantity: 9, price: 1500)

Ship.create!(sku: 'the-licorne', name: 'The Licorne', 
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 
	dimension: 'Model Dimensions: Length 210cm x Width 70cm x Height 153cm', category: prk_ship,
	photo_url: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837403/bobato/boat_model_2_pmvdqp.jpg', 
	photo_url_two: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583837403/bobato/boat_model_3_mkygf7.jpg', 
	photo_url_three: 'https://res.cloudinary.com/dovu27lye/image/upload/v1583167765/bobato/boat_model_pmxesu.jpg', 
	detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum vitae quaerat nihil nisi enim accusamus consequuntur, at voluptatem nostrum, delectus eveniet quae sit corporis aperiam! Quasi vel impedit beatae officiis.',
	quantity: 3, price: 9500)

puts 'Finished!'