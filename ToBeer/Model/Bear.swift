//
//  Bear.swift
//  ToBeer
//
//  Created by Seo JaeHyeong on 24/03/2018.
//  Copyright © 2018 Seo Jaehyeong. All rights reserved.
//

import Foundation

final class Bear {
   
   static var shared: Bear = Bear()
   
   var DB = BearBase()
   var beerName: String = ""
   
   
   private init() {
      print("DataBase initialize Success !!")
   }
   
   
   func getBeerModel(barcode model: String) -> BeerModel {
      
      for beer in DB.BEER {
         if beer.key == model {
            beerName = beer.value
         }
      }

      let beerinfo: BeerModel = setModel(beerName)
      
      return beerinfo
   }
   
   
   func setModel(_ beerName: String) -> BeerModel {
      var beerModel = BeerModel()
      
      for beer in DB.DATABASE {
         if beer.key == beerName {
            beerModel.name = beer.value["name"] as! String
            beerModel.company = beer.value["company"] as! String
            beerModel.alcohol = beer.value["alcohol"] as! String
            beerModel.barcode = beer.value["barcode"] as! String
            beerModel.type = beer.value["type"] as! String
            beerModel.image = beer.value["image"] as! String
            beerModel.feeling = beer.value["feeling"] as! [String]
            beerModel.nation = beer.value["nation"] as! String
         }
      }
      
      return beerModel
      
   }
   
   
}
