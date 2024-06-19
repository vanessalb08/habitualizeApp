//
//  SplashView.swift
//  Habitualize
//
//  Created by Vanessa Lima De Barros on 20/11/23.
//

import SwiftUI

struct SplashView: View {

    @ObservedObject var viewModel: SplashViewModel

    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .goToSignInScreen:
                Text("Carregar Login")
            case .goToHomeScreen:
                Text("Carregar Home")
            case .error(let message):
                loadingView(error: message)
            }
        }.onAppear(perform: viewModel.onAppear)
    }
}

extension SplashView {
    func loadingView(error: String? =  nil) -> some View {
        ZStack {
            Image("logo2")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color(red: 230 / 255, green: 248 / 255, blue: 221 / 255))
                .ignoresSafeArea()

            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(
                            title: Text("Habitualize"),
                            message: Text(error),
                            dismissButton: .default(Text("Ok")) {
                                // fazer algo quando some o alerta, tipo tentar novamente
                        })
                    }
            }
        }
    }
}

struct SplashView_Preview: PreviewProvider {
    static var previews: some View {
        let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
}
