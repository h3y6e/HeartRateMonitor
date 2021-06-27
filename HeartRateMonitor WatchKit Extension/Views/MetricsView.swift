//
//  MetricsView.swift
//  HeartRateMonitor WatchKit Extension
//
//  Created by Hiroya Kawase on 2021/06/27.
//

import SwiftUI

struct MetricsView: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            ElapsedTimeView(elapsedTime: 3 * 60 + 15.24, showSubseconds: true)
                .foregroundColor(.yellow)
            Text(
                String(153) + " bpm"
            )
        })
        .font(.system(.title, design: .rounded)
                .monospacedDigit()
                .lowercaseSmallCaps()
        )
    }
}

struct MetricsView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsView()
    }
}
