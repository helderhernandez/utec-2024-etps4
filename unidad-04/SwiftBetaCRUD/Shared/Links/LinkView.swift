//
//  LinkView.swift
//  SwiftBetaCRUD
//
//  Created by user208646 on 5/22/24.
//

import SwiftUI

struct LinkView: View {
    @ObservedObject var linkViewModel : LinkViewModel
    @State var text: String = ""
    
    var body: some View {
        VStack{
            TextEditor(text: $text)
                            .frame(height: 100)
                            /*.overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 2)
                            )*/
                            .padding(.horizontal, 12)
                            //.cornerRadius(3)
            
            Button(action: {
                linkViewModel.createNewLink(fromURL: text)
            }, label: {
                /*
                Label(remoteConfiguration.buttonTitle, systemImage: "link")
                 */
                Label("Crear link", systemImage: "link")
            })
            
            // mensage de error en caso de error
            if (linkViewModel.messageError != nil) {
                Text(linkViewModel.messageError!)
                    .bold()
                    .foregroundColor(.red)
            }
            
            // listado de links
            List {
                ForEach(linkViewModel.links) { link in
                    VStack {
                        Text(link.title)
                            .bold()
                            .lineLimit(4)
                            .padding(.bottom, 8)
                        Text(link.url)
                            .foregroundColor(.gray)
                            .font(.caption)
                        HStack {
                            Spacer()
                            if link.isCompleted {
                                Image(systemName: "checkmark.circle.fill")
                                    .resizable()
                                    .foregroundColor(.blue)
                                    .frame(width: 10, height: 10)
                            }
                            if link.isFavorited {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .foregroundColor(.yellow)
                                    .frame(width: 10, height: 10)
                            }
                        }
                    }
                }
                
            }
            .onAppear() {
                linkViewModel.getAllLinks()
            }
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(linkViewModel: LinkViewModel())
    }
}
