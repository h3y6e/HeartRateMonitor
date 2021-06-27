//
//  SummaryView.swift
//  HeartRateMonitor WatchKit Extension
//
//  Created by Hiroya Kawase on 2021/06/27.
//

import SwiftUI

struct SummaryView: View {
    @State private var durationFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.zeroFormattingBehavior = .pad
        return formatter
    }()
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, content: {
                SummaryMetricView(title: "Total Time",
                                  value: durationFormatter.string(from: 30 * 60 + 15) ?? "")
                    .accentColor(.yellow)
                Divider()
                SummaryMetricView(title: "Avg. Heart Rate",
                                  value: String(143) + " bpm")
                    .accentColor(.red)
                Button("Done", action: {})
            })
        }
        .navigationTitle("Summary")
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}

struct SummaryMetricView: View {
    var title: String
    var value: String
    
    var body: some View {
        Text(title)
        Text(value)
            .font(.system(.title2, design: .rounded)
                    .lowercaseSmallCaps()
            )
            .foregroundColor(.accentColor)
    }
}

