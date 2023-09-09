//
//  ContentView.swift
//  HelloWorld
//
//  Created by Tehya Laughlin on 8/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var togColor: Bool = false
    @State var accentColor1: Color = Color.blue
    @State var accentColor2: Color = Color(red: 0.059, green: 0.006, blue: 0.177)
    
    
    var body: some View {
        VStack{
            
            Toggle("Switch", isOn: $togColor)
                .padding(.horizontal, 150.0)
            
            ZStack{
                Circle()
                    .fill(Color.pink)
                Image("AIPortrait").clipShape(Circle()).opacity(0.70)
                
                
                VStack{
                    if (togColor) {
                        QuadBlocks(color: $accentColor1)
                        QuadBlocksOther(color: $accentColor2)
                    } else {
                        QuadBlocks(color: $accentColor2)
                        QuadBlocksOther(color: $accentColor1)
                    }
                }
            }
        }
    }
}

struct QuadBlocks: View {
    
    @Binding var color: Color
    
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 35)
                    .fill(color)
            }
          
            RoundedRectangle(cornerRadius: 25)
                .fill(color)

            RoundedRectangle(cornerRadius:15)
                    .fill(color)
            
            RoundedRectangle(cornerRadius:5)
                    .fill(color)
            
            RoundedRectangle(cornerRadius:0)
                    .fill(color)
         
        }
        .padding(.horizontal)
        .frame(width: 400.0, height: 70.0)
        
    }
}

struct QuadBlocksOther: View {
    
    @Binding var color: Color
    
    var body: some View {
        HStack{
            Rectangle()
                    .fill(color)
               
            RoundedRectangle(cornerRadius: 9)
                    .fill(color)
                
            RoundedRectangle(cornerRadius:15)
                    .fill(color)
            
            RoundedRectangle(cornerRadius:25)
                    .fill(color)
            
            RoundedRectangle(cornerRadius:35)
                    .fill(color)
         
        }
        .padding(.horizontal)
        .frame(width: 400.0, height: 70.0)
        
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
