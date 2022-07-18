//
//  ContentView.swift
//  CaseSearch
//
//  Created by 麒昊王 on 7/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            LoginIcon().offset()
            SearchBox(content: "")
        }
    }
}

struct LoadPage: View{
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text("ParaLegal")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Immigration")
                    .foregroundColor(.blue)
            }
            Image("LoadPic")
                .resizable()
                .frame(width: 70, height: 70)
        }
    }
}

struct LoginPage: View{
    @State var account = ""
    @State var password = ""
    
    var body: some View{
        VStack{
            HStack{
                Image(systemName: "person")
                SecureField("Account", text: $account, onCommit: {
                    
                })
            }
            HStack{
                Image(systemName: "lock")
                SecureField("Password", text:$password, onCommit: {
                    
                })
            }
            Divider()
            Spacer()
        }.frame(width: 180, height: 40)
    }
}

struct SearchBox: View{
    @State var content : String
    var body: some View{
        VStack{
            //Image("")
            
            Text("Icon Here")
                .frame(width: 200, height: 70, alignment: .center)
                .foregroundColor(.gray)
            
            
            TextField("Search",
                      text: $content
                      // onEditingChanged: {},
                      // onCommit: {}
            ).padding()
                .textFieldStyle(.roundedBorder)
                .frame(width: 270, height: 100,alignment: .center)
                .cornerRadius(50)

        }
    }
}

struct LoginIcon: View{
    var body: some View{
        ZStack{
            Image("LoadPic")
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
        }.offset(x: 125, y: -250)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        LoginPage()
        LoadPage()
    }
}
