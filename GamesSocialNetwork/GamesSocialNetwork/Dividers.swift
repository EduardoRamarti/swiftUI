//
//  Dividers.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 28/03/22.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
        
        VStack {
            
            Circle()
                .frame(width: 100, height: 100, alignment: .center)
            
            Text("Circulo Negro")
            
            //El divisor, literal es un divisor con el cual vamos a divir entre dos elementos del vstack
            
            Divider().frame(height: 8).background(Color.red)
            
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 150, height: 75, alignment: .center)
            
            Text("Rectangulo Azul")
            
        }
        
    }
}

struct Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Dividers()
    }
}
