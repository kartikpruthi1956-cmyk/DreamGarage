import SwiftUI

struct ProfileGarageCard: View {

    var body: some View {

        HStack {

            VStack(alignment: .leading, spacing: 8) {

                Text("My Garage")
                    .foregroundColor(.white)
                    .font(.headline)

                Text("12 Cars")
                    .foregroundColor(.yellow)
            }

            Spacer()

            Image("BMW")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .cornerRadius(10)

        }
        .padding()
        .background(Color.white.opacity(0.06))
        .clipShape(RoundedRectangle(cornerRadius: 20))

    }

}

#Preview {

    ZStack {

        Color.black
            .ignoresSafeArea()

        ProfileGarageCard()
            .padding()

    }

}
