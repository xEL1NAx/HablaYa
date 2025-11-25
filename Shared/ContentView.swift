import SwiftUI

struct ContentView: View {
    @State private var selection: MenuOption? = nil
    var body: some View {
        NavigationView {
            GridMenuView(selection: $selection)
                .navigationTitle("Spanish Trainer")
#if os(iOS) || os(tvOS) || os(visionOS)
                .navigationBarTitleDisplayMode(.inline)
#endif
                .sheet(item: $selection) { opt in
                    switch opt {
                    case .units: UnitsHubView()
                    case .vocabulary: GlobalCategoriesView(startTab: .vocabulary)
                    case .grammar: GlobalCategoriesView(startTab: .grammar)
                    case .quizzes: GlobalCategoriesView(startTab: .exercises)
                    }
                }
            Text("Selecciona una opción del menú")
                .font(.title2)
                .foregroundStyle(.secondary)
        }
    }
}

enum MenuOption: Identifiable {
    case units, vocabulary, grammar, quizzes
    var id: Int { hashValue }
}
