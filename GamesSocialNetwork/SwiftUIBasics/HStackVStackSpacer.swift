//
//  HStackVStackSpacer.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 28/03/22.
//

import SwiftUI

struct HStackVStackSpacer: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).border(Color.red)
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            
            HStack{
                Text("México").frame(width: 100, height: 100, alignment: .center)
                Text("México")
                Text("México")
            }
        }.border(Color.black)
    }
}

struct HStackVStackSpacer_Previews: PreviewProvider {
    static var previews: some View {
        HStackVStackSpacer()
    }
}
