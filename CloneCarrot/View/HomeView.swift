//
//  HomeView.swift
//  CloneCarrot
//
//  Created by 최지철 on 2023/02/07.
//

import UIKit

class HomeView: UIViewController {
    var viewBlurEffect:UIVisualEffectView!
    @IBOutlet var MainView: UIView!
    @IBOutlet weak var FloatSellBtn: UIButton!
    @IBOutlet weak var FloatBtn2: UIStackView!
    @IBOutlet weak var FloatTV: UITableView!
    @IBOutlet weak var FloatBtn: UIButton!
    @IBOutlet weak var FloatSV: UIStackView!
    private var FloatmenuItem: Data = Data.shared
    var btnClick = false
    @IBOutlet weak var naviItem: UINavigationItem!
    
    @IBAction func Cell(_ sender: Any) {
        
    }
    @IBAction func ClickFloatBtn(_ sender: Any) {//xmark
        if (btnClick == false) {
            FloatBtn.configuration?.background.backgroundColor = .white
            FloatBtn.setTitle("", for: .normal)
            FloatBtn.setTitleColor(.black, for: .normal)
            FloatBtn.setImage(UIImage(systemName: "xmark"), for: .normal)
            FloatBtn.tintColor = UIColor.black
            FloatBtn2.isHidden = false
            FloatSellBtn.isHidden = false

            if viewBlurEffect == nil
               {
                    let blurEffect = UIBlurEffect(style: .dark)
                    viewBlurEffect = UIVisualEffectView(effect: blurEffect)
                    viewBlurEffect.frame = self.view.frame
                    self.MainView.addSubview(viewBlurEffect)
                   //Blur Effect는 .light 외에도 .dark, .regular 등이 있으니 적용해보세요!
                    let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect)
                    let innerVisualEffectView = UIVisualEffectView(effect: vibrancyEffect)
                    innerVisualEffectView.frame = self.view.frame
                   //viewMain에 Blur 효과가 적용된 EffectView 추가
                    viewBlurEffect.contentView.addSubview(innerVisualEffectView)
                    innerVisualEffectView.contentView.addSubview(FloatSV)
      
               }
            btnClick = true
        }else{
            FloatBtn.configuration?.background.backgroundColor = .systemOrange
            FloatBtn.setTitle("글쓰기", for: .normal)
            FloatBtn.setTitleColor(.black, for: .normal)
            FloatBtn.setImage(UIImage(systemName: "plus"), for: .normal)
            FloatBtn.tintColor = UIColor.black
            FloatBtn2.isHidden = true
            FloatSellBtn.isHidden = true
            if viewBlurEffect != nil
            {
                viewBlurEffect.removeFromSuperview()
                viewBlurEffect = nil
                setFloatBtn()
            }
            btnClick = false
        }
    }
    private func setFloatBtn() {
        FloatBtn.setTitleColor(.white, for: .normal)
        FloatBtn.setImage(UIImage(systemName: "plus"), for: .normal)
        FloatBtn.tintColor = UIColor.white
        FloatSV.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(FloatSV)
         FloatSV.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
         FloatSV.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -90).isActive = true
        FloatBtn2.isHidden = true
        FloatSellBtn.isHidden = true
        FloatBtn2.frame.size.width = 100
        FloatBtn.frame.size.width = 100
        FloatSellBtn.frame.size.width = 100
        FloatSV.frame.size.width = 100
        FloatBtn.frame.size.height = 50
        FloatBtn.layer.shadowColor = UIColor.gray.cgColor
        FloatBtn.layer.shadowOpacity = 1.0
        FloatBtn.layer.shadowOffset = CGSize.zero
        FloatBtn.layer.shadowRadius = 6
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if(self.TableView.contentOffset.y <= 0 ) {
            FloatBtn.setTitle("글쓰기", for: .normal)
            FloatBtn.frame.size.width = 100

        }else {
            FloatBtn.setTitle("", for: .normal)
            FloatBtn.frame.size.width = 50
            FloatBtn.frame.size.height = 50

        }
    }
    @IBAction func GoSearch(_ sender: Any) {
        backBtn()
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "SearchView")

        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    private func backBtn() {
    
        let backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil) // title 부분 수정
            backBarButtonItem.tintColor = .black
            self.navigationItem.backBarButtonItem = backBarButtonItem
    }
    @IBAction func GoMenuView(_ sender: Any) {
        backBtn()
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuView")

        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    @IBAction func GoBellView(_ sender: Any) {
        backBtn()
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "BellView")

        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        setTableView()
        setFloatBtn()
        // Do any additional setup after loading the view.
    }
    private func setTableView() {
        TableView.delegate = self//MainTableViewCell
        TableView.dataSource = self
        self.TableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
    }


}

extension HomeView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == TableView {
            return 10
        }
        return 0
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellname = "MainTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier:cellname, for: indexPath) as! MainTableViewCell
        if tableView == TableView
        {
            cellname = "MainTableViewCell"
        }
        let background = UIView()
            background.backgroundColor = .clear
            cell.selectedBackgroundView = background
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil) // title 부분 수정
            backBarButtonItem.tintColor = .white
            self.navigationItem.backBarButtonItem = backBarButtonItem
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "ClickMainTable")

        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    
}
