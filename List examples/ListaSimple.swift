/* ListaSimple.swift --> List examples. Created by Miguel Torres on 27/02/23. */

/* Una lista es un contenedor de datos en forma de filas que se acomodan en una sola columna, con selección opcional de sus elementos. */

// Lista simple, en donde creamos su contenido estáticamente, objeto por objeto.

import SwiftUI

struct ListaSimple: View {
    var body: some View {
        List {
            Text("Hola")
            Text("Mundo")
            Text("desde")
            Text("SwiftUI")
            Image(systemName: "macbook.and.ipad")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
        }
    }
}

struct ListaSimple_Previews: PreviewProvider {
    static var previews: some View {
        ListaSimple()
    }
}
