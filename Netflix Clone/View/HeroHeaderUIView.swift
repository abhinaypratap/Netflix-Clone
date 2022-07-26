//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Abhinay Pratap on 26/07/22.
//

import UIKit

class HeroHeaderUIView: UIView {
  
  private let heroImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
//    imageView.image = UIImage(named: "")
    return imageView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(heroImageView)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    heroImageView.frame = bounds
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
}
