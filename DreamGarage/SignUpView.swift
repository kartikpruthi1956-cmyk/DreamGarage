import SwiftUI

struct SignUpView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showPassword = false
    @State private var animate = false
    @Binding var isLoggedin: Bool
    @Binding var message : String
    
    
    var body: some View {
        
            NavigationStack{
                ZStack {
                    
                    Color.black
                        .ignoresSafeArea()
                    
                    VStack(spacing: 25) {
                        
                        Spacer()
                        Image(systemName: "person.crop.circle.fill.badge.plus")
                            .font(.system(size: 90))
                            .foregroundColor(.yellow)
                            .scaleEffect(animate ? 1.1 : 0.9)
                        Text("Create Account")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                        
                        TextField("Full Name", text: $name)
                            .padding()
                            .background(Color.white.opacity(0.1))
                            .background(.ultraThinMaterial)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.yellow.opacity(0.2), lineWidth: 1)
                            )
                            .cornerRadius(15)
                            .foregroundColor(.white)
                        
                        TextField("Email", text: $email)
                            .padding()
                            .background(Color.white.opacity(0.1))
                            .background(.ultraThinMaterial)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.yellow.opacity(0.2), lineWidth: 1)
                            )
                            .cornerRadius(15)
                            .foregroundColor(.white)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white.opacity(0.1))

                            .background(.ultraThinMaterial)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.yellow.opacity(0.2), lineWidth: 1)
                            )                            .cornerRadius(15)
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
                                .background(

                                    LinearGradient(
                                        colors: [.yellow, .orange],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )

                                )
                                .cornerRadius(18)
                                .shadow(color: .yellow.opacity(0.5), radius: 15)
                                .cornerRadius(15)
                            
                        }
                        
                        Spacer()
                        
                    }
                    .padding()
//                    .onAppear {
//
//                        withAnimation(
//                            .easeInOut(duration: 1.5)
//                            .repeatForever(autoreverses: true)
//                        ) {
//
//                            animate.toggle()
//                        }
//                    }
                    
                }
                
            }
            
        }
    }

