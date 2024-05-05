//
//  TableViewCell.swift
//  AVPlayerApp
//
//  Created by t2023-m0056 on 5/3/24.
//

import SnapKit
import UIKit

class TableViewCell: UITableViewCell {
    
    static let identifier = "TableViewCell"
    
    let stackView = UIStackView()
    let movieImageView = UIImageView()
    let titleLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    private func configureUIStackView() {
        super.addSubview(stackView)
//        movieImageView.image = 
        stackView.addArrangedSubview(movieImageView)
        stackView.addArrangedSubview(titleLabel)
        
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(150)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
