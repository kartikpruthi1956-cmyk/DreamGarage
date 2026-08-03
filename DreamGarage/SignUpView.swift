import SwiftUI

struct SignUpView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @Binding var isLoggedin: Bool
    @Binding var message : String
    
    
    var body: some View {
        if isLoggedin{
            HomeView()
        }else{
            NavigationStack{
                ZStack {
                    
                    Color.black
                        .ignoresSafeArea()
                    
                    VStack(spacing: 25) {
                        
                        Spacer()
                        
                        Text("Create Account")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                        
                        TextField("Full Name", text: $name)
                            .padding()
                            .background(Color.white.opacity(0.1))
                            .cornerRadius(15)
                            .foregroundColor(.white)
                        
                        TextField("Email", text: $email)
                            .padding()
                            .background(Color.white.opacity(0.1))
                            .cornerRadius(15)
                            .foregroundColor(.white)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white.opacity(0.1))
                            .cornerRadius(15)
                            .foregroundColor(.white)
                        
                        Button(action: {
                            authservice.SignUp(email: email, username: name, Password: password) { resultMessage , success in
                                message = resultMessage
                                isLoggedin = success
                            }
                        })
                        {
                            
                            Text("Create Account")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
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
}

