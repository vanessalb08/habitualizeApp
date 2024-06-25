//
//  SignInView.swift
//  Habitualize
//
//  Created by Vanessa Lima De Barros on 20/06/24.
//

import SwiftUI

struct SignInView: View {

    @ObservedObject var viewModel = SignInViewModel()

    @State var login = ""
    @State var password = ""

    @State var navigationHidden = true

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center, spacing: 80) {
                    Spacer(minLength: 36)
                    VStack(alignment: .center, spacing: 8) {
                        imageSignIn
                        titleLabel
                        loginField
                        passwordField
                        loginButton
                        signUp
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 32)
                .background(Color.white)
                .navigationBarTitle("Login", displayMode: .inline)
                .navigationBarHidden(navigationHidden)
            }
            .onAppear {
                self.navigationHidden = true
            }
            .onDisappear {
                self.navigationHidden = false
            }
        }
    }

}

// MARK: - View Components
extension SignInView {
    var imageSignIn: some View {
        Image("small_logo")
            .resizable()
            .scaledToFit()
            .padding(.horizontal, 48)
    }

    var titleLabel: some View {
        Text("Login")
            .foregroundColor(.green)
            .font(Font.system(.title).bold())
            .padding(.bottom, 8)
    }

    var loginField: some View {
        TextField("", text: $login)
            .border(Color.black)

    }

    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.black)
    }

    var loginButton: some View {
        Button("Entrar") {
            // ação ao entrar
        }
    }

    var signUp: some View{
        VStack {
            Text("Não possui cadastro?")
                .foregroundColor(.gray)
                .padding(.top, 48)

            ZStack {
                NavigationLink {
                    Text("Tela de Cadastro")
                } label: {
                    Text("Realize seu cadastro")
                }
            }
        }
    }
}

struct SignInView_Preview: PreviewProvider {
    static var previews: some View {
        let viewModel = SignInViewModel()
        SignInView(viewModel: viewModel)
    }
}
