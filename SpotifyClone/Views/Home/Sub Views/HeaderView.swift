//
//  HeaderView.swift
//  SpotifyClone
//
//  Created by Ahmed Alabiad on 28/04/2023.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack{
            Text("Good evening")
                .font(.custom("CircularStd-Bold", size: 27))
            Spacer()
            Button {
                //Action for bell
            } label: {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .tint(.white)
                    .bold()
                
            }
            Button {
                //action for recently listened to
            } label: {
                Image(systemName: "clock")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .tint(.white)
                    .padding(.horizontal)
                    .bold()
            }
            Button {
                //action for recently listened to
            } label: {
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .tint(.white)
                    .bold()
                
            }
            
        }
        .padding(.vertical, 10)
    }
}

struct ExtractedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
