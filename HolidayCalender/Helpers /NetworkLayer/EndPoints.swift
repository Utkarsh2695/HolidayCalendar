//
//  EndPoints.swift
//  HolidayCalender
//
//  Created by Utkarsh Upadhyay (BLR GSS) on 04/04/22.
//

import Foundation

enum Methods: String {
    case get = "GET"
    case put = "PUT"
    case delete = "DELETE"
}

protocol EndPoints {
    var scheme: String { get }
    var baseURL: String { get }
    var path: String { get }
    var parameter: [URLQueryItem] { get }
    var method: Methods { get }
}
