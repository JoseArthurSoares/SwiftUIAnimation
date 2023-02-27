//
//  CardView.swift
//  SwiftUIScrollView
//
//  Created by Arthur Soares on 21/02/23.
//

import SwiftUI

struct CardView: View {
    var imagem: Image
    var titulo: String
    var descricao: String
    var autor: String
    var qtdEstrelas: Int
    var texto: String
    
    var body: some View {
        VStack(alignment: .leading){
            imagem
                .resizable()
                .scaledToFit()
            Text(titulo)
                .font(.headline)
                .foregroundColor(.secondary)
                .padding([.leading, .top])
            Text(descricao)
                .font(.title)
                .fontWeight(.black)
                .lineLimit(3)
                .padding(.leading)
            Text(autor)
                .font(.caption)
                .foregroundColor(.secondary)
                .padding(.leading)
            HStack {
                if qtdEstrelas > 5 {
                    ForEach(1...5, id: \.self) { index in
                        Image(systemName: "star.fill")
                    }
                } else {
                    ForEach(1...qtdEstrelas, id: \.self) { index in
                        Image(systemName: "star.fill")
                    }
                }
            }
            .foregroundColor(.yellow)
            .padding(.leading)
            
            Text(texto)
                .padding([.leading, .top])
                .foregroundColor(.secondary)
            
            Spacer()
        }
        .cornerRadius(10)
        .padding(.vertical)
        .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
        opacity: 0.1), lineWidth: 1)
                )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imagem: Image("flutter-app"), titulo: "Flutter", descricao: "Bulding a Complex Layout with Flutter", autor: "Arthur", qtdEstrelas: 4, texto: "adslfhadjfgadsjgfadh sdhfkh dskfdfkjds jsdhfksd dsdfhfdskds fdskdsfhdkh")
    }
}
