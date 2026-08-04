import SwiftUI

struct CompareCarsView: View {
    
    @State private var firstSearch = ""
    @State private var secondSearch = ""
    
    @State private var selectedCar1: Car? = nil
    @State private var selectedCar2: Car? = nil
    
    var firstSuggestions: [Car] {
        
        if firstSearch.isEmpty {
            return []
        }
        
        return cars.filter {
            $0.name.localizedCaseInsensitiveContains(firstSearch)
        }
    }
    
    var secondSuggestions: [Car] {
        
        if secondSearch.isEmpty {
            return []
        }
        
        return cars.filter {
            $0.name.localizedCaseInsensitiveContains(secondSearch)
        }
    }
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    Text("Compare Cars")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                    
                    // First car search
                    
                    TextField(
                        "Search first car...",
                        text: $firstSearch
                    )
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(15)
                    .foregroundColor(.white)
                    
                    VStack {
                        
                        ForEach(firstSuggestions) { car in
                            
                            Button {
                                
                                selectedCar1 = car
                                firstSearch = car.name
                                
                            } label: {
                                
                                Text(car.name)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.vertical, 8)
                            }
                        }
                    }
                    
                    // Second car search
                    
                    TextField(
                        "Search second car...",
                        text: $secondSearch
                    )
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(15)
                    .foregroundColor(.white)
                    
                    VStack {
                        
                        ForEach(secondSuggestions) { car in
                            
                            Button {
                                
                                selectedCar2 = car
                                secondSearch = car.name
                                
                            } label: {
                                
                                Text(car.name)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.vertical, 8)
                            }
                        }
                    }
                    
                    if let car1 = selectedCar1,
                       let car2 = selectedCar2 {
                        
                        HStack {
                            
                            carCard(car1)
                            
                            Image(systemName: "arrow.left.and.right.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.yellow)
                            
                            carCard(car2)
                        }
                        
                        compareRow(
                            title: "Price",
                            left: car1.price,
                            right: car2.price,
                            leftValue: Int(car1.topSpeed.components(separatedBy: " ").first ?? "0") ?? 0,
                            rightValue: Int(car2.topSpeed.components(separatedBy: " ").first ?? "0") ?? 0
                        )
                        
                        compareRow(
                            title: "Top Speed",
                            left: car1.topSpeed,
                            right: car2.topSpeed,
                            leftValue: Int(car1.topSpeed.components(separatedBy: " ").first ?? "0") ?? 0,
                            rightValue: Int(car2.topSpeed.components(separatedBy: " ").first ?? "0") ?? 0
                        )
                        
                        compareRow(
                            title: "Horsepower",
                            left: car1.horsepower,
                            right: car2.horsepower,
                            leftValue: Int(car1.horsepower.components(separatedBy: " ").first ?? "0") ?? 0,
                            rightValue: Int(car2.horsepower.components(separatedBy: " ").first ?? "0") ?? 0
                        )
                        compareRow(
                            title: "Engine",
                            left: car1.engine,
                            right: car2.engine,
                            leftValue: Int(car1.topSpeed.components(separatedBy: " ").first ?? "0") ?? 0,
                            rightValue: Int(car2.topSpeed.components(separatedBy: " ").first ?? "0") ?? 0
                        )
                        
                        compareRow(
                            title: "Rating",
                            left: car1.rating,
                            right: car2.rating,
                            leftValue: Int(car1.topSpeed.components(separatedBy: " ").first ?? "0") ?? 0,
                            rightValue: Int(car2.topSpeed.components(separatedBy: " ").first ?? "0") ?? 0
                        )
                    }
                }
                .padding()
            }
        }
    }
    
    func carCard(_ car: Car) -> some View {
        
        VStack {
            
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(height: 90)
            
            Text(car.name)
                .font(.caption)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(width: 140, height: 160)
        .background(Color.white.opacity(0.08))
        .cornerRadius(20)
    }
    func compareRow(
        title: String,
        left: String,
        right: String,
        leftValue: Int,
        rightValue: Int
    ) -> some View {
        
        HStack {
            
            HStack {
                
                Text(left)
                    .foregroundColor(.yellow)
                
                if leftValue > rightValue {
                    
                    Text("🏆")
                }
            }
            .frame(maxWidth: .infinity)
            
            Text(title)
                .foregroundColor(.white)
            
            HStack {
                
                Text(right)
                    .foregroundColor(.yellow)
                
                if rightValue > leftValue {
                    
                    Text("🏆")
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
        .background(Color.white.opacity(0.08))
        .cornerRadius(15)
    }
}

#Preview {

    CompareCarsView()
}
