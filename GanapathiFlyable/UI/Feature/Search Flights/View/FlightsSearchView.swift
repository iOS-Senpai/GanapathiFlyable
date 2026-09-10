//
//  FlightsSearchView.swift
//  GanapathiFlyable
//
//  Created by Pradeep Kumar on 10/09/26.
//

import SwiftUI

struct FlightsSearchView: View {
    @State private var from = ""
    @State private var to = ""
    @State private var date = Date()
    
    var body: some View {
        Form {
            Section("Journey") {
                TextField("From", text: $from)
                TextField("To", text: $to)
                DatePicker("Departure", selection: $date, displayedComponents: .date)
            }
            Section {
                Button("Search Flights") {
                    
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    FlightsSearchView()
}
