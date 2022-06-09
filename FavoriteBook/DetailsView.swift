//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Bilal Yalcin on 3.05.2022.
//
//Favorilerimize tıklandıgında detaylarını almak için gereken DetailsView'u da olusturduk.

import SwiftUI

struct DetailsView: View {

//    Öncelikler FavoriteElement'ten bir değişken oluşturcaz.
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElement.name)
                .padding()
                .font(.largeTitle)
            Text(chosenFavoriteElement.description)
    }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: thedarkknight)
    }
}




