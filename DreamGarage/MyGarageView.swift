import SwiftUI

struct MyGarageView: View {
    let garageCars = cars.filter { $0.isGarage }
    var body: some View {
        
        NavigationStack{
            ZStack{
                
                Color.black
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack(alignment: .leading,spacing: 20){
                        HStack{
                            Text("My Garage")
                                .font(.largeTitle.bold())
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image(systemName: "plus.circle.fill")
                                .font(.title)
                                .foregroundColor(.yellow)
                        }
                        .padding(.horizontal)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white.opacity(0.06))
                            .frame(height:140)
                            .overlay(
                                HStack{
                                    VStack(alignment: .leading,spacing: 10){
//                                        Text("12")

                                        Text("\(garageCars.count)")
                                            .font(.system(size:40,weight: .bold))
                                            .foregroundColor(.yellow)
                                        
                                        Text("Cars in Garage")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                        
//                                        Text("Your premium coloection")
                                        Text("Add cars from Car Details")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    
                                    Image(systemName: "car.fill")
                                        .font(.system(size:60))
                                        .foregroundColor(.yellow)
                                }
                                    .padding()
                            )
                            .padding(.horizontal)
                        
                        Text("Your Cars")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                        LazyVGrid(
                            columns: [GridItem(.flexible()),GridItem(.flexible())],spacing:16){
                          
//                                ForEach(cars){car in
                                ForEach(garageCars) { car in
                                NavigationLink{
                                        CarDetailView(car:car)
                                    }label: {
                                        CarCard(car:car)
                                    }
                                    .buttonStyle((.plain))
                                }
                        }
                            .padding(.horizontal)
                          
                    }
                }
            }
        }
    }
}
#Preview {
    MyGarageView()
    
}
