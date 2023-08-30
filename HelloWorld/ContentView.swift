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
                RoundedRectangle(cornerRadius: 10)
                    .fill(/*@START_MENU_TOKEN@*/Color(red: 0.059, green: 0.006, blue: 0.177)/*@END_MENU_TOKEN@*/)
            }
          
            RoundedRectangle(cornerRadius: 15)
                .fill(/*@START_MENU_TOKEN@*/Color(red: 0.059, green: 0.006, blue: 0.177)/*@END_MENU_TOKEN@*/)

            RoundedRectangle(cornerRadius:20)
                    .fill(/*@START_MENU_TOKEN@*/Color(red: 0.059, green: 0.006, blue: 0.177)/*@END_MENU_TOKEN@*/)
            
            RoundedRectangle(cornerRadius:25)
                    .fill(/*@START_MENU_TOKEN@*/Color(red: 0.059, green: 0.006, blue: 0.177)/*@END_MENU_TOKEN@*/)
            
            RoundedRectangle(cornerRadius:30)
                    .fill(/*@START_MENU_TOKEN@*/Color(red: 0.059, green: 0.006, blue: 0.177)/*@END_MENU_TOKEN@*/)
         
        }
        .padding(.horizontal)
        .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/70.0/*@END_MENU_TOKEN@*/)
        
    }
}

struct QuadBlocksOther: View {
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
        .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/70.0/*@END_MENU_TOKEN@*/)
        
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
