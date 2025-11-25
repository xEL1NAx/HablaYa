import SwiftUI

struct UnidadDetailView: View {
    let unit: Int
    @State private var showSection: UnidadSection = .vocabulary

    var body: some View {
        VStack {
            Picker("Sección", selection: $showSection) {
                ForEach(UnidadSection.allCases, id: \.self) { s in
                    Text(s.rawValue.capitalized).tag(s)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            switch showSection {
            case .vocabulary:
                VocabularyListView(words: DataStore.vocabFor(unit: unit))
            case .grammar:
                GrammarView(unit: unit)
            case .exercises:
                ExercisesView(unit: unit)
            }
            Spacer()
        }
        .navigationTitle("Unidad \(unit)")
    }
}

enum UnidadSection: String, CaseIterable {
    case vocabulary, grammar, exercises
}
