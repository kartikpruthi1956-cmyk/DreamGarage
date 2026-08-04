import SwiftUI

struct SplashView: View {
    
    @State private var animate = false
    @State private var glow = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack(spacing:25){
                    Spacer()
//                    Image(systemName: "car.side.fill")
//                        .font(.system(size:80))
//                        .foregroundColor(.yellow)
                    Image(systemName: "car.side.fill")
                        .font(.system(size: 90))
                        .foregroundColor(.yellow)
                        .scaleEffect(animate ? 1.15 : 0.9)
                        .shadow(color: .yellow, radius: glow ? 30 : 10)
                    
                    Text("Dream Garage")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Drive Your Dreams")
                        .font(.headline)
                        .foregroundColor(.gray)
                    Spacer()
                    
                    NavigationLink{
                        LoginView()
                    }label: {
                        Text("Enter Garage")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 220,height: 50)
//                            .background(Color.yellow)
//                            .cornerRadius(15)
                            .background(

                                LinearGradient(
                                    colors: [.yellow, .orange],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )

                            )
                            .cornerRadius(18)
                            .shadow(color: .yellow.opacity(0.6), radius: 15)
                        
                    }
                    Spacer()
                      
                }
                .onAppear {

                    withAnimation(
                        .easeInOut(duration: 1.5)
                        .repeatForever(autoreverses: true)
                    ) {

                        animate.toggle()
                        glow.toggle()
                    }
                }
                .padding()
            }
        }
    }
}

#Preview{
    SplashView()
}
