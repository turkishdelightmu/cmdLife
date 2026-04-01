// cmdLife/Core/Models/Priority.swift
//
// Priority
// Represents the urgency level of a task in TermLife.
//
// Conforms to:
//   - Codable      → required by SwiftData to save/load from disk
//   - CaseIterable → lets Swift generate Priority.allCases automatically
//
// Display labels ("HIGH", "MED", "LOW", "URGENT") are produced by the
// `label` computed property.
// Colors and icons are also defined here so UI stays clean.

import SwiftUI

enum Priority: Codable, CaseIterable {

    case high
    case medium
    case low
    case urgent

    // MARK: - Label
    var label: String {
        switch self {
        case .high:
            return "HIGH"
        case .medium:
            return "MED"
        case .low:
            return "LOW"
        case .urgent:
            return "URGENT"
        }
    }

    // MARK: - Color
    var color: Color {
        switch self {
        case .low:
            return .gray
        case .medium:
            return .teal
        case .high:
            return Color(red: 232/255, green: 168/255, blue: 56/255) // Amber
        case .urgent:
            return .red
        }
    }

    // MARK: - Icon (Terminal Style)
    var icon: String {
        switch self {
        case .low:
            return "↓"
        case .medium:
            return "→"
        case .high:
            return "↑"
        case .urgent:
            return "!"
        }
    }
}
