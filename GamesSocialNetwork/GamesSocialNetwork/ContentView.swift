//
//  ContentView.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 23/03/22.
//

import SwiftUI

//ContentView: View hace referencia al nombre de estructura y a su protocolo
//En este tipo de protocolo (View) le esta diciendo que tu tienes que devolverle una vista

struct ContentView: View {
    //¿que vista estmos devolviendo?
    //Estamos devolviendo esta computed property:
    var body: some View { //el some significa que cualquier tipo de vista
        Text("Hello, world!")
            .padding()
    }
}


//Esta struct se utiliza para mostrar en el canvas
//el protocolo PreviewProvider dice que le tiene que regresar una variable estatica que devuelva una vista
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //aqui dice que l vista principal del canvas es:
        Buttons() //la vista en este caso es el ContetnView()
    }
}



//GLOSARIO RAPIDO
/*
 ¿que son las vistas?
 Las vistas son los que nos van a permitir presentar contenido en la pantalla
 Ejemplos de vistas: Texto, imagenes, divisores, contenedores, botonoes, menus, cajas de texto
 
 ¿Que son los controles?
 Los controles son los que permiten manejar las interacciones con el usuario
 Ejemplo: Boton 
 
 ¿Es importante el orden de los modificadores de una vista?
 Si, dependiendo el otden en el que ponemos los modificadores nuestra vista tendra un resultado
 
 */
