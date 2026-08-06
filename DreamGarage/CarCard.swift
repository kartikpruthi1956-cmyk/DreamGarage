import SwiftUI

struct CarCard: View {

    @State var car: Car
//    @Binding var car: Car
//    @EnvironmentObject var carStore: CarStore

//    var car: Car
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

        VStack(alignment: .leading, spacing: 10) {

            ZStack(alignment: .topTrailing) {

                Image(car.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .cornerRadius(18)
                   

                LinearGradient(
                    colors: [
                        .clear,
                        .black.opacity(0.15),
                        .black.opacity(0.85)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .cornerRadius(18)

                Button {

                    car.isFavourite.toggle()

                } label: {

                    Image(systemName: car.isFavourite ? "heart.fil" : "heart")
                        .foregroundColor(car.isFavourite ? .red : .white)
                        .padding(8)
                        .background(Color.black.opacity(0.6))
                        .clipShape(Circle())

                }
                .padding(10)

            }

            Text(car.name)
                .font(.headline)
                .foregroundColor(.white)
                .lineLimit(2)
//            minimumScaleFactor(0.8)

//            Text(car.price)
            
            Text(formattedPrice())
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.yellow)

            HStack {

                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)

                Text(car.rating)
                    .foregroundColor(.white)

                Spacer()

                Text(car.topSpeed)
                    .font(.caption)
                    .foregroundColor(.gray)

            }

        }
        .padding()
        .background(Color.white.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(maxWidth: .infinity)
        .frame(minHeight: 250)

    }

}
#Preview{
    CarCard(car:cars[0])
}
