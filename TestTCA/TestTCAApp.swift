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
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
    }

    var body: some Scene {
        WindowGroup {
            ContentView(store: TestTCAApp.store)
        }
    }
}
