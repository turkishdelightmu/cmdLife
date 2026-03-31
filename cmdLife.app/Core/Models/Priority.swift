// TermLife/Core/Models/Priority.swift
//
// Priority
// Represents the urgency level of a task in TermLife.
//
// Conforms to:
//   - Codable      → required by SwiftData to save/load from disk
//   - CaseIterable → lets Swift generate Priority.allCases automatically
//
// Display labels ("HIGH", "MED", "LOW") are produced by the
// `label` computed property using a switch — the same pattern
// Paul Hudson uses in 100 Days of SwiftUI, Day 4.

import Foundation

enum Priority: Codable, CaseIterable {

    case high
    case medium
    case low

    // Returns the terminal-style label for this priority level.
    // Used wherever a task is displayed in the TerminalView.
    
    var label: String {                     // Type annotation on a property
        switch self {                       // Switching over an enum value
        case .high:   return "HIGH"         // if I am .high, return "HIGH"
        case .medium: return "MED"          // if I am .medium, return "MED"
        case .low:    return "LOW"          // if I am .low, return "LOW"
        }
    }
}
