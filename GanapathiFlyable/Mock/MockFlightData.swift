//
//  MockFlightData.swift
//  GanapathiFlyable
//
//  Created by Pradeep Kumar on 10/09/26.
//

import Foundation

enum MockFlightData {

    static let flights: [Flight] = [
        Flight(
            id: UUID(),
            airline: "IndiGo",
            flightNumber: "6E 123",
            origin: "BLR",
            destination: "DEL",
            departureTime: Date(),
            arrivalTime: Date().addingTimeInterval(9_000),
            price: 4_500
        ),

        Flight(
            id: UUID(),
            airline: "Air India",
            flightNumber: "AI 456",
            origin: "BLR",
            destination: "DEL",
            departureTime: Date().addingTimeInterval(3_600),
            arrivalTime: Date().addingTimeInterval(12_600),
            price: 5_200
        ),

        Flight(
            id: UUID(),
            airline: "Vistara",
            flightNumber: "UK 789",
            origin: "BLR",
            destination: "DEL",
            departureTime: Date().addingTimeInterval(7_200),
            arrivalTime: Date().addingTimeInterval(16_200),
            price: 6_100
        )
    ]
}
