//
//  RootView.swift
//  SpotifyClone
//
//  Created by Ahmed Alabiad on 26/04/2023.
//

import Foundation
import SwiftUI

final class rootView: View {
    var body: some View {
        // This is the body of your custom view.
        // You can customize it as needed.
        // Set the `.colorScheme()` modifier to `.dark`
        // to ensure that all views based on this class are always in dark mode.
        Text("Hello, World!")
            .colorScheme(.dark)
    }
    
    func _makeView(view: _GraphValue<rootView>, inputs: _ViewInputs) -> _ViewOutputs {
        // Implementation of _makeView() method goes here
        // ...
    }
}
