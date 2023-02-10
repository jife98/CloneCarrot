//
//  SearchView.swift
//  CloneCarrot
//
//  Created by 최지철 on 2023/02/08.
//

import UIKit

class SearchView: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width:  400, height: 0))
        searchBar.placeholder = "상인동 근처에서 검색"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchBar)
    }
    
    
}
