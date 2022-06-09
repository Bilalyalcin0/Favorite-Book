//
//  FavoriteBookModel.swift
//  FavoriteBook
//
//  Created by Bilal Yalcin on 3.05.2022.
//

// Öncelikle Listede tıklandıgında diger ekrana gitmesi için gerekli id'ler lazım bu id'ler için bir model olusturacagız onu da normal swift dosyası içinde yapıp identifiable ile swiftUI dosyamıza atacagız.

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

//BANDS

let metallica = FavoriteElements(name: "metallica", imagename: "metallica", description: "No 1 Music Band")
let queen = FavoriteElements(name: "queen", imagename: "quenn", description: "No 2 Music Band")
let AcDc = FavoriteElements(name: "acdc", imagename: "acdc", description: "No 3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,queen,AcDc])

//MOVİES
let pulpfiction = FavoriteElements(name: "Pulp Fiction", imagename: "pulpfiction", description: "No 1 Movie")
let thedarkknight = FavoriteElements(name: "The Dark Knight", imagename: "thedarkknight", description: "No 2 Movie")
let killbill = FavoriteElements(name: "Kill Bill", imagename: "killbill", description: "No 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpfiction,thedarkknight,killbill])

// Son olarak olusturdugumuz favori modelleri bir dizi içersine koyuyoruz.
let myFavorites = [favoriteBands,favoriteMovies]
