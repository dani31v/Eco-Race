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
            
            
            ZStack{
                
                
                HStack
                {
                    
                    VStack
                    {
                        Spacer()
                            .frame(height:100)
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 40.0)
                            
                                .fill(.ultraThinMaterial)
                            
                            
                                .frame(width:800, height:80)
                            
                            
                            ZStack{
                                
                                
                                
                                Spacer()
                                    .frame(height:150)
                            }
                            
                            
                        }
                        
                        //rectangulo mas grande
                        ZStack{
                            
                            
                            //espacio entre los 4 botones
                            HStack (spacing:-170)
                            {
                                //es el espacio para los botones de espacio pero vertical
                                VStack(spacing:30){
                                    
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(.ultraThinMaterial)
                                        .frame(width:300, height:80)
                                    
                                    
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(.ultraThinMaterial)
                                        .frame(width:300, height:80)
                                    
                                    
                                }
                                Spacer()
                                    .frame(width:450)
                                
                                //es el espacio para los botones de espacio pero vertical
                                VStack(spacing:30){
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(.ultraThinMaterial)
                                        .frame(width:300, height:80)
                                    
                                    
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(.ultraThinMaterial)
                                        .frame(width:300, height:80)
                                    
                                    
                                }
                                
                                
                            }
                            
                            
                        }
                    Spacer()
                            .frame(width:40, height:40 )
                        ProgressBar(progress: 40)
                    }
                    
                    
                    
                }
                
                
            }
            
        }
        
        
        
    }
    
   
    
    
}

#Preview {
    aireView()
}
