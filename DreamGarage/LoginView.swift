import SwiftUI
import FirebaseFirestore
import FirebaseAuth

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var showPassword = false
    @State private var rememberMe = false
    @State private var goToHome = false
    @State private var goToSignUp = false
    @State private var isLoggedin: Bool = false
    @State private var message = ""
    @State private var animateLogo = false
    
    var body: some View {
        if isLoggedin{
            HomeView()
        }else{
        NavigationStack{
            ZStack {
                Circle()
                    .fill(Color.yellow.opacity(0.2))
                    .frame(width: 300, height: 300)
                    .blur(radius: 100)
                    .offset(y: -250)
                LinearGradient(
                    colors: [ .black],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    
//                    Image(systemName: "car.fill")
//                        .font(.system(size: 70))
//                        .foregroundColor(.yellow)
//
                    Image(systemName: "car.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.yellow)
                        .scaleEffect(animateLogo ? 1.1 : 0.9)
                        .shadow(color: .yellow, radius: 20)
                    Text("DreamGarage")
                        .font(.largeTitle.bold())
                        .foregroundColor(.yellow)
                    
                    VStack(spacing: 18) {
                        
                        HStack {
                            
                            Image(systemName: "envelope")
                            TextField("", text: $email, prompt: Text("Email").foregroundStyle(Color.white))
                               
                        }
                                .padding()
                                .foregroundColor(Color.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.yellow, lineWidth: 2)
                                )
                                
                        .cornerRadius(15)
                        
                        HStack {
                            
                            Image(systemName: "lock")
                            
                            if showPassword {
                                
                                TextField("", text: $password, prompt: Text("Password").foregroundStyle(Color.white))
                                 
                            } else {
                                
                                SecureField("Password", text: $password)
                            }
                                
                            Button {
                                
                                showPassword.toggle()
                                
                            } label: {
                                
                                Image(systemName: showPassword ? "eye.slash" : "eye")
                            }
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.yellow, lineWidth: 2)
                        )
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .background(.ultraThinMaterial)
                        .cornerRadius(15)
                        
                        HStack {
                            
                            Toggle("", isOn: $rememberMe)
                                .labelsHidden()
                            
                            Text("Remember me")
                                .foregroundColor(.white)
                            Spacer()
                            
                            Button("Forgot Password?") {
                                
                            }
                            .foregroundColor(.blue)
                        }
                        
                    }
                    
                    Button(action: {
                        authservice.logIn(email: email, Password: password) { resultMessage , success in
                            message = resultMessage
                            isLoggedin = success
                        }
                    })
                    {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.yellow, lineWidth: 2)
                            )
//                            .background(Color.blue)
//                            .background(
//
//                                LinearGradient(
//                                    colors: [.yellow, .purple],
//                                    startPoint: .leading,
//                                    endPoint: .trailing
//                                )
//
//                            )
                        
                            .shadow(color: .blue.opacity(0.5), radius: 15)
                            .cornerRadius(15)
                    }
                    
                                        Button {
                    
                                        } label: {
                    
                                            HStack {
                    
                                                Image(systemName: "globe")
                                                    .foregroundColor(.white)
                    
                                                Text("Continue with Google")
                                                    .foregroundColor(.white)
                                            }
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.blue)
                                            .cornerRadius(15)
                                        }
                    Button {

                    } label: {

                        HStack {

                            Image(systemName: "apple.logo")

                            Text("Continue with Apple")
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                    }
                    
                    HStack {
                        
                        Text("Don't have an account?")
                            .foregroundColor(.white)
                        
                        Button("Sign Up") {
                            
                            goToSignUp = true
                            
                        }
                        .foregroundColor(.yellow)
                    }
                }
                .onAppear {

                    withAnimation(
                        .easeInOut(duration: 1.5)
                        .repeatForever(autoreverses: true)
                    ) {

                        animateLogo.toggle()
                    }
                }
                .padding()
                .navigationDestination(isPresented: $goToHome) {
                    
                    MainTabView()
                    
                }
                
                .navigationDestination(isPresented: $goToSignUp) {
                    
                    SignUpView(isLoggedin: $isLoggedin, message: $message)
                    
                }
            }
        }
        .toolbar(.hidden)
    }
    }
}
    
#Preview {
    LoginView()
}
