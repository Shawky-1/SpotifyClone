//
//  PlaylistsView.swift
//  SpotifyClone
//
//  Created by Ahmed Alabiad on 26/04/2023.
//

import SwiftUI

struct PlaylistsView: View {
    let imageURL: URL
    let text: String
    
    var body: some View {
        HStack {
            AsyncImage(url: imageURL) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 60)
                    .clipped()
            } placeholder: {
                ZStack {
                    Image("Image-Placeholder")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 60)
                        .clipped()
                        .padding(.trailing, 8)
                    ProgressView()
                }
            }
            
            Text(text)
                .font(.custom("CircularStd-Bold", size: 14))
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .lineLimit(3)
                .minimumScaleFactor(0.6)
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width / 2 - 10, height: 60)
        .background(AppColors.grayBackground)
        .cornerRadius(5)
    }
}

struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            PlaylistsView(
                imageURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440")!,
                text: "Today's top hits"
            )

        }
    }
}

