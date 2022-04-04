//
//  CalendarHolidayViewModelContract.swift
//  HolidayCalender
//
//  Created by Utkarsh Upadhyay (BLR GSS) on 04/04/22.
//

import Foundation

protocol CalendarHolidayViewModelContract {

    var calendarHoliday: CalendarResponse? { get set }

    func getHolidayData(for countryCode: String, and year: String, completion: @escaping () -> ())
}
