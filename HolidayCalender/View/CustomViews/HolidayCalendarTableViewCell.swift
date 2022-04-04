//
//  HolidayCalendarTableViewCell.swift
//  HolidayCalender
//
//  Created by Utkarsh Upadhyay (BLR GSS) on 04/04/22.
//

import UIKit

class HolidayCalendarTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configCell(with holidayData: Holiday) {
        nameLabel.text = holidayData.name
        descriptionLabel.text = holidayData.description
        locationLabel.text = holidayData.locations
    }
    
}
