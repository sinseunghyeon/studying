//
//  ViewController.swift
//  CountApp
//
//  Created by t2023-m0056 on 2024/03/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    private var count: Int = 0;
    
    // Down 버튼을 클릭했을 때
    @IBAction func upCount(_ sender: Any) {
        self.count += 1;
        self.setLabel();
    }
    
    // Up 버튼을 클릭했을 때
    @IBAction func downCount(_ sender: Any) {
        self.count -= 1;
        self.setLabel();
    }
    
    // Label에 count값을 Set
    private func setLabel() {
        self.countLabel.text = String(self.count);
    }
    
    // 어플이 로드 되었을때, 실행되는 부분
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setLabel();
        // Do any additional setup after loading the view.
    }


}

