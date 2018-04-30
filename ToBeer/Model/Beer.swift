//
//  Beer.swift
//  ToBeer
//
//  Created by Seo JaeHyeong on 30/04/2018.
//  Copyright © 2018 Seo Jaehyeong. All rights reserved.
//

import Foundation

class Beer: NSObject{
   
    @objc var name: String
    @objc var name_eng: String
    @objc var company: String
    @objc var alcohol: String
    @objc var barcode: String
    @objc var type: String
    @objc var image: String
    @objc var feeling: [String]
    @objc var nation: String
    @objc var descrip: String
   
   
   init(name: String, name_eng: String, company: String,
      alcohol:String, barcode: String, type: String,
      image: String, feeling: [String], nation: String, descrip: String){

      self.name = name
      self.name_eng = name_eng
      self.company = company
      self.alcohol = alcohol
      self.barcode = barcode
      self.type = type
      self.image = image
      self.feeling = feeling
      self.nation = nation
      self.descrip = descrip
   }
   
   
   convenience override init() {
      self.init(name: "", name_eng: "", company: "", alcohol: "", barcode: "", type: "", image: "",
                feeling: [""], nation: "", descrip: "")
   }

}
