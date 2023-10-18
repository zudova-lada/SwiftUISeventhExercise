//
//  ContentView.swift
//  SwiftUISeventhExercise
//
//  Created by Лада Зудова on 18.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSmallButton = true
    
    var body: some View {
        VStack(alignment: .trailing) {
            VStack {
                Button {
                    withAnimation {
                        isSmallButton = !isSmallButton
                    }
                } label: {
                    ZStack{
                        Text("Open")
                            .opacity(isSmallButton ? 0.85 : 0)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(isSmallButton ? Color.blue : .clear)
                            .foregroundColor(Color.white)
                        
                        (Text(Image(systemName: "arrowshape.backward.fill")) + Text("Closed"))
                            .opacity(isSmallButton ? 0 : 0.85)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(Color.white)
                    }
                }
                .frame(width: isSmallButton ? 100 : 80, height: isSmallButton ? 60 : 20)
            }
            .frame(width: isSmallButton ? 100 : 300, height: isSmallButton ? 60 : 300, alignment: isSmallButton ? .bottom : .topLeading)
            .padding(isSmallButton ? 0 : 20)
            .background(.blue)
            .opacity(0.85)
            .containerShape(RoundedRectangle(cornerRadius: 12))
            
        }
        .frame(width: 370, height: 680, alignment: isSmallButton ? .bottomTrailing : .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
