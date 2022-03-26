//
//  TextMod.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 25/03/22.
//

import SwiftUI

struct TextMod: View {
    var body: some View {
        Text("Hola, mundo!").font(.largeTitle).foregroundColor(.blue).padding().frame(width: 300, height: 100, alignment: .leading).background(Color.black)
        /*
         font: tipo de fuente
         foregroundColor: Elemento visual delantero, como es elcolor de la fuente
         padding: relleno del elemento(es como un espaciado extra entre el marco y el elemento (texto)
         frame: marco del elemento
         background: es el elemento visual trasero, o lo que es el color de fondo (aqui si es necesario colocar Color antes de poner .black)
         */
    }
}

struct TextMod_Previews: PreviewProvider {
    static var previews: some View {
        TextMod()
    }
}
