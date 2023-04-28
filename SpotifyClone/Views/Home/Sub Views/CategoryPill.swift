//
//  CategoryPill.swift
//  SpotifyClone
//
//  Created by Ahmed Alabiad on 28/04/2023.
//

import SwiftUI

struct CategoryPill: View {
    var title = ""
    var body: some View {
        Text(title)
            .font(.custom("CircularStd-Medium", size: 16))
            .foregroundColor(.white)
            .padding(10)
            .background(AppColors.grayBackground)
            .clipShape(Capsule())
    }
        

}

struct CategoryPill_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPill(title: "Music")
    }
}
