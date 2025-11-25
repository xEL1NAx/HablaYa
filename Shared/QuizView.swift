import SwiftUI

struct QuizView: View {
    let unit: Int
    @State private var questions: [QuizQuestion] = []
    @State private var current = 0
    @State private var score = 0
    @State private var showResult = false

    var body: some View {
        VStack(spacing: 20) {
            if current < questions.count {
                Text("Pregunta \(current + 1)/\(questions.count)")
                Text(questions[current].question).font(.headline)
                ForEach(0..<questions[current].options.count, id: \.self) { idx in
                    Button(action: {
                        if questions[current].options[idx] == questions[current].answer { score += 1 }
                        current += 1
                        if current >= questions.count { showResult = true }
                    }) {
                        Text(questions[current].options[idx])
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 8).stroke())
                    }
                }
            } else {
                Text("No hay preguntas para esta unidad")
            }
        }
        .padding()
        .onAppear { questions = DataStore.sampleQuizFor(unit: unit) }
        .sheet(isPresented: $showResult) {
            VStack(spacing: 16) {
                Text("Resultados").font(.title)
                Text("Has obtenido \(score)/\(questions.count)")
                Button("Cerrar") { showResult = false }
            }.padding()
        }
    }
}
