//
//  ContentView.swift
//  HeartRateMonitor WatchKit Extension
//
//  Created by Hiroya Kawase on 2021/06/27.
//

import SwiftUI
import HealthKit

struct StartView: View {
//    var workoutType: HKWorkoutActivityType = .other
    
    var body: some View {
            NavigationLink(
                "Start",
                destination: PagingView()
            ).padding(
                EdgeInsets(top: 15, leading: 5, bottom: 15, trailing: 5)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
