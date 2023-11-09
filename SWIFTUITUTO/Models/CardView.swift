//
//  CardView.swift
//  SWIFTUITUTO
//
//  Created by 한설 on 2023/11/09.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInminute)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInminute) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.Theme.accentColor)
    }
}

struct CardView_previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(.orange)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
