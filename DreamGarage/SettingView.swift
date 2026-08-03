import SwiftUI

struct SettingsRow: View {

    let icon: String
    let title: String

    var body: some View {

        HStack {

            Image(systemName: icon)
                .foregroundColor(title == "Logout" ? .red : .yellow)
                .frame(width: 28)

            Text(title)
                .foregroundColor(title == "Logout" ? .red : .white)

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)

        }
        .padding()

        .background(Color.white.opacity(0.06))

        .clipShape(RoundedRectangle(cornerRadius: 18))

    }

}

struct SettingsView: View {
    
    

    var body: some View {

        NavigationStack {

            ZStack {

                Color.black
                    .ignoresSafeArea()

                ScrollView {

                    VStack(alignment: .leading, spacing: 15) {

                        Text("Settings")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)

                        SettingsRow(icon: "person.crop.circle",title: "Account")

                        SettingsRow(icon: "bell",title: "Notifications")

                        SettingsRow(icon: "moon.fill",title: "Dark Mode")

                        SettingsRow(icon: "lock.shield", title: "Privacy")

                        SettingsRow(icon: "globe",title: "Language")

                        SettingsRow(icon: "dollarsign.circle", title: "Currency")

                        SettingsRow(icon: "doc.text", title: "Terms & Conditions")

                        SettingsRow(icon: "square.and.arrow.up", title: "Share App")

                        SettingsRow(icon: "rectangle.portrait.and.arrow.right", title: "Logout")
                    }
                    .padding()

                }

            }

        }

    }

}



#Preview {

    SettingsView()

}

