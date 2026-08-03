import SwiftUI

struct FeatureCard: View {

    let imageName: String
    let carName: String
    let price: String
    
    var body: some View {

        ZStack(alignment: .bottomLeading) {

            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 220)
                .frame(maxWidth: .infinity)
                .clipped()

            LinearGradient(
                colors: [
                    .clear,
                    .black.opacity(0.2),
                    .black.opacity(6)
                ],
                startPoint: .top,
                endPoint: .bottom
            )

            VStack(alignment: .leading) {

                Text("FEATURED THIS WEEK")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white.opacity(1.8))
                 Spacer()
                VStack(alignment: .leading){
                    Text(carName)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text(price)
                        .font(.headline)
                        .foregroundColor(.yellow)

                    HStack {

                        Image(systemName: "speedometer")
                            .foregroundColor(.white)

                        Text("340 km/h")
                            .foregroundColor(.white)

                    }
                    .font(.caption)
                    Spacer()
//                    VStack{
                        HStack {
                            
                            Label("4.9", systemImage: "star.fill")
                                .foregroundColor(.yellow)
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                
                                Text("Explore")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding(.horizontal,20)
                                    .padding(.vertical,10)
                                    .background(Color.yellow)
                                    .cornerRadius(12)
                                    .scaleEffect(1.0)
                                
                            }
                            .background(
                                LinearGradient(
                                    colors: [.yellow, .orange],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(15)
                            
                        }
                    }
//                }

            }
            .padding(20)

        }
        .cornerRadius(25)
        .overlay(

            RoundedRectangle(cornerRadius: 25)
                .stroke(.white.opacity(0.2), lineWidth: 1)

        )
        .shadow(radius: 15)
//        .cornerRadius(25)
//        .shadow(radius: 15)
        .frame(height: 200)
//        .clipShape(RoundedRectangle(cornerRadius: 25))
        .padding(.horizontal)

    }

}

#Preview {
    FeatureCard(
        imageName: "ferrari",
        carName: "Ferrari SF90",
        price: "$650,000"
    )
}
