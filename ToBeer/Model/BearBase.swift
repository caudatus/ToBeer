//
//  BearBase.swift
//  ToBeer
//
//  Created by Seo JaeHyeong on 24/03/2018.
//  Copyright © 2018 Seo Jaehyeong. All rights reserved.
//

import Foundation

struct BearBase {
   
   var BEER = ["8712000900045" : "HEINEKEN",
               "5410228234258" : "HOEGAARDEN",
               "8008440422019" : "PERONI",
               "4901880879884" : "YEBISU",
               "4901411175317" : "KIRIN",
               "4901004006714" : "ASAHI",
               "50213085" : "GUINNESS"]
   
   let DATABASE = ["HEINEKEN" : [ "name" : "하이네켄",
                                  "company" : "Heineken Brew",
                                  "alcohol" : "5%",
                                  "barcode" : "8712000900045",
                                  "type" : "페일라거",
                                  "image" : "heinekenIMG.png",
                                  "feeling" : ["#정통유럽라거", "#초록병", "#가벼움", "#유럽라거", "#묵직한뒷맛"],
                                  "nation" : "네덜란드 🇳🇱",
                                  "description" : "지식인과 예술인이 사랑했던 140년 전통 네덜란드의 대표적 맥주 브랜드."],
                   "HOEGAARDEN" : [ "name" : "호가든",
                                    "company" : "InBev Belgium",
                                    "alcohol" : "4.9%",
                                    "barcode" : "5410228234258",
                                    "type" : "밀맥주",
                                    "image" : "hoegaarden.png",
                                    "feeling" : ["#오렌지향", "#부드러움", "#향긋함", "#역사깊은", "#수도원"],
                                    "nation" : "벨기에 🇧🇪",
                                    "description" : "오렌지향이 상큼한 벨기에 대표 밀맥주."],
                   "PERONI" : [ "name" : "페로니 나스트라즈로",
                                "company" : "BIRRA PERONI",
                                "alcohol" : "5.1%",
                                "barcode" : "8008440422019",
                                "type" : "페일라거",
                                "image" : "peroniIMG.png",
                                "feeling" : ["#청량감", "#피맥", "#황금빛", "#가벼운", "#시원한"],
                                "nation" : "이탈리아 🇮🇹",
                                "description" : "이탈리아에서 가장 많이 팔리는 국민맥주."],
                   "YEBISU" : [ "name" : "프리미엄 에비스",
                                "company" : "Sapporo Breweries",
                                "alcohol" : "5%",
                                "barcode" : "4901880879884",
                                "type" : "라거",
                                "image" : "yebisuIMG.png",
                                "feeling" : ["#황금빛", "#프리미엄", "#독일식", "#100%맥아", "#기념일"],
                                "nation" : "일본 🇯🇵",
                                "description" : "정통 독일식 맥주를 지향하는 일본의 프리미엄 맥주 브랜드. 맛이 진하고 달다."],
                   "KIRIN" : [ "name" : "기린 이치방",
                               "company" : "Kirin Brewery",
                               "alcohol" : "5%",
                               "barcode" : "4901411175317",
                               "type" : "라거",
                               "image" : "kirinIMG.png",
                               "feeling" : ["#청량감", "#황금빛", "#일본맥주", "#이치방", "#보리향"],
                               "nation" : "일본 🇯🇵",
                               "description" : "기린 이치방은 첫 번째 맥즙만을 사용하여 보리 본연의 진한 맛을 충분히 느낄 수 있고, 깔끔한 맛이 특징이다."],
                   "ASAHI" : [ "name" : "아사히 수퍼드라이",
                               "company" : "Asahi Breweries",
                               "alcohol" : "5%",
                               "barcode" : "4901004006714",
                               "type" : "드라이맥주",
                               "image" : "asahiauperIMG.png",
                               "feeling" : ["#드라이", "#엔젤링", "#일본대표맥주", "#깔끔함", "#신맛"],
                               "nation" : "일본 🇯🇵",
                               "description" : ""],
                   "GUINNESS" : [ "name" : "기네스 드래프트",
                                  "company" : "Guinness",
                                  "alcohol" : "4.2%",
                                  "barcode" : "50213085",
                                  "type" : "흑맥주",
                                  "image" : "guinnessIMG.png",
                                  "feeling" : ["#흑맥주", "#달콤", "#씁쓸", "#부드러움", "#크림거품"],
                                  "nation" : "아일랜드 🇮🇪",
                                  "description" : "세계에서 가장 성공한 맥주 브랜드 중 하나. 더블린 소재의 기네스로부터 유래한 아일랜드 흑맥주"]]
   
}






//struct BearBase {
//
//   static var db: BearBase = BearBase()
//
//   let HEINEKEN:Heineken
//   let HOEGAARDEN: Hoegaarden
//   let PERONI: Peroni
//   let YEBISU: Yebisu
//   let KIRIN: Kirin
//   let ASAHI: Asahi
//   let GUINNESS: Guinness
//
//   let company: [Any]
//
//   var BEER = ["8712000900045" : "HEINEKEN",
//               "5410228234258" : "HOEGAARDEN",
//               "8008440422019" : "PERONI",
//               "4901880879884" : "YEBISU",
//               "4901411175317" : "KIRIN",
//               "4901004006714" : "ASAHI",
//               "50213085" : "GUINNESS"]
//
//   var count: Int {
//      return BEER.count
//   }
//
//
//   private init() {
//      HEINEKEN = Heineken()
//      HOEGAARDEN = Hoegaarden()
//      PERONI = Peroni()
//      YEBISU = Yebisu()
//      KIRIN = Kirin()
//      ASAHI = Asahi()
//      GUINNESS = Guinness()
//
//      company = [HEINEKEN, HOEGAARDEN, PERONI, YEBISU, KIRIN, ASAHI, GUINNESS]
//   }
//
//   struct Heineken {
//      let name = "하이네켄"
//      let company = "Heineken"
//      let alcohol = "4.9%"
//      let barcode = "8712000900045"
//      let type = "라거"
//      let image = "heineken"
//      let feeling = ["쌉쌀함", "묵직한 뒷맛"]
//      let nation = "네덜란드"
//   }
//
//   struct Hoegaarden {
//      let name = "호가든"
//      let company = "InBev Belgium B.V.B.A"
//      let alcohol = "4.9%"
//      let barcode = "5410228234258"
//      let type = "밀맥주"
//      let image = "hoegaarden"
//      let feeling = ["", ""]
//      let nation = "벨기에"
//   }
//
//   struct Peroni {
//      let name = "페로니 나스트라즈로"
//      let company = "BIRRA PERONI S.r.l"
//      let alcohol = "5.1%"
//      let barcode = "8008440422019"
//      let type = "페일 라거"
//      let image = "peroni"
//      let feeling = ["보리의 고소함", "약간의 쓴맛"]
//      let nation = "이탈리아"
//   }
//
//   struct Yebisu {
//      let name = "프리미엄 에비스"
//      let company = "Sapporo Breweries LTD."
//      let alcohol = "5%"
//      let barcode = "4901880879884"
//      let type = "드라이 비어"
//      let image = "yebisu"
//      let feeling = ["", ""]
//      let nation = "일본"
//   }
//
//   struct Kirin {
//      let name = "기린 이치방"
//      let company = "기린맥주"
//      let alcohol = "5%"
//      let barcode = "4901411175317"
//      let type = "라거"
//      let image = "kirin"
//      let feeling = ["부드러움", "홉향"]
//      let nation = "일본"
//   }
//
//   struct Asahi {
//      let name = "아사히 수퍼드라이"
//      let company = "Asahi Breweries, Ltd."
//      let alcohol = "5%"
//      let barcode = "4901004006714"
//      let type = "페일 라거(드라이 비어)"
//      let image = "asahi"
//      let feeling = ["", ""]
//      let nation = "일본"
//   }
//
//   struct Guinness {
//      let name = "기네스 드래프트"
//      let company = "Guinness"
//      let alcohol = "4.2%"
//      let barcode = "50213085"
//      let type = "드래프트"
//      let image = "guinness"
//      let feeling = ["씁쓸", "달콤", "쌉싸르함"]
//      let nation = "아일랜드"
//   }
//
//
//   let HEINEKEN: [String : Any] = [
//      "name" : "하이네켄",
//      "company" : "Heineken",
//      "alcohol" : "4.9%",
//      "barcode" : "8712000900045",
//      "type" : "라거",
//      "image" : "heineken",
//      "feeling" : ["쌉쌀함", "묵직한 뒷맛"],
//      "nation" : "네덜란드"]
//}


