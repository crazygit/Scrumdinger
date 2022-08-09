//
//  CardView.swift
//  Scrumdinger
//
//  Created by Crazygit on 2022/8/9.
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
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    // 使用自定义的TrailingIconLabelStyle
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]

    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            // 设置预览视图的大小为 400x60
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
