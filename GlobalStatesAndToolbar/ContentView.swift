//
//  ContentView.swift
//  GlobalStatesAndToolbar
//
//  Created by Luis Esteban Haro on 11/05/23.
//

import SwiftUI

class MyModel: ObservableObject {
    @Published var count: Int = 0
}

struct ContentView: View {
    @EnvironmentObject var myModel : MyModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Count \(myModel.count)")
                MyView()
            }
            .navigationTitle("App")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "star.fill")
                    })
                }

                ToolbarItem(placement: .bottomBar) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "heart")
                    })
                }

                ToolbarItem(placement: .bottomBar) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "bookmark")
                    })
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "square.and.arrow.up")
                    })
                }

            }
        }
    }
}

struct MyView: View {
    
    @EnvironmentObject var myModel : MyModel
    var body: some View {
        VStack {
            Button(action: {
                myModel.count += 1
            }, label: {
                Text("Button")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {

    
    static var previews: some View {
        let  myModel = MyModel()

        return ContentView()
            .environmentObject(myModel)
    }
}
