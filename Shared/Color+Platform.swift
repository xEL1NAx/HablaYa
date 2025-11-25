import SwiftUI

#if os(iOS) || os(tvOS) || os(visionOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

extension Color {
    /// A secondary background color that adapts to the current platform.
    static var platformSecondaryBackground: Color {
        #if os(iOS) || os(tvOS) || os(visionOS)
        return Color(uiColor: .secondarySystemBackground)
        #elseif os(macOS)
        // A subtle background appropriate for content cards on macOS
        return Color(nsColor: .underPageBackgroundColor)
        #endif
    }

    /// A separator color that adapts to the current platform.
    static var platformSeparator: Color {
        #if os(iOS) || os(tvOS) || os(visionOS)
        return Color(uiColor: .separator)
        #elseif os(macOS)
        return Color(nsColor: .separatorColor)
        #endif
    }
}
