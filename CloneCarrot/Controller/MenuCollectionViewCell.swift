//
//  MenuCollectionViewCell.swift
//  CloneCarrot
//
//  Created by 최지철 on 2023/02/07.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {


    public let MeneNameArry = ["star.slash.fill", "laptopcomputer","microwave.fill","sofa.fill"
    ,"dryer.fill","teddybear.fill","book.fill","tshirt.fill","bag.fill","shoeprints.fill","comb.fill","tennis.racket","gamecontroller.fill","car.fill","book.closed.fill","ticket.fill","takeoutbag.and.cup.and.straw.fill","pawprint.fill","tree.fill","shippingbox.fill","speaker.wave.2.fill"]
    public let MeneImgArry = ["인기매물", "디지털기기","생활가전","가구/인테리어"
    ,"생활/주방","유아동","유아도서","여성의류","여성잡화","남성패션/잡화","뷰티/미용","스포츠/레저","취미/게임/음반","중고차","도서","티켓/교환권","가공식품","반려동물용품","식물","기타중고물품","삽니다"]
    @IBOutlet weak var MenuName: UILabel!
    @IBOutlet weak var MenuImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
