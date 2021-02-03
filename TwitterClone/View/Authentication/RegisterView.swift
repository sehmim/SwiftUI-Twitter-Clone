//
//  RegisterView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-10.
//

import SwiftUI

struct RegisterView: View {
    @State var email = ""
    @State var password = ""
    @State var fullname = ""
    @State var username = ""
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    
    // Keeps track on the current screen is being showed based on navigation
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    // Auth
    //    @ObservedObject var viewModel = AuthViewModel() 
    @EnvironmentObject var viewModel: AuthViewModel

    // Casts and loads image after user picks an image
    func loadImage() {
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }
    
    var body: some View {
        ZStack {
            VStack {
                
                Button(action: { self.showImagePicker.toggle() }, label: {
                    ZStack {
                        if let image = image {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .clipped()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .padding(.top, 88)
                                .padding(.bottom, 20)

                        } else {
                            Image("plus_photo")
                                .resizable()
                                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .padding(.top, 88)
                                .padding(.bottom, 20)
                                .foregroundColor(.white)
                        }
                    }
                }).sheet(isPresented: $showImagePicker, onDismiss: loadImage, content: {
                    ImagePicker(image: $selectedUIImage)
                })
                
                VStack(spacing: 16) {
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                    
                    CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)

                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .foregroundColor(.white)
                
                
                Button(action: {
                    guard let image = selectedUIImage else {return}
                    viewModel.registerUser(email: email, password: password, username: username, fullname: fullname, profileImage: image)
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(Color(#colorLiteral(red: 0.1159182265, green: 0.6317420602, blue: 0.9511597753, alpha: 1)))
                        .padding()
                        .frame(width: 360, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(Capsule())
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding()
                })
                
                
                    Spacer()
                
                Button(action: {mode.wrappedValue.dismiss()}, label: {
                        HStack {
                            Text("Already have an account?")
                                .font(.system(size: 15))
                            Text("Sign In")
                                .font(.system(size: 15, weight: .semibold))
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


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
