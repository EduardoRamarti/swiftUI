//
//  TabViews.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 29/03/22.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        
        //TabView nos ayuda a navegar entre vistas dentro de una misma pantalla, es decir, es como las citas que vemos dentro de las aplicaciones para poder navegar en las mismas 
        
        TabView{
            
            TextMod().tabItem{
                Text("Pantalla 1")
                Image(systemName: "moon")
            }
            
            TextFields().tabItem{
                Image(systemName: "play")
            }
            
            ZStackPadding().tabItem{
                Text("Pantalla 3")
                Image(systemName: "terminal")
            }
            
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
