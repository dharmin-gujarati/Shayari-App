//
//  ThirdPage.swift
//  sayriapp_swiftui
//
//  Created by CDMI on 06/02/26.
//

import SwiftUI

struct ThirdPage: View {
    @State var finel : [String]  = []
    @State var index : Int
    @State var icon : [String] = ["heart","arrow.down.to.line","doc.on.doc","paperplane","pencil"]
    @Environment(\.dismiss) var dismiss
    @State private var selectedColor: Color = .white
    @State private var showPicker = false
    @State private var inputText: String = ""
    @AppStorage("savedText") var savedText: String = ""
    
    var body: some View {
        Color.gray
            .overlay
        {
            ZStack{
                Rectangle()
                
                    .fill(.blue)
                    .frame(height: 800)
                    .cornerRadius(25)
                    .padding(.top, 50)
                
                VStack {
                    Spacer()
                    ScrollView{
                        Label("\(finel[index])",systemImage: "")
                            .foregroundColor(selectedColor)
                            .cornerRadius(10)
                            .font(.system(size: 50))
                            .padding(.top, 400.0)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                        
                    }
                    .padding(.top, 10.0)
                    
                    Spacer()
                    HStack{
                        Button(action: {
                            if index >= 2{
                                index -= 1
                            }
                        }) {
                            Label("",systemImage: "chevron.left")
                        }
                        .frame(width: 50 ,height: 50)
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 40))
                        Spacer()
                        Button(action: {
                            if index <= 9{
                                index += 1
                            }
                        }) {
                            Label("",systemImage: "chevron.right")
                        }
                        .frame(width: 50 ,height: 50)
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 40))
                        
                    }
                    .padding(.horizontal)
                    Rectangle()
                        .fill(.black)
                        .frame(height: 120)
                        .cornerRadius(10)
                        .overlay{
                            VStack{
                                
                                HStack (spacing : 10) {
                                    
                                    ZStack{
                                        Rectangle()
                                            .fill(.gray)
                                            .frame(width: 75,height: 68)
                                            .cornerRadius(10)
                                        
                                        Label("",systemImage: "\(icon[0])")
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                        
                                    }
                                    Button(action: {
                                        savedText = finel[index]
                                        finel[index] = ""
                                    }) {
                                        Label("", systemImage: "\(icon[1])")
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                            .frame(width: 75, height: 68)
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(.gray)
                                            )
                                    }
                                    
                                    
                                    
                                    
                                    
                                    Button(action: {
                                        UIPasteboard.general.string = "\(finel[index])"
                                    }) {
                                        Label("", systemImage: "\(icon[2])")
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                            .frame(width: 75, height: 68)
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(.gray)
                                            )
                                    }
                                    
                                    
                                    ShareLink(
                                        item: "Hello from my app!"
                                    )
                                    {
                                        Label("", systemImage: "\(icon[3])")
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                            .frame(width: 75, height: 68)
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(.gray)
                                            )
                                    }
                                    
                                    ZStack{
                                        
                                        Button(action: {
                                            showPicker.toggle()
                                        }) {
                                            Label("", systemImage: "")
                                                .font(.system(size: 30))
                                                .foregroundColor(.white)
                                                .frame(width: 75, height: 68)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .fill(.gray)
                                                )
                                        }
                                        
                                        ColorPicker("", selection: $selectedColor)
                                            .labelsHidden()
                                        
                                    }
                                    
                                }
                            }.padding(.bottom, 20.0)
                        }
                }
                
                .navigationTitle("shayari")
                
                .foregroundColor(.blue)
                .navigationBarTitleDisplayMode(.inline)
            }
            
        }.ignoresSafeArea()
    }
}

#Preview {
    ThirdPage(finel: ["dsfg","d rtjkg jlnltbfc kmrt gdbvjkm fbvjklm, d bvrtdfg bv rtgdfbv dgf ","sdfg","ddsfg1","ddsfg2","ddsfg3","ddsfg4","ddsfg5","ddsfg6","ddsfg7","ddsfg8"],index: 1)
}
