//
//  SWIFTUITUTOApp.swift
//  SWIFTUITUTO
//
//  Created by 한설 on 2023/11/09.
//

import SwiftUI

@main
struct SWIFTUITUTOApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
