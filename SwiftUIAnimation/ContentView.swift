//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Arthur Soares on 23/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var numConteudo = 0
    @State private var show = false
    private var conteudo = [
        CardView(imagem: Image("swiftui-button"), titulo: "SwiftUI", descricao: "Drawing a Border with Rounded Corners", autor: "Simon Ng", qtdEstrelas: 4, texto: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi rhoncus volutpat aliquam. Nulla facilisi. Aliquam sit amet massa nibh. Nunc in pulvinar arcu. Nunc eu finibus sapien."),
        CardView(imagem: Image("macos-programming"), titulo: "macOS", descricao: "Building a simple Editing App", autor: "Gabriel Theodoropoulos", qtdEstrelas: 3, texto: "Integer et fermentum turpis. Integer viverra, justo in ullamcorper blandit, turpis odio tempus lorem, in sagittis odio velit et nulla. Fusce sit amet libero rutrum, tincidunt magna ac, tempor nulla. Donec varius sapien enim, vitae rhoncus turpis malesuada eu."),
        CardView(imagem: Image("flutter-app"), titulo: "Flutter", descricao: "Building a Complex Layout with Flutter", autor: "Lawrence Tan",qtdEstrelas: 5, texto: "Nam nec eleifend metus, a vestibulum ipsum. Integer luctus vel enim rutrum finibus. Cras nibh turpis, eleifend sit amet euismod at, ornare in magna. Integer in massa vel diam ultricies consectetur ac vel dolor. Praesent ac tellus tempus, vestibulum ligula quis, dictum erat. Maecenas laoreet erat a velit varius, sit amet rutrum lacus semper. Fusce porttitor lectus urna, convallis dictum leo hendrerit eu."),
        CardView(imagem: Image("natural-language-api"), titulo: "iOS", descricao: "What's Newin Natural Language API", autor: "Sai Kambampati", qtdEstrelas: 2, texto: "Vestibulum ultrices eu tellus at dignissim. Maecenas malesuada ante vitae justo sodales, a commodo sapien finibus. Suspendisse vel mollis sapien, ut blandit purus. Fusce mi neque, scelerisque at nulla et, pretium placerat est. Mauris et dui quis nibh auctor bibendum. Aliquam ornare tellus quis venenatis sodales. Suspendisse consequat nibh a tortor dignissim vehicula. Fusce ultricies velit sem, sed molestie massa suscipit at.")
        
    ]
        
    var body: some View {
        VStack(alignment: .leading) {
            Text("Lista de leitura")
                .font(.largeTitle)
                .fontWeight(.black)
            
            if !show {
                conteudo[numConteudo]
                    .transition(.scaleDownAndUp)
            }
            
            else {
                conteudo[numConteudo]
                    .transition(.scaleDownAndUp)
            }
        }
        .padding()

        .onTapGesture {
            withAnimation(.spring()){
                self.show.toggle()
                if numConteudo >= conteudo.count - 1 {
                    numConteudo = 0
                } else {
                    numConteudo += 1
                }
            }
        }
    }
}


extension AnyTransition {
    static var scaleDownAndUp: AnyTransition {
        AnyTransition.offset(y: 600).combined(with: .scale(scale: 0, anchor: .bottom)).combined(with: .opacity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

