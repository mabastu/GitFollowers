//
//  String+Ext.swift
//  GitFollowers
//
//  Created by Mabast on 10/2/22.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormant() -> String {
        guard let data = self.convertToDate() else { return "N/A" }
        return data.convertToMonthYearFormat()
    }
}
