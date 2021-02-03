//
//  LogInView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-10.
//

import SwiftUI

struct LogInView: View {
    @State var email = ""
    @State var password = ""

//    @ObservedObject var viewModel = AuthViewModel()
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("twitter-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .padding(.top, 88)
                    
                    VStack {
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .padding(.vertical)

                        CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                    }
                    .padding()
                    .foregroundColor(.white)

                    
                    HStack {
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Forgot Password?")
                        })
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding()
                    }
                    
                    Button(action: {
                        viewModel.login(withEmail: email, password: password)
                    }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(Color(#colorLiteral(red: 0.1159182265, green: 0.6317420602, blue: 0.9511597753, alpha: 1)))
                            .padding()
                            .frame(width: 360, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                    })
                    .cornerRadius(20)
                    .foregroundColor(.white)

                    
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: RegisterView().navigationBarBackButtonHidden(true),
                        label: {
                            HStack {
                                Text("Dont have an account?")
                                    .font(.system(size: 14))
                                Text("Sign Up")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .foregroundColor(.white)
                            .padding(40)
                        })
                }
            }
            .background(Color(#colorLiteral(red: 0.1159182265, green: 0.6317420602, blue: 0.9511597753, alpha: 1)))
            .ignoresSafeArea()
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
