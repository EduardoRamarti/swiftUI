//
//  reto.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 28/03/22.
//

import SwiftUI

struct reto: View {
    var body: some View {
    
        VStack(alignment: .trailing) {
            Text("1").border(.black)
            Text("2").border(.black)
            Text("3").border(.black)
            
            HStack(alignment: .top) {
                Text("A")
                    .frame(width: 100, height: 100, alignment: .center)
                    .border(.black)
                Text("B").border(.black)
                Text("C").border(.black)
            }.background(Color.red)
        }.background(Color.blue)
    
    }
}

struct reto_Previews: PreviewProvider {
    static var previews: some View {
        reto()
    }
}
