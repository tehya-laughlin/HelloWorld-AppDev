//
//  ContentView.swift
//  HelloWorld
//
//  Created by Tehya Laughlin on 8/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack{
            QuadBlocksText()
            QuadBlocks()
            QuadBlocks()
            QuadBlocks()
        }
        .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/)
        
    }
}

struct QuadBlocks: View {
    var body: some View {
        HStack{
            Rectangle()
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
          
            RoundedRectangle(cornerRadius: 9)
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)

            RoundedRectangle(cornerRadius:15)
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            
            RoundedRectangle(cornerRadius:25)
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            
            RoundedRectangle(cornerRadius:35)
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
         
        }
        .padding(.horizontal)
        
    }
}

struct QuadBlocksText: View {
    var body: some View {
        HStack{
            ZStack{
                Rectangle()
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                Text("Hello")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            }
           
            ZStack{
                RoundedRectangle(cornerRadius: 9)
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                Text("World")
                    .foregroundColor(.white)
            }
         
            RoundedRectangle(cornerRadius:15)
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            
            RoundedRectangle(cornerRadius:25)
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            
            RoundedRectangle(cornerRadius:35)
                    .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
         
        }
        .padding(.horizontal)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView_DarkPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
