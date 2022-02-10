//
//  ImageCell.swift
//  Article
//
//  Created by Aryaman Sharda on 2/9/22.
//

import Foundation
import UIKit

final class ImageCell: UITableViewCell {
    @IBOutlet private(set) var thumbnailImageView: UIImageView!
    @IBOutlet private(set) var captionLabel: UILabel!
    @IBOutlet private(set) var sourceLabel: UILabel!

    func configure(model: Image) {
        thumbnailImageView.loadImageFromURL(urlString: model.url, placeholder: nil)
        captionLabel.text = model.caption
        sourceLabel.text = model.source
    }
}
