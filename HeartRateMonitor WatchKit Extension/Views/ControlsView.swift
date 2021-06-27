//
//  ControlsView.swift
//  HeartRateMonitor WatchKit Extension
//
//  Created by Hiroya Kawase on 2021/06/27.
//

import SwiftUI

struct ControlsView: View {
    var body: some View {
        HStack {
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "xmark")
                })
                .foregroundColor(.red)
                .font(.title2)
                Text("End")
            }
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "pause")
                })
                .foregroundColor(.yellow)
                .font(.title2)
                Text("Pause")
            }
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
