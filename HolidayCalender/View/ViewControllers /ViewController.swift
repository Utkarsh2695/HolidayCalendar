//
//  ViewController.swift
//  HolidayCalender
//
//  Created by Utkarsh Upadhyay (BLR GSS) on 04/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var holidayCalendarTableView: UITableView!

    let viewModel: CalendarHolidayViewModelContract = CalendarHolidayViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewSetup()
        getCalendarHolidayData()
    }

    private func tableViewSetup() {
        // Table view setup
        holidayCalendarTableView.delegate = self
        holidayCalendarTableView.dataSource = self
        holidayCalendarTableView.register(UINib(nibName: "HolidayCalendarTableViewCell", bundle: nil), forCellReuseIdentifier: "HolidayCalendarTableViewCell")
    }

    private func getCalendarHolidayData() {
        viewModel.getHolidayData(for: "IN", and: "2022") { [weak self] in
            guard let self = self else { return }
            self.holidayCalendarTableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDelegate {

}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.calendarHoliday?.holidays.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = holidayCalendarTableView.dequeueReusableCell(withIdentifier: "HolidayCalendarTableViewCell", for: indexPath) as? HolidayCalendarTableViewCell
        else { return UITableViewCell() }
        if let holidays = viewModel.calendarHoliday?.holidays {
            cell.configCell(with: holidays[indexPath.row])
        }
        return cell
    }


}

