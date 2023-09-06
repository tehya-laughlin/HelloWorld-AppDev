//
//  ContentView.swift
//  HelloWorld
//
//  Created by Tehya Laughlin on 8/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
            Circle()
                .fill(Color.pink)
            Image("AIPortrait").clipShape(Circle()).opacity(0.70)
                
            VStack{
                Text("Hello")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    
                QuadBlocksOther()
                QuadBlocks()
                Text("World")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
            }
        }
    }
}

struct QuadBlocks: View {
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 35)
                    .fill(Color(red: 0.059, green: 0.006, blue: 0.177))
            }
          
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 0.059, green: 0.006, blue: 0.177))

            RoundedRectangle(cornerRadius:15)
                    .fill(Color(red: 0.059, green: 0.006, blue: 0.177))
            
            RoundedRectangle(cornerRadius:5)
                    .fill(Color(red: 0.059, green: 0.006, blue: 0.177))
            
            RoundedRectangle(cornerRadius:0)
                    .fill(Color(red: 0.059, green: 0.006, blue: 0.177))
         
        }
        .padding(.horizontal)
        .frame(width: 400.0, height: 70.0)
        
    }
}

struct QuadBlocksOther: View {
    var body: some View {
        HStack{
            Rectangle()
                    .fill(Color.blue)
               
            RoundedRectangle(cornerRadius: 9)
                    .fill(Color.blue)
                
            RoundedRectangle(cornerRadius:15)
                    .fill(Color.blue)
            
            RoundedRectangle(cornerRadius:25)
                    .fill(Color.blue)
            
            RoundedRectangle(cornerRadius:35)
                    .fill(Color.blue)
         
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
