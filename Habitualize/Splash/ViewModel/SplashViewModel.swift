//
//  SplashViewModel.swift
//  Habitualize
//
//  Created by Vanessa Lima De Barros on 18/06/24.
//

import Foundation
import SwiftUI

class SplashViewModel: ObservableObject {
    @Published var uiState: SplashUIState = .loading

    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.uiState = .goToSignInScreen
        }
    }
}

extension SplashViewModel {
    func goToSignInScreen() -> some View {
        return SplashRouter.makeSign()
    }
}
