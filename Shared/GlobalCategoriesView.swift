import SwiftUI

enum StartTab { case vocabulary, grammar, exercises }

struct GlobalCategoriesView: View {
    var startTab: StartTab = .vocabulary
    var body: some View {
        NavigationView {
            List {
                ForEach(1...6, id: \.self) { i in
                    Section(header: Text("Unidad \(i)")) {
                        NavigationLink(destination: VocabularyListView(words: DataStore.vocabFor(unit: i))) { Text("Vocabulario") }
                        NavigationLink(destination: GrammarView(unit: i)) { Text("Gramática") }
                        NavigationLink(destination: ExercisesView(unit: i)) { Text("Ejercicios") }
                    }
                }
            }
            .navigationTitle("Categorías Globales")
#if os(iOS) || os(tvOS) || os(visionOS)
            .navigationBarTitleDisplayMode(.inline)
#endif
        }
    }
}
