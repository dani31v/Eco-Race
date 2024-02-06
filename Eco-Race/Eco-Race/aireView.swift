//
//  aireView.swift
//  Eco-Race
//
//  Created by Daniela Valencia on 05/02/24.
//

import SwiftUI

struct aireView: View {
    var body: some View {
        ZStack{
            Image("airef")
                .resizable()
                .frame(width:1500, height:860)
            
            
            VStack{
                
                Text("AIR")
                    .bold()
                    .font(Font.custom("Arial Rounded MT Bold", size: 80))
                    .foregroundStyle(Color.airletra)
                Spacer()
                    .frame(height:400)
                
            }
            
            HStack
            {
                
                VStack
                {
                    Spacer()
                        .frame(height:100)
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 40.0)
                            .frame(width:800, height:80)
                            .foregroundColor(.airletra)
                        
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 40.0)
                                .frame(width:750, height:60)
                                .foregroundColor(.white)
                                .opacity(0.9)
                            
                            
                            Spacer()
                                .frame(height:150)
                        }
                       
                      
                    }
                
                    //rectangulo mas grande
                        ZStack{
                            RoundedRectangle(cornerRadius: 50.0)
                                .frame(width: 900, height: 300)
                                .foregroundColor(.airletra)
                                .opacity(0.8)
                            
                            //espacio entre los 4 botones
                            HStack (spacing:-170)
                            {
                                //es el espacio para los botones de espacio pero vertical
                                VStack(spacing:30){
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .frame(width:300, height:80)
                                        .foregroundColor(.white)
                                    
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .frame(width:300, height:80)
                                        .foregroundColor(.white)
                                 
                                }
                                Spacer()
                                    .frame(width:450)
                                
                                //es el espacio para los botones de espacio pero vertical
                                VStack(spacing:30){
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .frame(width:300, height:80)
                                        .foregroundColor(.white)
                                    
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .frame(width:300, height:80)
                                        .foregroundColor(.white)
                                 
                                }
                                
                    
                            }
                          
                            
                        }
                    
                }
                

                
            }
        
            
        }
        
        
    }
    
   
    
    
}

#Preview {
    aireView()
}
