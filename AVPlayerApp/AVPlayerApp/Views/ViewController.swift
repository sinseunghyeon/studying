//
//  ViewController.swift
//  AVPlayerApp
//
//  Created by t2023-m0056 on 5/3/24.
//

import SnapKit
import UIKit

class ViewController: UIViewController {
    
    var movieData: [AVData] = []
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureUITableView()
    }

    private func configureUITableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .cyan
        
        self.tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        return cell
    }
    
    
}
