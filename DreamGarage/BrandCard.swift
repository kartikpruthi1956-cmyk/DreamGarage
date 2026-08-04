import SwiftUI

struct BrandCard: View {

    let image: String
    let name: String

    var body: some View {

        VStack(spacing: 12) {

            ZStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(8)
                    .background(Color.white)
                    .clipShape(Circle())
            }

            Text(name)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.white)

        }
        .frame(width: 95)
        
    }

}

#Preview {

    ZStack {

        Color.black
            .ignoresSafeArea()

        HStack(spacing: 20) {

            BrandCard(image: "ferrari", name: "Ferrari")

            BrandCard(image: "BMW", name: "BMW")

            BrandCard(image: "Audi", name: "Audi")

        }

    }

}

