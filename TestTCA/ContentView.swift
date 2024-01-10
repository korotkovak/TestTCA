//
//  ContentView.swift
//  TestTCA
//
//  Created by Kristina Korotkova on 10.01.2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct CounterFeature {
    struct State: Equatable {
        var count = 0
    }

    enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .decrementButtonTapped:
                state.count -= 1
                return .none
            case .incrementButtonTapped:
                state.count += 1
                return .none
            }
        }
    }
}

struct ContentView: View {
    let store: StoreOf<CounterFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Text("\(viewStore.count)")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                HStack {
                    Button("-") { viewStore.send(.decrementButtonTapped) }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)

                    Button("+") { viewStore.send(.incrementButtonTapped) }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    ContentView(
        store: Store(initialState: CounterFeature.State()) {
        CounterFeature()
    })
}
