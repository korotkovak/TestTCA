//
//  ContactDetailFeature.swift
//  TestTCA
//
//  Created by Kristina Korotkova on 11.01.2024.
//

import ComposableArchitecture

@Reducer
struct ContactDetailFeature {
    struct State: Equatable {
        let contact: Contact
    }

    enum Action {
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            }
        }
    }
}
