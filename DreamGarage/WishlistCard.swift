import SwiftUI

struct WishlistCard: View {

    let car:Car

    var body: some View {

        HStack(spacing: 15) {

            Image(car.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 15))

            VStack(alignment: .leading, spacing: 8) {

                Text(car.name)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(car.price)
                    .font(.headline)
                    .foregroundColor(.yellow)
            }

            Spacer()

            Image(systemName: "heart.fill")
                .foregroundColor(.red)
                .font(.title3)

        }
        .padding()
        .background(Color.white.opacity(0.06))
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }

}

#Preview {

    ZStack {
        //
        Color.black
            .ignoresSafeArea()
        
        WishlistCard(car:cars[0])
        
    }

}

