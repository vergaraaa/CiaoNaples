//
//  Location.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 18/10/23.
//

import Foundation

struct Location: Identifiable, Hashable, Codable {
    let id: String
    let name: String
    let coverImage: String
    let images: [String]
    let locDescription: String
    let recommendations: [String]
    let latitude: Double
    let longitude: Double
    let category: Int
    var tag: String?
    var topChoice: Bool
    var publicTransport: Bool
    var ticketNeeded: Bool?
    var cheapChoice: Bool
}

extension Location {
    static let locations = [
        // Food And Drinks
        // Food
        Location(id: "1", name: "Ristorante Pizzeria Mattozzi", coverImage: "mattozzi_cover", images: ["mattozzi1", "mattozzi2", "mattozzi3", "mattozzi4"], locDescription: "Ristorante Mattozzi, managed by Alfonso Mattozzi, is a beloved eatery. The wood-paneled room, adorned with city prints, attracts professionals at lunch and a sophisticated evening crowd. Alfonso's high-quality Italian cuisine ensures a memorable dining experience.", recommendations: ["Make a previous reservation", "Ideal for special occasions"], latitude: 40.844102, longitude: 14.248773, category: Category.foodAndDrinks.id, tag: "Food", topChoice: true, publicTransport: true, cheapChoice: false),
        
        Location(id: "2", name: "Trattoria da Nennella", coverImage: "nennella_cover", images: ["nennella1", "nennella2", "nennella3"], locDescription: "Trattoria da Nennella in Naples is renowned for its chaotic and deliberately rude atmosphere, with waiters performing lively antics, such as dancing on tables and serving fruit in a ceramic toilet seat, making it more famous for its unique experience.", recommendations: ["The waiting time is 30 min approximately", "Closed from 15:00 to 18:00", "Closed on sundays"], latitude: 40.8419551, longitude: 14.2449703, category: Category.foodAndDrinks.id, tag: "Food", topChoice: true, publicTransport: true, cheapChoice: false),
        
        Location(id: "3", name: "Ermenegildo", coverImage: "ermenegildo_cover", images: ["ermenegildo1", "ermenegildo2", "ermenegildo3"], locDescription: "If you are looking to try some delicacies of the city of Naples, Ermenegildo offers one of the best fried pizzas in whole town.", recommendations: ["Cash-only, so make sure to bring some cash with you", "Great for social gatherings and lively conversations", "Enjoy your meal in the open air on their outdoor patio"], latitude: 40.838113, longitude: 14.3119962, category: Category.foodAndDrinks.id, tag: "Food", topChoice: true, publicTransport: true, cheapChoice: true),
        
        Location(id: "4", name: "Pizzeria Concettina ai Tre Santi", coverImage: "concettina_cover", images: ["concettina1", "concettina2"], locDescription: "A place to be for anyone who wants to try an experience that at the same time combines the traditional side of pizza and the gastronomic approach.", recommendations: ["Variety of vegetarian options available for non-meat eaters", "Open until the early hours, perfect for late-night cravings", "Bring your furry friend along, as this place is pet-friendly"], latitude: 40.8574657, longitude: 14.2521604, category: Category.foodAndDrinks.id, tag: "Food", topChoice: false, publicTransport: true, cheapChoice: false),
        
        Location(id: "5", name: "Zi Teresa", coverImage: "ziteresa_cover", images: ["ziteresa1", "ziteresa2", "ziteresa3"], locDescription: "The Naples Restaurant Zi Teresa, although in the heart of the city, is an oasis of peace away from chaos and smog.", recommendations: ["Don't miss the chef's special of the day", "They offer a selection of locally brewed craft beers", "Visit on weekends for a delightful brunch menu"], latitude: 40.8296374, longitude: 14.2482141, category: Category.foodAndDrinks.id, tag: "Food", topChoice: false, publicTransport: true, cheapChoice: false),
        
        // Drinks
        Location(id: "6", name: "Gran Caffe' Ciorfito", coverImage: "ciorfito_cover", images: ["ciorfito1", "ciorfito2", "ciorfito3"], locDescription: "The bar Caffè Ciorfito is a favorite of coffee lovers in central Naples. The espresso is world-renowned and the cookies are delicious, making this the perfect place to relax after a busy day. ", recommendations: ["Get your favorite brew to go", "Enjoy live music performances", "Weekend coffee and brunch delights"], latitude: 40.8495841, longitude: 14.2590835, category: Category.foodAndDrinks.id, tag: "Drinks", topChoice: false, publicTransport: true, cheapChoice: true),
        
        Location(id: "7", name: "Gran Caffè Gambrinus", coverImage: "gambrinus_cover", images: ["gambrinus1", "gambrinus2", "gambrinus3"], locDescription: "The most renowned literary café in Naples. One of the most successful examples in Italy of literary coffee of European inspiration.", recommendations: ["Bring cash for your coffee fix", "Enjoy a cozy and relaxed setting", "Sip your brew outdoors"], latitude: 40.8367669, longitude: 14.2484674, category: Category.foodAndDrinks.id, tag: "Drinks", topChoice: true, publicTransport: true, cheapChoice: true),
        
        Location(id: "8", name: "Palazzo Venezia Napoli", coverImage: "palazzovenezia_cover", images: ["palazzovenezia1", "palazzovenezia2", "palazzovenezia3"], locDescription: "Is a monumental palace in Naples. Is a historical testimony of four centuries of political and economic relations between the Kingdom of Naples and the Republic of Venice.", recommendations: ["A great spot for focused study sessions", "Family-friendly drinks for little ones", "A great spot for focused study sessions"], latitude: 40.8479095, longitude: 14.2538121, category: Category.foodAndDrinks.id, tag: "Drinks", topChoice: true, publicTransport: true, cheapChoice: false),
        
//        Location(id: "9", name: "", coverImage: "", images: [""], locDescription: "", recommendations: ["Stay connected while you sip", "Bring your pet along", "Local coffee bean blends"], latitude: 40.8479095, longitude: 14.2538121, category: Category.foodAndDrinks.id, tag: "Drinks", topChoice: true, publicTransport: true, cheapChoice: false),
//        
//        Location(id: "10", name: "", coverImage: "", images: [""], locDescription: "", recommendations: ["Savor artisanal coffee", "Enjoy a chill atmosphere", "Sip your drink al fresco"], latitude: 40.8479095, longitude: 14.2538121, category: Category.foodAndDrinks.id, tag: "Drinks", topChoice: true, publicTransport: true, cheapChoice: false),
        
        // Daily Life
        // Day
        Location(id: "11", name: "Bosco di Capodimonte", coverImage: "capodimonte_cover", images: ["capodimonte1", "capodimonte2", "capodimonte3"], locDescription: "Large public park, located in front of the royal palace, with tree-lined paths, statues and fountains.", recommendations: ["Great spot for a leisurely picnic", "Enjoy scenic hiking trails, best in the early afternoon", "Ideal for children"], latitude: 40.8693429, longitude: 14.2505611, category: Category.dailyLife.id, tag: "Day", topChoice: true, publicTransport: true, ticketNeeded: false, cheapChoice: true),
        
        Location(id: "12", name: "Lungomare Caracciolo", coverImage: "lungomare_cover", images: ["lungomare1", "lungomare2", "lungomare3"], locDescription: "Is the promenade and boulevard on the coast of Naples from where you have a beautiful waterfront view of the bay and Vesuvius.", recommendations: ["Have a beautiful view of the bay and Mount Vesuvius", "Take a leisurely bike ride along the dedicated bike paths"], latitude: 40.8280585, longitude: 14.2212073, category: Category.dailyLife.id, tag: "Day", topChoice: true, publicTransport: true, ticketNeeded: nil, cheapChoice: true),
        
        Location(id: "13", name: "Cinema Metropolitan", coverImage: "cinema_cover", images: ["cinema1", "cinema2", "cinema3"], locDescription: "Historic cinema in the center of Naples, perhaps one of the first multiplexes to open in the city centre.", recommendations: ["Explore the historic downtown area", "Check out the vibrant street"], latitude: 40.8359794, longitude: 14.2427158, category: Category.dailyLife.id, tag: "Day", topChoice: true, publicTransport: true, ticketNeeded: true, cheapChoice: false),
        
        Location(id: "14", name: "HBtoo", coverImage: "hbtoo_cover", images: ["hbtoo1", "hbtoo2", "hbtoo3"], locDescription: "It is a reality aimed at innovation in various sectors connected to each other: design, entertainment, drinks and food, contemporary art, smart-working, communication and marketing.", recommendations: ["Perfect for a midday coffee break", "Try their signature brunch menu"], latitude: 40.8011031, longitude: 14.1752487, category: Category.dailyLife.id, tag: "Day", topChoice: false, publicTransport: true, ticketNeeded: false, cheapChoice: false),
        
//        Location(id: "15", name: "Day 5", coverImage: "cover_image", images: [""], locDescription: "", recommendations: [""], latitude: ,, longitude: 14.263419, category: Category.dailyLife.id, tag: "Day", topChoice: false, publicTransport: false, ticketNeeded: false, cheapChoice: true),
   
        // Night
        Location(id: "16", name: "Anthill", coverImage: "anthill_cover", images: ["anthill1", "anthill2", "anthill3"], locDescription: "The new cocktail and tapas bar allocated in the Gallery of Italy in Naples.", recommendations: ["Try their signature cocktail - a must-try for cocktail enthusiasts", "Visit the trendy mixology bar for handcrafted cocktails made from fresh, local ingredients"], latitude: 40.8406325, longitude: 14.2487123, category: Category.dailyLife.id, tag: "Night", topChoice: true, publicTransport: true, ticketNeeded: true, cheapChoice: false),
        
        Location(id: "17", name: "Vernissage", coverImage: "vernissage_cover", images: ["vernissage1", "vernissage2", "vernissage3"], locDescription: "A place of meeting and passion for art in all its forms, going from drinks, food and music to the works that you will find exhibited in theeir spaces.", recommendations: ["Sip creative concoctions at mixology bars", "Enjoy live tunes", "Taste unique regional spirits"], latitude: 40.8518422, longitude: 14.2504075, category: Category.dailyLife.id, tag: "Night", topChoice: false, publicTransport: true, ticketNeeded: true, cheapChoice: true),
        
        Location(id: "18", name: "Momah Club", coverImage: "momah_cover", images: ["momah1", "momah2"], locDescription: "The name of the club comes from the splendid MoMA (Museum of Modern Art) in New York. The Momah discotheque re-proposes the atmosphere of the famous museum by offering a modern, refined and elegant environment.", recommendations: ["Experience the nightlife at the lively nightclub with a fantastic dance floor", "Join themed parties for a unique experience", "Book bottle service for a special night out"], latitude: 40.849751, longitude: 14.263419, category: Category.dailyLife.id, tag: "Night", topChoice: false, publicTransport: false, ticketNeeded: true, cheapChoice: true),
        
//        Location(id: "19", name: "Night 4", coverImage: "cover_image", images: [""], locDescription: "", recommendations: [""], latitude: 40.849751, longitude: 14.263419, category: Category.dailyLife.id, tag: "Night", topChoice: true, publicTransport: false, ticketNeeded: false, cheapChoice: true),
//        
//        Location(id: "20", name: "Night 5", coverImage: "cover_image", images: [""], locDescription: "", recommendations: [""], latitude: 40.849751, longitude: 14.263419, category: Category.dailyLife.id, tag: "Night", topChoice: true, publicTransport: true, ticketNeeded: false, cheapChoice: false),
        
        // Viewpoints
        Location(id: "21", name: "San Martino", coverImage: "sanmartino_cover", images: ["sanmartino1", "sanmartino2", "sanmartino3"], locDescription: "One of the most evocative views of Naples, which embraces the whole city with a glance, can be admired from the Piazzale di San Martino which extends in front of the famous Certosa, on the Vomero hill.", recommendations: ["Arrive early for the best sunrise views", "Enjoy stunning panoramic city views", "Perfect for capturing cityscape photos"], latitude: 40.844082, longitude: 14.24082, category: Category.viewpoints.id, topChoice: true, publicTransport: true, ticketNeeded: false, cheapChoice: true),
        
        Location(id: "22", name: "Hermitage of the Camaldoli", coverImage: "camaldoli_cover", images: ["camaldoli1", "camaldoli2"], locDescription: "At 485 meters above sea level, undoubtedly the highest place in Naples, the Belvedere located outside the splendid 16th century church offers a spectacular view of the entire city.", recommendations: ["Bring binoculars for a closer look", "Witness breathtaking sunsets", "Visit for the city's sparkling night skyline"], latitude: 40.8552556, longitude: 14.2061684, category: Category.viewpoints.id, topChoice: false, publicTransport: true, ticketNeeded: false, cheapChoice: true),
        
        Location(id: "23", name: "Posillipo - the Terrazza di Sant'Antonio", coverImage: "posillipo_cover", images: ["posillipo1", "posillipo2", "posillipo3"], locDescription: "To admire the postcard Naples you have to go to Posillipo, on the terrace in front of the Church of Sant'Antonio, the evocative ramps that connect Posillipo to Mergellina.", recommendations: ["Learn about the city's history", "Ideal for a scenic outdoor picnic", "Combine views with a nature hike"], latitude: 40.8255686, longitude: 14.2150464, category: Category.viewpoints.id, topChoice: true, publicTransport: true, ticketNeeded: false, cheapChoice: true),
        
        Location(id: "24", name: "Virgilian Park", coverImage: "virgilian_cover", images: ["virgilian1", "virgilian2", "virgilian3"], locDescription: "Known by the Neapolitans as The Park of Remembrance, you can admire other beauties of the city, taking advantage of a relaxed atmosphere and far from the chaos of the city.", recommendations: ["Discover local art installations", "Join informative guided tours", "Wheelchair and stroller accessible"], latitude: 40.7841293, longitude: 14.0963644, category: Category.viewpoints.id, topChoice: false, publicTransport: false, ticketNeeded: false, cheapChoice: true),
        
        Location(id: "25", name: "Via Aniello Falcone", coverImage: "aniellofalcone_cover", images: [], locDescription: "Is one of the most evocative streets in Naples, full of curves and just over 1 km long, it is the perfect mix between the romantic belvedere and the youthful nightlife.", recommendations: ["A peaceful escape from the city buzz", "Convenient parking options", "Engaging for young explorers"], latitude: 40.8401493, longitude: 14.2239159, category: Category.viewpoints.id, topChoice: false, publicTransport: true, ticketNeeded: false, cheapChoice: true),
        
        // Folkloric Places
        Location(id: "26", name: "Centro Storico", coverImage: "centro_cover", images: ["centro1", "centro2", "centro3"], locDescription: "The historic center of Naples is the largest in Europe and is the most touristic, authentic and rich in history area of the city.", recommendations: [" Seek out hidden, off-the-beaten-path gems in the city", "Join guided tours to learn about the city's folklore", "Be cautious and aware in busy city centers"], latitude: 40.8498228, longitude: 14.2585071, category: Category.folkloricPlaces.id, topChoice: true, publicTransport: true, cheapChoice: true),
        
        Location(id: "27", name: "Via San Gregorio Armeno", coverImage: "armeno_cover", images: ["armeno1", "armeno2", "armeno3"], locDescription: "Via San Gregorio Armeno is a street in the historic center of Naples, famous for its artisan crib shops.", recommendations: ["Enjoy street performers showcasing the city's artistic flair", "Visit historic buildings and landmarks that tell the city's story", "Savor traditional local dishes in downtown eateries"], latitude: 40.8500804, longitude: 14.2578099, category: Category.folkloricPlaces.id, topChoice: true, publicTransport: true, ticketNeeded: nil, cheapChoice: true),
        
        Location(id: "28", name: "Spaccanapoli", coverImage: "spaccanapoli_cover", images: ["spaccanapoli1", "spaccanapoli2", "spaccanapoli3"], locDescription: "The street is popularly called Spaccanapoli (literally, Partenapoles) because it clearly divides, with its perfect rectilinear layout, the old center between north and south.", recommendations: ["Stroll through the city's historic district for a taste of its cultural heritage", "Wander down iconic streets known for their charm and character", "Explore bustling markets for handmade crafts and local goods"], latitude: 40.849403, longitude: 14.2581943, category: Category.folkloricPlaces.id, topChoice: true, publicTransport: true, ticketNeeded: nil, cheapChoice: true),
        
        Location(id: "29", name: "Quartieri Spagnoli", coverImage: "quartieri_cover", images: ["quartieri1", "quartieri2", "quartieri3"], locDescription: "The Quartieri Spagnoli is a commercial area delimited by Via Toledo, a semi-pedestrian street with fashion stores of well-known brands and designers.", recommendations: ["Marvel at street art and murals that tell a visual story", "Visit historic cafés for a taste of nostalgia", "Explore pedestrian-friendly zones with ease"], latitude: 40.8414761, longitude: 14.2457647, category: Category.folkloricPlaces.id, topChoice: true, publicTransport: true, ticketNeeded: nil, cheapChoice: true),
        
        Location(id: "30", name: "Via Toledo", coverImage: "toledo_cover", images: ["toledo1", "toledo2", "toledo3"], locDescription: "Via Toledo is one of the most important streets in the city of Naples, Italy, and has a length of approximately 1.2 km.", recommendations: ["Discover local art galleries displaying regional talent", "Keep an eye on your belongings in crowded areas", "Shop for unique, locally made souvenirs and crafts"], latitude: 40.8428212, longitude: 14.248904, category: Category.folkloricPlaces.id, topChoice: true, publicTransport: true, ticketNeeded: nil, cheapChoice: true),
    ]
}
