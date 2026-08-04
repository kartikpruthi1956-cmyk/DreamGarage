import SwiftUI

struct ProfileView: View {

    @State private var showLogoutAlert = false
    @State private var isLoggedOut = false
    @State private var animate = false
    var body: some View {

        NavigationStack {

            ZStack {

                Color.black
                    .ignoresSafeArea()

                ScrollView {

                    VStack(spacing: 22) {

                        VStack(spacing: 12) {

                            Image(systemName: "person.fill")
                                
                                .resizable()
//                                .scaledToFill()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .foregroundColor(.white)

                            Text("Kartik Pruthi")
                                .font(.title2.bold())
                                .foregroundColor(.white)

                            Text("kartikpruthi@gmail.com")
                                .foregroundColor(.gray)
                        }

//                        ProfileGarageCard()
                        VStack{
                            Text("Garage Stats")
                                .font(.title3.bold())
                                .foregroundColor(.white)

                            HStack {

                                Spacer()

                                VStack {
                                    Text("12")
                                        .font(.title.bold())
                                        .foregroundColor(.yellow)

                                    Text("Viewed")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }

                                Spacer()

                                Divider()
                                    .frame(height: 40)
                                    .overlay(.gray)

                                Spacer()

                                VStack {
                                    Text("4")
                                        .font(.title.bold())
                                        .foregroundColor(.yellow)

                                    Text("Wishlist")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }

                                Spacer()

                                Divider()
                                    .frame(height: 40)
                                    .overlay(.gray)

                                Spacer()

                                VStack {
                                    Text("3")
                                        .font(.title.bold())
                                        .foregroundColor(.yellow)

                                    Text("Garage")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }

                                Spacer()
                            }

                        }
                        .padding()
                        .background(Color.white.opacity(0.06))
                        .cornerRadius(18)
                        .padding(.horizontal)

                        VStack(spacing: 15) {
                            
                            NavigationLink{
                                MyGarageView()
                            }label: {
                                ProfileRow(icon: "car.fill",
                                           title: "MyGarage")
                            }
                            
                            NavigationLink{
                                WishlistView()
                            }label: {
                                ProfileRow(icon: "heart",
                                           title: "Wishlist")
                            }
                            
                            NavigationLink{
                                SettingsView()
                            }label:{
                                ProfileRow(icon: "gearshape",
                                           title: "Settings")
                            }
                            
                            NavigationLink{
                                AboutUsView()
                            }label:{
                                ProfileRow(icon: "info.circle",
                                           title: "About Us")
                            }
                            
                            NavigationLink{
                                HelpSupportView()
                            }label:{
                                ProfileRow(icon: "questionmark.circle",
                                           title: "Help & Support")
                            }
                            
                            Button{
                                showLogoutAlert = true
                            }label: {
                                ProfileRow(icon: "rectangle.portrait.and.arrow.right",
                                           title: "Logout",
                                           isLogout: true)
                                
                            }
                        }

                    }
                    .padding()

                }

            }
            .alert("Logout",isPresented: $showLogoutAlert){
                Button("Cancel",role: .cancel){}
                
            
                Button("Logout",role: .destructive){
                    isLoggedOut = true
                }
            }message: {
                Text("Are you sure you want to logout?")
            }
            .navigationDestination(isPresented: $isLoggedOut){
                LoginView()
            }
   

        }

    }

}

#Preview {
    ProfileView()
}
