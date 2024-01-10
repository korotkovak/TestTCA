//
//  CounterFeatureTests.swift
//  CounterFeatureTests
//
//  Created by Kristina Korotkova on 10.01.2024.
//

import ComposableArchitecture
import XCTest
@testable import TestTCA

@MainActor
final class CounterFeatureTests: XCTestCase {
  func testCounter() async {
    let store = TestStore(initialState: CounterFeature.State()) {
      CounterFeature()
    }

    await store.send(.incrementButtonTapped) {
      $0.count = 1
    }
    await store.send(.decrementButtonTapped) {
      $0.count = 0
    }
  }
}
