import SwiftUI

struct UnitsHubView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1...6, id: \.self) { i in
                    NavigationLink(destination: UnidadDetailView(unit: i)) {
                        HStack {
                            Text("Unidad \(i)")
                            Spacer()
                            Text("Ver").foregroundColor(.accentColor)
                        }
                    }
                }
            }
            .navigationTitle("Unidades 1–6")
#if os(iOS) || os(tvOS) || os(visionOS)
            .navigationBarTitleDisplayMode(.inline)
#endif
        }
    }
}
