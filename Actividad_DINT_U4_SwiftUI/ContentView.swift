//
//  ContentView.swift
//  Actividad_DINT_U4_SwiftUI
//
//  Created by user258285 on 1/25/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var filmData = FilmData() // Crear instancia del modelo de datos
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                    ForEach(filmData.films) { film in
                        NavigationLink(destination: FilmDetailView(film: film)) {
                            FilmCardView(film: film)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Películas")
        }
    }
}
