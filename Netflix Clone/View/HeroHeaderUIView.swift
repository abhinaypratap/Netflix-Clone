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
    imageView.image = UIImage(named: "heroImage")
    return imageView
  }()

  private let playButton: UIButton = {
    let button = UIButton()
    button.setTitle("Play", for: .normal)
    button.layer.borderColor = UIColor.cyan.cgColor
    button.layer.borderWidth = 1
    button.layer.cornerRadius = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  private let downloadButton: UIButton = {
    let button = UIButton()
    button.setTitle("Downloads", for: .normal)
    button.layer.borderColor = UIColor.cyan.cgColor
    button.layer.borderWidth = 1
    button.layer.cornerRadius = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  private func addGradient() {
    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [
      UIColor.clear.cgColor,
      UIColor.systemBackground.cgColor
    ]
    gradientLayer.frame = bounds
    layer.addSublayer(gradientLayer)
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(heroImageView)
    addGradient()
    addSubview(playButton)
    addSubview(downloadButton)
    applyConstraints()
  }

  private func applyConstraints() {
    let playButtonConstraints = [
      playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
      playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
      playButton.widthAnchor.constraint(equalToConstant: 100)
    ]

    let downloadButtonConstaints = [
      downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
      downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
      downloadButton.widthAnchor.constraint(equalToConstant: 100)
    ]

    NSLayoutConstraint.activate(playButtonConstraints)
    NSLayoutConstraint.activate(downloadButtonConstaints)
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    heroImageView.frame = bounds
  }

    public func configure(with model: TitleViewModel) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterURL)") else {
            return
        }
        heroImageView.sd_setImage(with: url, completed: nil)
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

}
