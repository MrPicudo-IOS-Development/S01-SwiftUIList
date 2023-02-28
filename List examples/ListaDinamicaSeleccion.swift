/* ListaDinamicaSeleccion.swift --> List examples. Created by Miguel Torres on 28/02/23.*/

import SwiftUI

// Estructura que adopta los protocolos Identifiable y Hashable (para poder hacer selecciones en la lista)
struct Winner: Identifiable, Hashable {
    let id = UUID() // Al usar UUID() para el protocolo Identifiable, nos evitamos el tener que escribir nosotros el id de tipo String al crear el objeto.
    let name: String
}

// Arreglo de objetos de la estructura que adopta el protocolo Identifiable
private var winners = [
    Winner(name: "Miguel Torres"),
    Winner(name: "Anatole Debierre"),
    Winner(name: "Bryanza Novirahman"),
    Winner(name: "Carl Voller"),
    Winner(name: "Diego Silva"),
    Winner(name: "Eunbi Cho"),
    Winner(name: "Frank Chu"),
    Winner(name: "Gaeun Lee"),
    Winner(name: "Haotian Zheng"),
    Winner(name: "Jia Chen"),
    Winner(name: "Paulo César")
]


struct ListaDinamicaSeleccion: View {
    // Variable de estado que nos permite seleccionar objetos de la lista (adentro de la estructura)
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationStack {
            List(winners, selection: $multiSelection) {
                Text($0.name)
            }
            .navigationTitle("Winners of WWDC23")
            .toolbar{EditButton()}
        }
        Text("\(multiSelection.count) selecctions")
    }
}

struct ListaDinamicaSeleccion_Previews: PreviewProvider {
    static var previews: some View {
        ListaDinamicaSeleccion()
    }
}
