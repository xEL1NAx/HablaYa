import SwiftUI

struct VocabularyListView: View {
    let words: [VocabEntry]
    @State private var filter = ""

    var body: some View {
        List {
            if !filter.isEmpty {
                ForEach(words.filter { $0.spanish.localizedCaseInsensitiveContains(filter) || $0.english.localizedCaseInsensitiveContains(filter) }) { w in
                    VocabRow(entry: w)
                }
            } else {
                ForEach(words) { w in
                    VocabRow(entry: w)
                }
            }
        }
        .searchable(text: $filter)
    }
}

struct VocabRow: View {
    let entry: VocabEntry
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(entry.spanish).font(.headline)
                Text(entry.english).font(.subheadline).foregroundColor(.secondary)
            }
            Spacer()
            if let note = entry.note { Text(note).font(.caption).foregroundColor(.secondary) }
        }
        .padding(.vertical, 6)
    }
}
