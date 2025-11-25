import SwiftUI

struct GrammarView: View {
    let unit: Int
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("Gramática — Unidad \(unit)").font(.title2).bold()
                Text(DataStore.grammarFor(unit: unit))
                    .padding(.top, 4)
                Spacer()
            }
            .padding()
        }
    }
}
