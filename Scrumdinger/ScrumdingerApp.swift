//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Crazygit on 2022/8/9.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
