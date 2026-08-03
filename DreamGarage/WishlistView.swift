import SwiftUI

struct WishlistView: View {

    let wishlistCars = cars
    
    var body: some View {

        NavigationStack {

            ZStack {

                Color.black
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 20) {

                    HStack {

                        Text("My Wishlist")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)

                        Spacer()

                        Button {

                        } label: {
                            Image(systemName: "trash")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.horizontal)

                    ScrollView {

                        LazyVStack(spacing:15){
                            ForEach(wishlistCars){car in
                                WishlistCard(car:car)
                            }
                        }
                    }

                }
                .padding(.top)

            }

        }

    }

}

#Preview {
    WishlistView()
}

