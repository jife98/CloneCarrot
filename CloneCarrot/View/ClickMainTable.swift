//
//  ClickMainTable.swift
//  CloneCarrot
//
//  Created by 최지철 on 2023/02/08.
//

import UIKit

class ClickMainTable: UIViewController {

    @IBAction func GoChat(_ sender: Any) {
        let backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil) // title 부분 수정
            backBarButtonItem.tintColor = .black
            self.navigationItem.backBarButtonItem = backBarButtonItem
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "ChatView")

        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
