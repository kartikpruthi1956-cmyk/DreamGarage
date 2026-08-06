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

                        NavigationLink {
                            ProfileView()
                        }label: {
                            SettingsRow(icon: "person.crop.circle",title: "Account")
                        }
                      
                        NavigationLink {

                            NotificationView()

                        } label: {

                            SettingsRow(
                                icon: "bell",
                                title: "Notifications"
                            )
                        }

                        NavigationLink {
                            PrivacyView()
                        } label: {
                            SettingsRow(
                                icon: "lock.shield",
                                title: "Privacy"
                            )
                        }

                        NavigationLink {

                            LanguageView()

                        } label: {

                            SettingsRow(
                                icon: "globe",
                                title: "Language"
                            )
                        }

                        NavigationLink {

                            CurrencyView()

                        } label: {

                            SettingsRow(
                                icon: "dollarsign.circle",
                                title: "Currency"
                            )
                        }

                        NavigationLink {

                            AboutUsView()

                        } label: {

                            SettingsRow(
                                icon: "doc.text",
                                title: "Terms & Conditions"
                            )
                        }

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

