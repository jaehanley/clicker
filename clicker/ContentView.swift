//
//  ContentView.swift
//  clicker
//
//  Created by Jae Hanley on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0;
    
    func resetCounter() {
        count = 0;
    };
    
    func iterateCounter() {
        count = count + 1;
    };
    
    func iterateCountDown() {
        count = count - 1 > -1 ? count - 1 : 0;
    };
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.system(size: 120))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .padding(.bottom, 102)
            HStack() {
                Button(action: {
                    iterateCounter();
                }) {
                    Image("iteration-btn")
                        .frame(width: 120, height: 120)
                }
                .padding(.trailing, 20)
                Button(action: {
                    iterateCountDown();
                }) {
                    Image("deiterate-btn")
                        .frame(width: 120, height: 120)
                        .opacity((count == 0) ? 0.3 : 1)
                }
                .disabled(count == 0)
            }
            .padding(.bottom, 44.0)
            Button(action: {
                resetCounter();
            }) {
                Text("Reset")
                    .foregroundColor(Color.black)
            }
            .buttonBorderShape(.roundedRectangle)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
