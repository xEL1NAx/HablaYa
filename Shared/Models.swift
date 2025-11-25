import Foundation

struct VocabEntry: Identifiable, Codable {
    let id = UUID()
    let spanish: String
    let english: String
    let note: String?
}

struct QuizQuestion: Identifiable, Codable {
    let id = UUID()
    let question: String
    let options: [String]
    let answer: String
}
