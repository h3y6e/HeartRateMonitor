//
//  PagingView.swift
//  HeartRateMonitor WatchKit Extension
//
//  Created by Hiroya Kawase on 2021/06/27.
//

import SwiftUI

enum Tab {
    case controls, metrics
}

struct PagingView: View {
    @State private var selection: Tab = .controls
    
    var body: some View {
        TabView(selection: $selection, content: {
                    ControlsView().tag(Tab.controls)
                    MetricsView().tag(Tab.metrics)
                })
    }
}

struct PagingView_Previews: PreviewProvider {
    static var previews: some View {
        PagingView()
    }
}
