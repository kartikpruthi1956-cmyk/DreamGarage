import SwiftUI

struct HomeView: View {
    @State private var showMenu = false
    
    @State private var selectedCategory = "X"
    
    @State private var selectedBrand = ""
    
    @State private var allCars = cars
    
    @State private var currentIndex = 0
    
    var brandCars: [Car] {
        
        if selectedBrand.isEmpty {
            return []
        }
        
        return cars.filter {
            $0.name.localizedCaseInsensitiveContains(selectedBrand)
        }
        
    }
    
    @State  private var searchText = ""
    var searchResults: [Car] {
        
        if searchText.isEmpty {
            return []
        }
        
        return cars.filter {
            $0.name.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var categoryResults: [Car] {
        
        if selectedCategory == "X" {
            return []
        }
        
        return cars.filter {
            $0.category == selectedCategory
        }
    }
    
    let categories = [
        
        "Sports",
        "Luxury",
        "SUV",
        "Electric",
        "Classic"
    ]
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                ScrollView{
                    VStack(alignment: .leading,spacing:10){
                        
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 4) {
                                
                                Text("Hello Kartik 👋")
                                    .foregroundColor(.gray)
                                
                                Text("Dream Garage")
                                    .font(.largeTitle.bold())
                                    .foregroundColor(.white)
                            }
                            
                            Spacer(minLength: 20)
                            
                            HStack{
                                NavigationLink{
                                    NotificationView()
                                }label:{
                                    Image(systemName: "bell.fill")
                                        .foregroundColor(.yellow)
                                        .font(.title2)
                                }
                                NavigationLink{
                                    ProfileView()
                                }label: {
                                    Image(systemName: "person.crop.circle.fill")
                                        .font(.system(size:30))
                                        .foregroundColor(.yellow)
                                        .font(.title2)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        Spacer()
                        ZStack{
                            
                            HStack(spacing: 12) {
                                
                                Image(systemName: "magnifyingglass")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                
                                TextField("", text: $searchText, prompt: Text("Search your dream car...").foregroundStyle(Color.white))
                                
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .tint(.yellow)
                                
                            }
                            .padding()
//                            .frame(maxWidth: 390)
//                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .padding(.horizontal,15)
                            .cornerRadius(25)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.yellow, lineWidth: 2)
                            )
                            
                            
                        }
                        if !searchText.isEmpty {
                            
                            Text("Search Results")
                                .font(.title2.bold())
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            
                            LazyVGrid(columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ], spacing: 20) {
                                
                                ForEach(searchResults) { car in
                                    
                                    NavigationLink {
                                        CarDetailView(car: car)
                                    } label: {
                                        CarCard(car: car)
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                            .padding(.horizontal)
                        }
                        Spacer()
                        TabView {
                            
                            FeatureCard(
                                imageName: "ferrari",
                                carName: "Ferrari SF90",
                                price: "$650,000"
                            )
                            
                            FeatureCard(
                                imageName: "Lamborgini",
                                carName: "Lamborghini Huracan",
                                price: "$720,000"
                            )
                            
                            FeatureCard(
                                imageName: "Porsche",
                                carName: "Porsche 911",
                                price: "$550,000"
                            )
                        }
                        .tabViewStyle(.page)
                        .frame(height: 250)
                        .tabViewStyle(.page)
                        .frame(height: 250)
                        
                        Spacer()
                        NavigationLink {
                            
                            CompareCarsView()
                            
                        } label: {
                            
                            HStack {
                                
                                Image(systemName: "arrow.left.and.right.circle.fill")
                                    .font(.title2)
                                
                                VStack(alignment: .leading) {
                                    
                                    Text("Compare Cars")
                                        .font(.headline)
                                    
                                    Text("Compare any two cars")
                                        .font(.caption)
                                }
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                            }
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                LinearGradient(
                                    colors: [.yellow, .orange],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(20)
                        }
                        .padding(.horizontal)
                        
                        Text("Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack(spacing: 15) {
                                
                                ForEach(categories, id: \.self) { category in
                                    
                                    Button {
                                        
                                        selectedCategory = category
                                        
                                    } label: {
                                        
                                        CategoryChip(
                                            title: category,
                                            isSelected: selectedCategory == category
                                        )
                                        
                                    }
                                    .buttonStyle(.plain)
                                    
                                }
                                
                            }
                            
                        }     .padding()
                    
                        if !selectedCategory.isEmpty {
                            
                            HStack {
                                
                                Text("\(selectedCategory) Cars")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                Button {
                                    
                                    selectedCategory = ""
                                    
                                } label: {
                                    
                                    Image(systemName: "xmark.circle.fill")
                                        .font(.title2)
                                        .foregroundColor(.yellow)
                                }
                            }
                            .padding(.horizontal)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                LazyHStack(spacing: 16) {
                                    
                                    ForEach(categoryResults) { car in
                                        
                                        NavigationLink {
                                            
                                            CarDetailView(car: car)
                                            
                                        } label: {
                                            
                                            CarCard(car: car)
                                                .frame(width: 220)
                                            
                                        }
                                        .buttonStyle(.plain)
                                    }
                                }
                                .padding(.horizontal)
                            }
                            .padding(.horizontal)
                        }
                        
                        
                        VStack(alignment: .leading){
                            Text("Popular Brands")
                                .font(.title2)
                                .bold()
                                .foregroundStyle(.white)
                            
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack {
                                    
                                    Button {
                                        
                                        selectedBrand = "Ferrari"
                                        
                                    } label: {
                                        
                                        BrandCard(image: "ferrari_logo", name: "Ferrari")
                                        
                                    }
                                    .buttonStyle(.plain)
                                    
                                    Button {
                                        
                                        selectedBrand = "BMW"
                                        
                                    } label: {
                                        
                                        BrandCard(image: "bmw_logo", name: "BMW")
                                        
                                    }
                                    .buttonStyle(.plain)
                                    
                                    Button {
                                        
                                        selectedBrand = "Audi"
                                        
                                    } label: {
                                        
                                        BrandCard(image: "audi_logo", name: "Audi")
                                        
                                    }
                                    .buttonStyle(.plain)
                                    
                                    Button {
                                        
                                        selectedBrand = "Lamborghini"
                                        
                                    } label: {
                                        
                                        BrandCard(image: "lamborghini_logo", name: "Lamborghini")
                                        
                                    }
                                    .buttonStyle(.plain)
                                    
                                    Button {
                                        
                                        selectedBrand = "Porsche"
                                        
                                    } label: {
                                        
                                        BrandCard(image: "porsche_logo", name: "Porsche")
                                        
                                    }
                                    .buttonStyle(.plain)
                                    
                                }
                            }
                        }
                        .padding()
                        
                        if !selectedBrand.isEmpty {
                     
                            HStack {
                                
                                Text("\(selectedBrand) Cars")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                Button {
                                    
                                    selectedBrand = ""
                                    
                                } label: {
                                    
                                    Image(systemName: "xmark.circle.fill")
                                        .font(.title2)
                                        .foregroundColor(.yellow)
                                    
                                        .background(.ultraThinMaterial)
                                        .clipShape(Circle())
                                }
                            }
                            .padding(.horizontal)
                            
                          
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                LazyHStack(spacing: 16) {
                                    
                                    ForEach(brandCars) { car in
                                        
                                        NavigationLink {
                                            
                                            CarDetailView(car: car)
                                            
                                        } label: {
                                            
                                            CarCard(car: car)
                                                .frame(width: 220)
                                            
                                        }
                                        .buttonStyle(.plain)
                                    }
                                }
                                .padding(.horizontal)
                            }
                            .padding(.horizontal)
                            
                        }
                        
                        Text("Trending Cars")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyHStack(spacing: 16) {
                                
                                ForEach(trendingCars) { car in
                                    
                                    NavigationLink {
                                        
                                        CarDetailView(car: car)
                                        
                                    } label: {
                                        
                                        CarCard(car: car)
                                            .frame(width: 220)
                                        
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                            .padding(.horizontal)
                        }
                        .padding()
                    }
                    .toolbar(.hidden)
                }
                
            }
        }
    }
}
                        #Preview{
                            HomeView()
                        }
