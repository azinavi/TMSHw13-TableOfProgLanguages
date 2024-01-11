//
//  LanguagesTableViewCell.swift
//  TableOfProgLanguages
//
//  Created by azinavi on 9/1/24.
//

import UIKit
import SnapKit

class LanguagesTableViewCell: UITableViewCell {
    var backView = UIView()
    var titleLabel = UILabel()
    var descriptionLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupContentView()
        setupView()
        setupTitleLabel()
        setupDescriptionLabel()
        
    }

    func setupView() {
        backView.backgroundColor = .white
        contentView.addSubview(backView)

        backView.snp.makeConstraints{(make) in
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
    }
    
    func setupContentView() {
        contentView.backgroundColor = .systemGray
        contentView.snp.makeConstraints{(make) in
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.width.equalTo(400)
            make.height.equalTo(50)
        }
    }
    
    func setupTitleLabel() {
        backView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{(make) in
            make.left.equalTo(40)
            make.top.equalTo(7)
            make.width.equalTo(120)
            make.height.equalTo(40)
        }
    }
    
    func setupDescriptionLabel() {
        backView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints{(make) in
            make.left.equalTo(200)
            make.top.equalTo(7)
            make.width.equalTo(120)
            make.height.equalTo(40)
        }
    }
    
    func configure(language: ProgLangs) {
        titleLabel.text = language.name
        descriptionLabel.text = language.type
    }
    
    func configureForCell(section: Int, index: Int) {
        titleLabel.text = "Секция: \(String(section))"
        descriptionLabel.text = "ячейка: \(String(index))"
    }
}
