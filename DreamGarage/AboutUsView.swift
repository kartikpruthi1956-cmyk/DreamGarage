import SwiftUI

struct AboutUsView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 20) {

                Text("About Dream Garage")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                Text("""
Dream Garage is a premium car showcase app built using SwiftUI.

• Explore luxury cars
• Save favourites
• Manage your garage
• Clean modern UI

Version 1.0
""")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding()

                Spacer()
            }
            .padding(.top)
        }
    }
}

#Preview {
    AboutUsView()
}


