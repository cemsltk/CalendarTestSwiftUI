//
//  ContentView.swift
//  CalendarAppTest
//
//  Created by Cem Saltık on 4.07.2022.
//

import SwiftUI
import ElegantCalendar

struct ContentView: View {


        @ObservedObject var calendarManager = ElegantCalendarManager(
            configuration: CalendarConfiguration(startDate: Date().addingTimeInterval(TimeInterval(60 * 60 * 24 * (-30 * 36))),
                                                 endDate: Date().addingTimeInterval(TimeInterval(60 * 60 * 24 * (30 * 36)))))
    
    var body: some View {
        ElegantCalendarView(calendarManager: calendarManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
