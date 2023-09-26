 //
//  Tasks_swiftApp.swift
//  Tasks.swift
//
//  Created by User on 22/09/23.
//
import SwiftUI
/*
 Model - Data Point
 View - UI
 ViewModel - manages Models for view
 
 */

@main
struct Tasks_swiftApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
