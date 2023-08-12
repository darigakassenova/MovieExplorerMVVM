//
//  MovieProductionCollectionViewCell.swift
//  Movie Explorer
//
//  Created by Dariga on 12.08.2023.
//

import UIKit

class MovieProductionCollectionViewCell: UICollectionViewCell {
    private let imageView: UIImageView = {
       let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 22
        view.clipsToBounds = false
        
        return view
    }()
    
    private let companyNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    private let countryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 10)
        label.textColor = .systemGray
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(productionCompany: MovieProductionModel) {
        companyNameLabel.text = productionCompany.name
        countryLabel.text = productionCompany.originCountry
        guard let logoURLPath = productionCompany.logoURLPath,
              let url = URL(string: Constants.imageHost + logoURLPath) else { return }
        imageView.kf.setImage(with: url)
    }
    
    private func setupUI() {
        contentView.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 44),
            imageView.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        contentView.addSubview(companyNameLabel)
        NSLayoutConstraint.activate([
            companyNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            companyNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            companyNameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8)
        ])
        
        contentView.addSubview(countryLabel)
        NSLayoutConstraint.activate([
            countryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            countryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            countryLabel.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor),
            countryLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
