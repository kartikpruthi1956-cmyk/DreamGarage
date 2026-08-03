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
    
    var body: some View {
        if isLoggedin{
            HomeView()
        }else{
        NavigationStack{
            ZStack {
                
                LinearGradient(
                    colors: [ .black],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    
                    Image(systemName: "car.fill")
                        .font(.system(size: 70))
                        .foregroundColor(.yellow)
                    
                    Text("DreamGarage")
                        .font(.largeTitle.bold())
                        .foregroundColor(.yellow)
                    
                    VStack(spacing: 18) {
                        
                        HStack {
                            
                            Image(systemName: "envelope")
                            
                            TextField("Email", text: $email)
                        }
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(15)
                        
                        HStack {
                            
                            Image(systemName: "lock")
                            
                            if showPassword {
                                
                                TextField("Password", text: $password)
                                
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
                        .background(Color.gray)
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
                            .background(Color.blue)
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
                    
                    HStack {
                        
                        Text("Don't have an account?")
                            .foregroundColor(.white)
                        
                        Button("Sign Up") {
                            
                            goToSignUp = true
                            
                        }
                        .foregroundColor(.yellow)
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
    }
    }
}
#Preview {
    LoginView()
}
