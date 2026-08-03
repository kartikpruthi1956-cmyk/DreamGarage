import SwiftUI

struct SplashView: View {
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack(spacing:25){
                    Spacer()
                    Image(systemName: "car.side.fill")
                        .font(.system(size:80))
                        .foregroundColor(.yellow)
                    
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
                            .background(Color.yellow)
                            .cornerRadius(15)
                        
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview{
    SplashView()
}
