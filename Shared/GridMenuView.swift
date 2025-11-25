import SwiftUI

struct GridMenuView: View {
    @Binding var selection: MenuOption?
    let columns = [GridItem(.adaptive(minimum: 140), spacing: 16)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                MenuCard(title: "Unidades 1–6", systemImage: "book.closed") {
                    selection = .units
                }
                MenuCard(title: "Vocabulario", systemImage: "text.book.closed") {
                    selection = .vocabulary
                }
                MenuCard(title: "Gramática", systemImage: "text.alignleft") {
                    selection = .grammar
                }
                MenuCard(title: "Quizzes", systemImage: "pencil.and.outline") {
                    selection = .quizzes
                }
            }
            .padding()
        }
    }
}

struct MenuCard: View {
    let title: String
    let systemImage: String
    let action: ()->Void
    var body: some View {
        Button(action: action) {
            VStack(spacing: 12) {
                Image(systemName: systemImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 44)
                    .padding(8)
                Text(title)
                    .font(.headline)
            }
            .frame(maxWidth: .infinity, minHeight: 110)
            .background(RoundedRectangle(cornerRadius: 16).fill(Color.platformSecondaryBackground))
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.platformSeparator))
        }
    }
}
