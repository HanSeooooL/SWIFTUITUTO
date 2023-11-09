//
//  ScrumsView.swift
//  SWIFTUITUTO
//
//  Created by 한설 on 2023/11/09.
//

import SwiftUI

struct ScrumsView: View {   //View 구조체(객체) 생성
    @Binding var scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.Theme.mainColor)
            }
            .navigationTitle("Daily Scrum")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_previews: PreviewProvider {   //미리보기 실행 객체
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
