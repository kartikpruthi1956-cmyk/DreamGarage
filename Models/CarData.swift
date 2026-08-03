import Foundation

let cars : [Car] = [

    Car(
        image: "ferrari",
        name: "Ferrari SF90",
        price: "$650,000",
        rating: "4.9",
        topSpeed: "340 km/h",
        horsepower: "769 HP",
        engine: "4.0L Twin Turbo V8",
        description: "Ferrari SF90 Stradale is Ferrari's first plug-in hybrid supercar. It delivers incredible speed, luxury and advanced technology.",
        category: "Sports"
    ),

    Car(
        image: "BMW",
        name: "BMW M4 Competition",
        price: "$120,000",
        rating: "4.8",
        topSpeed: "290 km/h",
        horsepower: "503 HP",
        engine: "3.0L Twin Turbo",
        description: "BMW M4 Competition offers outstanding performance with aggressive styling and a luxurious interior.",
        category: "Luxury"
    ),

    Car(
        image: "Audi",
        name: "Audi R8",
        price: "$180,000",
        rating: "4.7",
        topSpeed: "330 km/h",
        horsepower: "602 HP",
        engine: "5.2L V10",
        description: "Audi R8 is a powerful supercar featuring a naturally aspirated V10 engine and Quattro all-wheel drive.",
        category: "Luxury"
    ),

    Car(
        image: "Lamborgini",
        name: "Lamborghini Huracán",
        price: "$450,000",
        rating: "5.0",
        topSpeed: "325 km/h",
        horsepower: "631 HP",
        engine: "5.2L V10",
        description: "Lamborghini Huracán combines breathtaking design with extreme performance and an unforgettable driving experience.",
        category: "Sports"
    ),

    Car(
        image: "Porsche",
        name: "Porsche 911 Turbo S",
        price: "$550,000",
        rating: "4.95",
        topSpeed: "330 km/h",
        horsepower: "640 HP",
        engine: "3.8L Twin Turbo Flat-6",
        description: "Porsche 911 Turbo S is one of the fastest and most refined sports cars, offering exceptional handling and comfort.",
        category: "Sports"
    ),
    
    Car(
        image: "McLaren",
        name: "McLaren 720S",
        price: "$315,000",
        rating: "4.9",
        topSpeed: "341 km/h",
        horsepower: "710 HP",
        engine: "4.0L Twin Turbo V8",
        description: "The McLaren 720S is one of the world's fastest supercars with lightweight carbon fiber construction.",
        category: "Sports"
    ),
    
    Car(
        image: "Bugatti",
        name: "Bugatti Chiron",
        price: "$3,200,000",
        rating: "5.0",
        topSpeed: "420 km/h",
        horsepower: "1500 HP",
        engine: "8.0L Quad Turbo W16",
        description: "The Bugatti Chiron is an ultra luxury hypercar built for extreme speed.",
        category: "Luxury"
    ),
    
    Car(
        image: "RollsRoyce",
        name: "Rolls Royce Phantom",
        price: "$460,000",
        rating: "4.9",
        topSpeed: "250 km/h",
        horsepower: "563 HP",
        engine: "6.75L V12",
        description: "The Phantom delivers unmatched luxury, comfort and craftsmanship.",
        category: "Luxury"
    ),
    
    Car(
        image: "Mercedes",
        name: "Mercedes AMG GT",
        price: "$170,000",
        rating: "4.8",
        topSpeed: "315 km/h",
        horsepower: "577 HP",
        engine: "4.0L Twin Turbo V8",
        description: "AMG GT combines everyday luxury with thrilling sports performance.",
        category: "Sports"
    ),
    
    Car(
        image: "AstonMartin",
        name: "Aston Martin DBS",
        price: "$335,000",
        rating: "4.8",
        topSpeed: "340 km/h",
        horsepower: "715 HP",
        engine: "5.2L Twin Turbo V12",
        description: "Aston Martin DBS offers elegant British styling with incredible power.",
        category: "Luxury"
    ),
    Car(
        image: "Bentley",
        name: "Bentley Continental GT",
        price: "$250,000",
        rating: "4.8",
        topSpeed: "333 km/h",
        horsepower: "650 HP",
        engine: "6.0L W12",
        description: "Bentley Continental GT is a luxury grand tourer with premium comfort.",
        category: "Luxury"
    ),
    
    Car(
        image: "Nissan",
        name: "Nissan GT-R",
        price: "$120,000",
        rating: "4.7",
        topSpeed: "315 km/h",
        horsepower: "565 HP",
        engine: "3.8L Twin Turbo V6",
        description: "Known as Godzilla, the GT-R delivers outstanding performance.",
        category: "Sports"
    ),
    Car(
        image: "Koenigsegg",
        name: "Koenigsegg Jesko",
        price: "$3,000,000",
        rating: "5.0",
        topSpeed: "483 km/h",
        horsepower: "1600 HP",
        engine: "5.0L Twin Turbo V8",
        description: "Jesko is engineered to become one of the fastest production cars ever.",
        category: "Sports"
    ),
    Car(
        image: "Pagani",
        name: "Pagani Huayra",
        price: "$2,800,000",
        rating: "5.0",
        topSpeed: "383 km/h",
        horsepower: "791 HP",
        engine: "6.0L Twin Turbo V12",
        description: "Pagani Huayra combines Italian craftsmanship with breathtaking performance.",
        category: "Luxury"
    ),
    Car(
        image: "Maserati",
        name: "Maserati MC20",
        price: "$220,000",
        rating: "4.8",
        topSpeed: "325 km/h",
        horsepower: "621 HP",
        engine: "3.0L Twin Turbo V6",
        description: "MC20 marks Maserati's return to the supercar segment.",
        category: "Sports"
    ),
    Car(
        image: "Jaguar",
        name: "Jaguar F-Type R",
        price: "$110,000",
        rating: "4.7",
        topSpeed: "300 km/h",
        horsepower: "575 HP",
        engine: "5.0L Supercharged V8",
        description: "Jaguar F-Type R offers classic British sports car excitement.",
        category: "Sports"
    ),
    Car(
        image: "Lexus",
        name: "Lexus LFA",
        price: "$900,000",
        rating: "4.9",
        topSpeed: "325 km/h",
        horsepower: "553 HP",
        engine: "4.8L V10",
        description: "The Lexus LFA is famous for its legendary naturally aspirated V10 sound.",
        category: "Luxury"
    ),
    Car(
        image: "Chevrolet",
        name: "Corvette Z06",
        price: "$115,000",
        rating: "4.8",
        topSpeed: "315 km/h",
        horsepower: "670 HP",
        engine: "5.5L Flat Plane V8",
        description: "The Corvette Z06 delivers exotic performance at an incredible value.",
        category: "Sports"
    ),
    Car(
        image: "FordGT",
        name: "Ford GT",
        price: "$500,000",
        rating: "4.9",
        topSpeed: "347 km/h",
        horsepower: "660 HP",
        engine: "3.5L EcoBoost V6",
        description: "Ford GT is inspired by the legendary Le Mans winning race car.",
        category: "Sports"
    ),
    Car(
        image: "Tesla",
        name: "Tesla Model S Plaid",
        price: "$95,000",
        rating: "4.9",
        topSpeed: "322 km/h",
        horsepower: "1020 HP",
        engine: "Tri Motor Electric",
        description: "The Model S Plaid is one of the quickest production electric cars ever built.",
        category: "Electric"
    ),
    Car(
        image: "RangeRover",
        name: "Range Rover Sport",
        price: "$95,000",
        rating: "4.8",
        topSpeed: "250 km/h",
        horsepower: "523 HP",
        engine: "4.4L Twin Turbo V8",
        description: "Luxury SUV with premium comfort and powerful off-road capability.",
        category: "SUV"
    ),
    Car(
        image: "BMWX7",
        name: "BMW X7",
        price: "$85,000",
        rating: "4.7",
        topSpeed: "245 km/h",
        horsepower: "523 HP",
        engine: "4.4L Twin Turbo V8",
        description: "BMW's flagship luxury SUV with spacious seating and advanced technology.",
        category: "SUV"
    ),
    Car(
        image: "Urus",
        name: "Lamborghini Urus",
        price: "$250,000",
        rating: "4.9",
        topSpeed: "305 km/h",
        horsepower: "657 HP",
        engine: "4.0L Twin Turbo V8",
        description: "The world's first Super SUV combining speed and luxury.",
        category: "SUV"
    ),
    Car(
        image: "GClass",
        name: "Mercedes G-Class",
        price: "$180,000",
        rating: "4.8",
        topSpeed: "240 km/h",
        horsepower: "577 HP",
        engine: "4.0L Twin Turbo V8",
        description: "Iconic luxury SUV known for premium design and off-road strength.",
        category: "SUV"
    ),
    Car(
        image: "ModelX",
        name: "Tesla Model X",
        price: "$100,000",
        rating: "4.8",
        topSpeed: "262 km/h",
        horsepower: "1020 HP",
        engine: "Dual Electric Motor",
        description: "Electric SUV with Falcon Wing doors and incredible acceleration.",
        category: "Electric"
    ),
    Car(
        image: "Taycan",
        name: "Porsche Taycan Turbo S",
        price: "$190,000",
        rating: "4.9",
        topSpeed: "260 km/h",
        horsepower: "750 HP",
        engine: "Dual Electric Motor",
        description: "Luxury electric sports sedan delivering Porsche performance.",
        category: "Electric"
    ),
    Car(
        image: "EtronGT",
        name: "Audi e-tron GT",
        price: "$145,000",
        rating: "4.8",
        topSpeed: "245 km/h",
        horsepower: "637 HP",
        engine: "Dual Electric Motor",
        description: "A premium electric grand tourer with stunning design.",
        category: "Electric"
    ),
    Car(
        image: "Lucid",
        name: "Lucid Air Sapphire",
        price: "$250,000",
        rating: "5.0",
        topSpeed: "330 km/h",
        horsepower: "1234 HP",
        engine: "Tri Motor Electric",
        description: "Ultra-fast luxury electric sedan with record-breaking performance.",
        category: "Electric"
    ),
    Car(
        image: "Mustang69",
        name: "Ford Mustang 1969",
        price: "$120,000",
        rating: "4.9",
        topSpeed: "220 km/h",
        horsepower: "335 HP",
        engine: "5.8L V8",
        description: "Legendary American muscle car loved by collectors worldwide.",
        category: "Classic"
    ),
    Car(
        image: "Camaro69",
        name: "Chevrolet Camaro 1969",
        price: "$110,000",
        rating: "4.8",
        topSpeed: "215 km/h",
        horsepower: "375 HP",
        engine: "6.5L V8",
        description: "A timeless American classic with aggressive styling.",
        category: "Classic"
    ),
    Car(
        image: "EType",
        name: "Jaguar E-Type",
        price: "$180,000",
        rating: "5.0",
        topSpeed: "240 km/h",
        horsepower: "265 HP",
        engine: "4.2L Inline 6",
        description: "One of the most beautiful classic sports cars ever built.",
        category: "Classic"
    ),
    Car(
        image: "300SL",
        name: "Mercedes 300SL Gullwing",
        price: "$1,600,000",
        rating: "5.0",
        topSpeed: "260 km/h",
        horsepower: "240 HP",
        engine: "3.0L Inline 6",
        description: "An iconic collector's car famous for its Gullwing doors.",
        category: "Classic"
    ),

]

let trendingCars = cars.filter {
    [
        "Ferrari SF90",
        "Lamborghini Huracán",
        "Bugatti Chiron",
        "Tesla Model S Plaid",
        "McLaren 720S",
        "Porsche 911 Turbo S",
        "Koenigsegg Jesko",
        "Rolls Royce Phantom"
    ].contains($0.name)
}
