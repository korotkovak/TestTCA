//
//  AppFeatureTests.swift
//  TestTCATests
//
//  Created by Kristina Korotkova on 10.01.2024.
//

import ComposableArchitecture
import XCTest
@testable import TestTCA

@MainActor
final class AppFeatureTests: XCTestCase {
  func testIncrementInFirstTab() async {
      let store = TestStore(initialState: AppFeature.State()) {
          AppFeature()
      }

      await store.send(.tab1(.incrementButtonTapped)) {
          $0.tab1.count = 1
      }
  }
}
