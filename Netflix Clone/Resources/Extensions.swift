//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Abhinay Pratap on 05/01/24.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
