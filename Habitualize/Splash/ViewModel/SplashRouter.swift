//
//  SplashRouter.swift
//  Habitualize
//
//  Created by Vanessa Lima De Barros on 20/06/24.
//

import Foundation
import SwiftUI

enum SplashRouter {
    static func makeSign() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
