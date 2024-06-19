//
//  HabitualizeApp.swift
//  Habitualize
//
//  Created by Vanessa Lima De Barros on 20/11/23.
//

import SwiftUI

@main
struct HabitualizeApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
