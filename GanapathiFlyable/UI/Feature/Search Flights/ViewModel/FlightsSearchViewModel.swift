//
//  FlightsSearchViewModel.swift
//  GanapathiFlyable
//
//  Created by Pradeep Kumar on 10/09/26.
//

import Observation
import Foundation

@Observable
@MainActor
final class FlightsSearchViewModel {
    var flights = [Flight]()
    var isLoading = false
    var errorMessage: String?
    var from = ""
    var to = ""
    var date = Date()
    
    func searchFlights() async {
        isLoading = true
        errorMessage = nil
        defer {
            isLoading = false
        }
        do {
            try await Task.sleep(for: .seconds(3))
            self.flights = MockFlightData.flights
        } catch is CancellationError {
            return
        } catch {
            errorMessage = error.localizedDescription
        }
    }
} //UI State + Search Coordination
