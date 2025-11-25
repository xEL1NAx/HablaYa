import SwiftUI

struct ExercisesView: View {
    let unit: Int
    var body: some View {
        VStack(spacing: 16) {
            Text("Ejercicios — Unidad \(unit)").font(.title2)
            NavigationLink(destination: QuizView(unit: unit)) { Text("Empezar Quiz") }
            Spacer()
        }
        .padding()
    }
}
