//
//  CalendarHolidayViewModel.swift
//  HolidayCalender
//
//  Created by Utkarsh Upadhyay (BLR GSS) on 04/04/22.
//

import Foundation

class CalendarHolidayViewModel: CalendarHolidayViewModelContract {

    var calendarHoliday: CalendarResponse?

    func getHolidayData(for countryCode: String, and year: String, completion: @escaping () -> ()) {
        NetworkEngine.request(endPoint: HoildayEndPoint.getHoliday(countryCode: countryCode, year: year)) { [weak self] (result: Result<CalendarHoliday, Error>) in
            guard let self = self else {return}
            switch result {
            case .success(let holidaysData):
                self.calendarHoliday = holidaysData.response
                completion()
            case .failure(let error):
                print(error.localizedDescription)
                completion()
            }
        }
    }

}
