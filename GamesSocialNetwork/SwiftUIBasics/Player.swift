//
//  Player.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 30/03/22.
//

import SwiftUI
import AVKit

struct Player: View {
    
    @State var isPlayerActive:Bool = false
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                ZStack {
                    Button(action: {isPlayerActive = true}, label: {
                        Image("cuphead")
                            .resizable()
                            .scaledToFit()
                    })
                    
                    Image(systemName: "play.fill")
                        .foregroundColor(Color.white)
                        
                }
                
                NavigationLink(destination: VideoPlayer(player: AVPlayer(url: URL(string: "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4")!)).frame(width: 420, height: 360),
                               isActive: $isPlayerActive,
                               label: {EmptyView()})
                
            }
            
        }
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
