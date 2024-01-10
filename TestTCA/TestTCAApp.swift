//
//  TestTCAApp.swift
//  TestTCA
//
//  Created by Kristina Korotkova on 10.01.2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct TestTCAApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(initialState: CounterFeature.State()) {
                CounterFeature()
            })
        }
    }
}
