import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        
        TabView {

            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            MyGarageView()
                .tabItem {
                    Image(systemName: "car.fill")
                    Text("Garage")
                }

            WishlistView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Wishlist")
                }

            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
        .tint(.yellow)
    }
}

#Preview{
    MainTabView()
}
