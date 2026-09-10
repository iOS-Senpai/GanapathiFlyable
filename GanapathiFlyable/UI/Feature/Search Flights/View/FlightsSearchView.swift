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
                    Task {
                        await viewModel.searchFlights()
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
            if viewModel.isLoading && viewModel.flights.isEmpty {
                ProgressView()
                    .frame(maxWidth: .infinity)
            }
            
            if !viewModel.flights.isEmpty {
                Section("Flights") {
                    List {
                        ForEach(viewModel.flights) { flight in
                            VStack(alignment: .leading) {
                                Text(flight.airline)
                                    .font(.headline)
                                Text("\(flight.origin) -> \(flight.destination)")
                                Text(flight.price, format: .currency(code: "INR"))
                            }
                        }
                    }
                }
            }
            
            if viewModel.errorMessage != nil {
                Text(viewModel.errorMessage ?? "")
                    .foregroundStyle(.red)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    FlightsSearchView()
}
