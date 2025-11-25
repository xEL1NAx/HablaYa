import Foundation

/// Centralized data. Replace placeholder arrays with the full vocabulary and grammar content from
/// Adelante Curso Esencial 1 (Klett) Units 1–6. If you want, provide CSV/JSON and I can import automatically.
struct DataStore {
    // Access helpers
    static func vocabFor(unit: Int) -> [VocabEntry] {
        switch unit {
        case 1: return Unidad1Vocab.items
        case 2: return Unidad2Vocab.items
        case 3: return Unidad3Vocab.items
        case 4: return Unidad4Vocab.items
        case 5: return Unidad5Vocab.items
        case 6: return Unidad6Vocab.items
        default: return []
        }
    }

    static func grammarFor(unit: Int) -> String {
        switch unit {
        case 1: return Unidad1Grammar.text
        case 2: return Unidad2Grammar.text
        case 3: return Unidad3Grammar.text
        case 4: return Unidad4Grammar.text
        case 5: return Unidad5Grammar.text
        case 6: return Unidad6Grammar.text
        default: return ""
        }
    }

    static func sampleQuizFor(unit: Int) -> [QuizQuestion] {
        switch unit {
        case 1: return Unidad1Quiz.questions
        case 2: return Unidad2Quiz.questions
        case 3: return Unidad3Quiz.questions
        case 4: return Unidad4Quiz.questions
        case 5: return Unidad5Quiz.questions
        case 6: return Unidad6Quiz.questions
        default: return []
        }
    }

    static func mergedVocab() -> [VocabEntry] {
        return Unidad1Vocab.items + Unidad2Vocab.items + Unidad3Vocab.items + Unidad4Vocab.items + Unidad5Vocab.items + Unidad6Vocab.items
    }
}
