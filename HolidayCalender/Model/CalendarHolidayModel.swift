//
//  CalendarHolidayModel.swift
//  HolidayCalender
//
//  Created by Utkarsh Upadhyay (BLR GSS) on 04/04/22.
//

import Foundation

// MARK: - Welcome

struct CalendarHoliday: Codable {
    var meta: Meta
    var response: CalendarResponse
}

// MARK: - Meta
struct Meta: Codable {
    var code: Int
}

// MARK: - Response
struct CalendarResponse: Codable {
    var holidays: [Holiday]
}

// MARK: - Holiday
struct Holiday: Codable {
    var name, description: String
    var locations: String
}
