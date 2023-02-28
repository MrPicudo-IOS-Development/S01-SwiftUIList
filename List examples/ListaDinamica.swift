/* ListaDinamica.swift --> List examples. Created by Miguel Torres on 28/02/23. */

// Lista dinámica, en donde los objetos se obtienen de un arreglo subyacente creado de una estructura que adopta el protocolo Identifiable.

import SwiftUI

// Estructura que adopta el protocolo Identifiable, con dos atributos únicamente (siempre)
struct Candidate: Identifiable {
    let id = UUID() // UIID es un valor único de uso universal para identificar tipos, interfaces y otros objetos.
    let name: String
}

// Arreglo de objetos de la estructura que adopta el protocolo Identifiable, el valor del id se genera automáticamente con la estructura UUID()
private var candidates = [
    Candidate(name: "Miguel Torres"),
    Candidate(name: "Anatole Debierre"),
    Candidate(name: "Bryanza Novirahman"),
    Candidate(name: "Carl Voller"),
    Candidate(name: "Diego Silva"),
    Candidate(name: "Eunbi Cho"),
    Candidate(name: "Frank Chu"),
    Candidate(name: "Gaeun Lee"),
    Candidate(name: "Haotian Zheng"),
    Candidate(name: "Jia Chen"),
    Candidate(name: "Paulo César")
]

// En la versión del 2023 de SwiftUI, la manera de crear listas dinámicamente es la siguiente:
struct ListaDinamica: View {
    var body: some View {
        List(candidates) {
            Text($0.name) // El signo $ representa una elemento del arreglo, y accedemos al atributo name de dicho elemento.
                .bold()
                .foregroundColor(.purple)
        }
    }
}

// Estructura que controla lo que se verá en el Preview.
struct ListaDinamica_Previews: PreviewProvider {
    static var previews: some View {
        ListaDinamica()
    }
}
