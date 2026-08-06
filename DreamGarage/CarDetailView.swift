import SwiftUI

struct CarDetailView: View {

//    let car: Car
    @State var car: Car
    @State private var addedToGarage = false
    @State private var showBookingSheet = false
    @AppStorage("selectedCurrency")
    private var selectedCurrency = "INR"
    
    func formattedPrice() -> String {

        let cleanPrice = car.price
            .replacingOccurrences(of: "$", with: "")
            .replacingOccurrences(of: ",", with: "")

        let price = Double(cleanPrice) ?? 0

        switch selectedCurrency {

        case "USD":
            return "$\(Int(price))"

        case "EUR":
            return "€\(Int(price * 0.86))"

        case "GBP":
            return "£\(Int(price * 0.74))"

        default:
            return "₹\(Int(price * 83))"
        }
    }
    
    var body: some View {

        ScrollView(showsIndicators: false) {

            VStack{

//                Image(car.image)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height: 200)
//                    .frame(maxWidth: .infinity)
//                    .clipped()
                ZStack(alignment: .topTrailing) {

                    Image(car.image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 220)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .cornerRadius(30)

                    Button {

                    } label: {

                        Image(systemName: "heart")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(12)
                            .background(.black.opacity(0.5))
                            .clipShape(Circle())
                    }
                    .padding()
                }
                VStack(alignment: .leading, spacing: 20) {

                    HStack {

                        VStack(alignment: .leading) {

                            Text(car.name)
//                                .font(.largeTitle)
                                .font(.system(size: 34, weight: .bold))
                                .fontWeight(.bold)
                                .foregroundColor(.yellow)
                            Text(formattedPrice())
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.yellow)
                                .padding(.top, 2)

                        }

                        Spacer()

                        HStack {

                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)

                            Text(car.rating)
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                        }

                    }

                    Divider()

                    HStack(spacing: 15) {

                        VStack(spacing: 10) {

                            Image(systemName: "speedometer")
                                .font(.title2)
                                .foregroundColor(.yellow)

                            Text(car.topSpeed)
                                .font(.headline)
                                .foregroundColor(.white)

                            Text("Top Speed")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white.opacity(0.08))
                        .cornerRadius(18)

                        VStack(spacing: 10) {

                            Image(systemName: "bolt.fill")
                                .font(.title2)
                                .foregroundColor(.yellow)

                            Text(car.horsepower)
                                .font(.headline)
                                .foregroundColor(.white)

                            Text("Horsepower")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white.opacity(0.08))
                        .cornerRadius(18)
                    }
                    Divider()

                    VStack(alignment: .leading, spacing: 12) {

                        Label("Engine", systemImage: "gear")

                            .font(.headline)

                            .foregroundColor(.white)

                        Text(car.engine)

                            .foregroundColor(.gray)

                    }
                    .padding()

                    .background(Color.white.opacity(0.08))

                    .cornerRadius(18)
                    Divider()

                    VStack(alignment: .leading, spacing: 10) {

                        Text("Description")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text(car.description)
                            .foregroundColor(.gray)

                    }
                    .padding()
                    .background(Color.white.opacity(0.08))
                    .cornerRadius(18)
                    
                    Button {

                        showBookingSheet = true

                    } label: {

                        Text("Book Test Drive")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(15)
                    }
                    .padding(.top, 10)


                    Button {

                    } label: {

                        HStack {

                            Image(systemName: "car.fill")

                            Text("Book your car")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 58)
                        .background(Color.yellow)
                        .cornerRadius(18)
                    }
                    Button {

                        car.isGarage.toggle()

                    } label: {

                        HStack {

                            Image(systemName: car.isGarage ? "checkmark.circle.fill" : "plus.circle.fill")

                            Text(car.isGarage ? "Added to Garage" : "Add to Garage")
                                .fontWeight(.bold)

                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 58)
                        .background(Color.blue)
                        .cornerRadius(18)
                    }
//                    .padding(.top, 15)
                    
                }
                .padding()
                .sheet(isPresented: $showBookingSheet) {

                    BookTestDriveView(car: car)
                }
            }

        }
        .background(Color.black)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.hidden, for: .navigationBar)
    }

}
#Preview{
   CarDetailView(car:cars[0])
}
