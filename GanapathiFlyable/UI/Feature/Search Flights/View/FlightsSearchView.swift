//
//  FlightsSearchView.swift
//  GanapathiFlyable
//
//  Created by Pradeep Kumar on 10/09/26.
//

import SwiftUI

struct FlightsSearchView: View {
   @State var viewModel = FlightsSearchViewModel()
    var body: some View {
        Form {
            Section("Journey") {
                TextField("From", text: $viewModel.from)
                TextField("To", text: $viewModel.to)
                DatePicker("Departure", selection: $viewModel.date, displayedComponents: .date)
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
