import SwiftUI

struct BrandCard: View {

    let image: String
    let name: String

    var body: some View {

        VStack(spacing: 12) {

            ZStack {
                Image(image)
                    .resizable()
                    .frame(width: 55, height: 55)
                    .cornerRadius(10)
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

