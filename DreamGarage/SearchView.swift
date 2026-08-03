import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    @State private var selectedCategory = "All"
    
    let categories = ["Sports","Luxury","Electric","SUV","Classic"]
    
    
    
    var body: some View {
        NavigationStack {
            ZStack {

                Color.black
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 20) {

                    HStack {

                        Text("Explore")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)

                        Spacer()

                        Image(systemName: "slider.horizontal.3")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)

                    SearchBar(searchText: $searchText)
                    
                        .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {

                        HStack(spacing: 12) {

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
                        .padding(.horizontal)
                    }

                    Text("All Cars")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)

                    Spacer()
                    
                    ScrollView {

                        LazyVGrid(
                            columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ],
                            spacing: 12
                        ){

                            ForEach(cars.filter { car in

                                (selectedCategory == "All" || car.category == selectedCategory)

                                &&

                                (searchText.isEmpty ||
                                 car.name.localizedCaseInsensitiveContains(searchText))

                            }) { car in
                                
                                NavigationLink {

                                    CarDetailView(car: car)
                                } label: {

                                    CarCard(car: car)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal,16)
                    }
                }
                .padding(.top)
            }
        }
    }
}
#Preview {
    SearchView()
}
