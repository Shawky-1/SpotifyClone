//
//  HomePlaylists.swift
//  SpotifyClone
//
//  Created by Ahmed Alabiad on 28/04/2023.
//

import SwiftUI

struct HomePlaylists: View {
    let imageURL: URL
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            AsyncImage(url: imageURL) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                    .clipped()
                    .cornerRadius(10)
            } placeholder: {
                ZStack {
                    Image("Image-Placeholder")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 160, height: 160)
                        .clipped()
                        .cornerRadius(10)
                    ProgressView()
                }
            }
            
            HStack {
                Text(title)
                    .font(.custom("CircularStd-Bold", size: 17))
                .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 3)

            HStack {
                Text(description)
                    .font(.custom("CircularStd-Book", size: 16))
                    .foregroundColor(AppColors.secondaryText)
                .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 3)

        }
        .frame(width: 170)
        .preferredColorScheme(.dark)
    }
}

struct HomePlaylists_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(.horizontal){
            HStack{
                HomePlaylists(imageURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440")!, title: "Playlist Title", description: "Playlist description")
                HomePlaylists(imageURL: URL(string: "sss")!, title: "Playlist Title", description: "Playlist description")
                HomePlaylists(imageURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440")!, title: "Playlist Title", description: "Playlist description")
            }
        }
    }
}
