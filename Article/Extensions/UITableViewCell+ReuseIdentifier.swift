//
//  UITableViewCell+ReuseIdentifier.swift
//  Article
//
//  Created by Aryaman Sharda on 2/9/22.
//

import Foundation
import UIKit

extension UITableViewCell {
    static var reuseIdentifier: String {
        String(describing: self)
    }
}
