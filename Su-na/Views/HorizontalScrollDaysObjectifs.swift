//
//  HorScrollDays.swift
//  IIez
//
//  Created by Reyhan 2 on 20/05/2020.
//  Copyright © 2020 Mikail. All rights reserved.
//

import SwiftUI

struct HorizontalScrollDaysObjectifs: View {
    
//    @Binding var selectedDay: Int = 2
    @State private var selectedIndex = 0
    
    @State var monday: Bool = false
    @State var tuesday: Bool = false
    @State var wednesday: Bool = false
    @State var thursday: Bool = false
    @State var friday: Bool = false
    @State var saturday: Bool = false
    @State var sunday: Bool = false
    
    
    var body: some View {
        
        ScrollView(.horizontal) {
            
            HStack {
                
                
                Button (action: {
                    
                    self.monday.toggle()
                    self.selectedIndex = 0
                    
                }) {
                    
                    Text("Lundi")
                        
                        .font(.system(size: 13))
                        .bold()
                        .padding()
                        .padding(.vertical, 10)
                        .foregroundColor(selectedIndex == 0 ? .gray : .blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(selectedIndex == 0 ? Color.gray : .blue, lineWidth: 6)
                    )
                        .tag(0)
                }
                .padding(.top)
                .padding(.leading, 12)
                .buttonStyle(PlainButtonStyle())
                
                
                Button (action: {
                    
                    self.tuesday.toggle()
                    self.selectedIndex = 1
                    
                }) {
                    
                    Text("Mardi")
                        
                        .font(.system(size: 13))
                        .bold()
                        .padding()
                        .padding(.vertical, 10)
                        .foregroundColor(selectedIndex == 1 ? .gray : .blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(selectedIndex == 1 ? Color.gray : .blue, lineWidth: 6)
                    )
                        .tag(1)
                }
                .padding(.top)
                .padding(.leading, 12)
                .buttonStyle(PlainButtonStyle())
                
                
                Button (action: {
                    
                    self.wednesday.toggle()
                    self.selectedIndex = 2
                    
                }) {
                    
                    Text("Mer.")
                        
                        .font(.system(size: 13))
                        .bold()
                        .padding()
                        .padding(.vertical, 10)
                        .padding(.horizontal, 3)
                        .foregroundColor(selectedIndex == 2 ? .gray : .blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(selectedIndex == 2 ? Color.gray : .blue, lineWidth: 6)
                    )
                        .tag(2)
                }
                .padding(.top)
                .padding(.leading, 12)
                .buttonStyle(PlainButtonStyle())
                
                
                Button (action: {
                    
                    self.thursday.toggle()
                    self.selectedIndex = 3
                    
                }) {
                    
                    Text("Jeudi")
                        
                        .font(.system(size: 13))
                        .bold()
                        .padding()
                        .padding(.vertical, 10)
                        .foregroundColor(selectedIndex == 3 ? .gray : .blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(selectedIndex == 3 ? Color.gray : .blue, lineWidth: 6)
                    )
                        .tag(3)
                }
                .padding(.top)
                .padding(.leading, 12)
                .buttonStyle(PlainButtonStyle())
                
                
                Button (action: {
                    
                    self.friday.toggle()
                    self.selectedIndex = 4
                    
                }) {
                    
                    Text("Ven.")
                        
                        .font(.system(size: 13))
                        .bold()
                        .padding()
                        .padding(.vertical, 10)
                        .padding(.horizontal, 2)
                        .foregroundColor(selectedIndex == 4 ? .gray : .blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(selectedIndex == 4 ? Color.gray : .blue, lineWidth: 6)
                    )
                        .tag(4)
                }
                .padding(.top)
                .padding(.leading, 12)
                .buttonStyle(PlainButtonStyle())
                
                
                Button (action: {
                    
                    self.saturday.toggle()
                    self.selectedIndex = 5
                    
                }) {
                    
                    Text("Sam.")
                        
                        .font(.system(size: 13))
                        .bold()
                        .padding()
                        .padding(.vertical, 10)
                        .padding(.horizontal, 1)
                        .foregroundColor(selectedIndex == 5 ? .gray : .blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(selectedIndex == 5 ? Color.gray : .blue, lineWidth: 6)
                    )
                        .tag(5)
                }
                .padding(.top)
                .padding(.leading, 12)
                .buttonStyle(PlainButtonStyle())
                
                
                Button (action: {
                    
                    self.sunday.toggle()
                    self.selectedIndex = 6
                    
                }) {
                    
                    Text("Dim.")
                        
                        .font(.system(size: 13))
                        .bold()
                        .padding()
                        .padding(.vertical, 10)
                        .padding(.horizontal, 1)
                        .foregroundColor(selectedIndex == 6 ? .gray : .blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(selectedIndex == 6 ? Color.gray : .blue, lineWidth: 6)
                    )
                        .tag(6)
                }
                .padding(.top)
                .padding(.leading, 12)
                .buttonStyle(PlainButtonStyle())
                
            }
                
            .padding(.trailing)
            .padding(.bottom, 20)
            
        }
    }
}

struct HorScrollDaysObjectifs_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollDaysObjectifs()
    }
}
