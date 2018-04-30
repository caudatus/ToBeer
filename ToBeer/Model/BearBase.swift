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
   
   let DATABASE = ["8712000900045" : [ "name" : "하이네켄",
                                  "name_eng" : "HEINEKEN",
                                  "company" : "Heineken Brew",
                                  "alcohol" : "5%",
                                  "barcode" : "8712000900045",
                                  "type" : "페일라거",
                                  "image" : "heinekenIMG.png",
                                  "feeling" : ["#정통유럽라거", "#초록병", "#가벼움", "#유럽라거", "#묵직한뒷맛"],
                                  "nation" : "네덜란드 🇳🇱",
                                  "descrip" : "지식인과 예술인이 사랑했던 140년 전통 네덜란드의 대표적 맥주 브랜드."],
                   "5410228234258" : [ "name" : "호가든",
                                    "name_eng" : "HOEGAARDEN",
                                    "company" : "InBev Belgium",
                                    "alcohol" : "4.9%",
                                    "barcode" : "5410228234258",
                                    "type" : "밀맥주",
                                    "image" : "hoegaarden.png",
                                    "feeling" : ["#오렌지향", "#부드러움", "#향긋함", "#역사깊은", "#수도원"],
                                    "nation" : "벨기에 🇧🇪",
                                    "descrip" : "오렌지향이 상큼한 벨기에 대표 밀맥주."],
                   "8008440422019" : [ "name" : "페로니 나스트라즈로",
                                "name_eng" : "PERONI",
                                "company" : "BIRRA PERONI",
                                "alcohol" : "5.1%",
                                "barcode" : "8008440422019",
                                "type" : "페일라거",
                                "image" : "peroniIMG.png",
                                "feeling" : ["#청량감", "#피맥", "#황금빛", "#가벼운", "#시원한"],
                                "nation" : "이탈리아 🇮🇹",
                                "descrip" : "이탈리아에서 가장 많이 팔리는 국민맥주."],
                   "4901880879884" : [ "name" : "프리미엄 에비스",
                                "name_eng" : "YEBISU",
                                "company" : "Sapporo Breweries",
                                "alcohol" : "5%",
                                "barcode" : "4901880879884",
                                "type" : "라거",
                                "image" : "yebisuIMG.png",
                                "feeling" : ["#황금빛", "#프리미엄", "#독일식", "#100%맥아", "#기념일"],
                                "nation" : "일본 🇯🇵",
                                "descrip" : "정통 독일식 맥주를 지향하는 일본의 프리미엄 맥주 브랜드. 맛이 진하고 달다."],
                   "4901411175317" : [ "name" : "기린 이치방",
                               "name_eng" : "KIRIN",
                               "company" : "Kirin Brewery",
                               "alcohol" : "5%",
                               "barcode" : "4901411175317",
                               "type" : "라거",
                               "image" : "kirinIMG.png",
                               "feeling" : ["#청량감", "#황금빛", "#일본맥주", "#이치방", "#보리향"],
                               "nation" : "일본 🇯🇵",
                               "descrip" : "기린 이치방은 첫 번째 맥즙만을 사용하여 보리 본연의 진한 맛을 충분히 느낄 수 있고, 깔끔한 맛이 특징이다."],
                   "4901004006813" : [ "name" : "아사히 수퍼드라이",
                               "name_eng" : "ASAHI",
                               "company" : "Asahi Breweries",
                               "alcohol" : "5%",
                               "barcode" : "4901004006813",
                               "type" : "드라이맥주",
                               "image" : "asahiauperIMG.png",
                               "feeling" : ["#드라이", "#엔젤링", "#일본대표맥주", "#깔끔함", "#신맛"],
                               "nation" : "일본 🇯🇵",
                               "descrip" : ""],
                   "50213085" : [ "name" : "기네스 드래프트",
                                  "name_eng" : "GUINNESS",
                                  "company" : "Guinness",
                                  "alcohol" : "4.2%",
                                  "barcode" : "50213085",
                                  "type" : "흑맥주",
                                  "image" : "guinnessIMG.png",
                                  "feeling" : ["#흑맥주", "#달콤", "#씁쓸", "#부드러움", "#크림거품"],
                                  "nation" : "아일랜드 🇮🇪",
                                  "descrip" : "세계에서 가장 성공한 맥주 브랜드 중 하나. 더블린 소재의 기네스로부터 유래한 아일랜드 흑맥주"]]
   
}



