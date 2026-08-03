import SwiftUI

struct SideMenuView: View {

    var body: some View {

        ZStack {

            Color.black
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 25) {

                // Profile
                HStack(spacing: 15) {

                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 55))
                        .foregroundColor(.yellow)

                    VStack(alignment: .leading) {

                        Text("Kartik Pruthi")
                            .foregroundColor(.white)
                            .font(.headline)

                        Text("kartikpruthi@gmail.com")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                }
                .padding(.top,40)

                Divider().background(Color.gray)

                SideMenuRow(icon: "house.fill", title: "Home")
                SideMenuRow(icon: "magnifyingglass", title: "Explore")
                SideMenuRow(icon: "heart", title: "Wishlist")
                SideMenuRow(icon: "car.fill", title: "My Garage")
                SideMenuRow(icon: "gearshape.fill", title: "Settings")
                SideMenuRow(icon: "info.circle", title: "About Us")
                SideMenuRow(icon: "questionmark.circle", title: "Help & Support")

                Spacer()

                SideMenuRow(
                    icon: "rectangle.portrait.and.arrow.right",
                    title: "Logout",
                    isLogout: true
                )

            }
            .padding()

        }

    }

}

struct SideMenuRow: View {

    let icon: String
    let title: String
    var isLogout: Bool = false

    var body: some View {

        HStack(spacing: 18) {

            Image(systemName: icon)
                .foregroundColor(isLogout ? .red : .yellow)
                .frame(width: 25)

            Text(title)
                .foregroundColor(isLogout ? .red : .white)

            Spacer()
        }
        .font(.headline)
    }
}

#Preview {
    SideMenuView()
}

