import SwiftUI

struct CarCard: View {

    @State var car: Car

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

            Text(car.price)
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
