//
//  HomeView.swift
//  SpotifyClone
//
//  Created by Ahmed Alabiad on 26/04/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView{
            //MARK: - HeaderView
            HomeHeaderView()
            
            //MARK: - Category Pods
            HStack{
                CategoryPill(title:"Music")
                CategoryPill(title:"Podcasts & Shows")
                Spacer()
            }
            .padding(.bottom, 10)
            //MARK: - Recent Playlists
            HStack{
                VStack{
                    PlaylistsView(imageURL: URL(string: "Google.com")!, text: "Liked Songs")
                    PlaylistsView(imageURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440")!, text: "Liked Songs")
                    PlaylistsView(imageURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440")!, text: "Liked Songs")
                }
                VStack{
                    PlaylistsView(imageURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440")!, text: "Liked Songs")
                    PlaylistsView(imageURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440")!, text: "Liked Songs")
                    PlaylistsView(imageURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440")!, text: "Liked Songs")
                }
            }
            .padding(.bottom, 15)
            //MARK: - Playlists
            VStack{
                HStack {
                    Text("Your shows")
                        .font(.custom("CircularStd-Bold", size: 27))
                    Spacer()
                }
                ScrollView(.horizontal) {
                    HStack{
                        HomePlaylists(imageURL: URL(string: "https://www.billboard.com/wp-content/uploads/2022/03/50.-Taylor-Swift-%E2%80%981989-2014-album-art-billboard-1240.jpg?w=600")!, title: "Taylor swift", description: "taylor swift")
                        HomePlaylists(imageURL: URL(string: "https://www.billboard.com/wp-content/uploads/2022/03/50.-Taylor-Swift-%E2%80%981989-2014-album-art-billboard-1240.jpg?w=600")!, title: "Taylor swift", description: "taylor swift")
                        HomePlaylists(imageURL: URL(string: "https://www.billboard.com/wp-content/uploads/2022/03/50.-Taylor-Swift-%E2%80%981989-2014-album-art-billboard-1240.jpg?w=600")!, title: "Taylor swift", description: "taylor swift")
                    }
                }
            }
            
            ForEach(1..<50){ index in
                Text("Test")
            }
        }
        .preferredColorScheme(.dark)
        .padding(.horizontal, 10)

        .background(Color(red: 19/255, green: 19/255, blue: 19/255))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



var header: some View {
    ScrollViewHeader {
        ZStack {
            LinearGradient(
                colors: [.brown, .black],
                startPoint: .top,
                endPoint: .bottom
            )
            AsyncImage(
                url: URL(string: "https://upload.wikimedia.org/wikipedia/en/8/8f/AnthraxWCFYA.jpg"),
                content: { image in
                    image.image?.resizable()
                        .aspectRatio(contentMode: .fit)
                }
            )
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(5)
            .shadow(radius: 10)
            .padding(.top, 60)
            .padding(.horizontal, 20)
        }
    }
    .frame(height: 280)
}

