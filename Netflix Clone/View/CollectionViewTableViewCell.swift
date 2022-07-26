//
//  CollectionViewTableViewCell.swift
//  Netflix Clone
//
//  Created by Abhinay Pratap on 25/07/22.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
  static let identifier = "CollectionViewTableViewCell"
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    contentView.backgroundColor = .tintColor
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
}
