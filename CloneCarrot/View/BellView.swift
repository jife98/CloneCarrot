//
//  BellView.swift
//  CloneCarrot
//
//  Created by 최지철 on 2023/02/09.
//

import UIKit

class BellView: UIViewController {

    @IBOutlet weak var SegmentedController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        customSeg()
        // Do any additional setup after loading the view.
    }
    
    func customSeg() {
        let image = UIImage()
        SegmentedController.setBackgroundImage(image, for: .normal, barMetrics: .default)
        SegmentedController.setBackgroundImage(image, for: .selected, barMetrics: .default)
        SegmentedController.setBackgroundImage(image, for: .highlighted, barMetrics: .default)
            
        SegmentedController.setDividerImage(image, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
    }


}
