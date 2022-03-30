//
//  TextFields.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 28/03/22.
//

import SwiftUI

struct TextFields: View {
    //Normalmente las vistas son structs y no podemos modificar las variables pues son value types
    //Poniendo @State delante de una varaible nos permite modificar el valor sin problema
    //Lo que pasa dentro es que se borra la vista y se vuelve a construir con el valor modificado
   @State var textoVista:String = ""
    
    var body: some View {
        
        
        VStack {
            Text(textoVista)
            //Asi creamos un TextField (campo de texto o formulario)
            //Primero le daremos el texto que se devuelve como instruccion para el field y posteriormente le indicamos que guardaremos ese texto ingresado en una variable
            //Para ligar esta vairable (textoVista) con lo que estamos escribiendo, usamos el $ es decir estamos haciendo un Biding (una union)
            TextField("Escribe Contraseña", text: $textoVista)
            
            Button(action: {textoVista = "Eduardo"}, label: {
                Text("Cambia el texto de la vista")
            })
        }
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
