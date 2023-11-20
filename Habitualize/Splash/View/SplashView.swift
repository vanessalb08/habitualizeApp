//
//  SplashView.swift
//  Habitualize
//
//  Created by Vanessa Lima De Barros on 20/11/23.
//

import SwiftUI

struct SplashView: View {

    @State var state: SplashUIState = .loading

    var body: some View {
        switch state {
        case .loading:
            loadingView()
        case .goToSignInScreen:
            Text("Carregar Login")
        case .goToHomeScreen:
            Text("Carregar Home")
        case .error(let mensage):
            Text("Erro: \(mensage)")
        }
    }
}

extension SplashView {
    func loadingView() -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.gray)
                .ignoresSafeArea()
        }
    }
}

struct SplashView_Preview: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
