//
//  HolidayEndPoint.swift
//  HolidayCalender
//
//  Created by Utkarsh Upadhyay (BLR GSS) on 04/04/22.
//

import Foundation

enum HoildayEndPoint: EndPoints {

case getHoliday(countryCode: String, year: String)

    var scheme: String {
        switch self {
        default: return "https"
        }
    }

    var baseURL: String {
        switch self {
        default:
            return "calendarific.com"
        }
    }

    var path: String {
        switch self {
        case .getHoliday:
            return "/api/v2/holidays"
        }
    }

    var parameter: [URLQueryItem] {
        let apiKey = "f8a7dfd7a2e26c4b5858ae6ffa87154308ec776a"
        switch self {
        case let .getHoliday(countryCode, year):
            return [URLQueryItem(name: "api_key", value: apiKey),
                    URLQueryItem(name: "country", value: countryCode),
                    URLQueryItem(name: "year", value: year)]
        }
    }

    var method: Methods {
        switch self {
        case .getHoliday:
            return .get
        }

    }


}
