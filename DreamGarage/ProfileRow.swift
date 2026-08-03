import SwiftUI

struct ProfileRow: View {

    let icon: String
    let title: String
    var isLogout: Bool = false

    var body: some View {

        HStack {

            Image(systemName: icon)
                .foregroundColor(isLogout ? .red : .white)

            Text(title)
                .foregroundColor(isLogout ? .red : .white)

            Spacer()

            if !isLogout {

                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)

            }

        }
        .padding()

        .background(Color.white.opacity(0.06))

        .clipShape(RoundedRectangle(cornerRadius: 18))

    }

}

#Preview {

    ZStack {

        Color.black
            .ignoresSafeArea()

        ProfileRow(icon: "heart", title: "Wishlist")
            .padding()

    }

}

