//
//  ContentView.swift
//  classesNotes
//
//  Created by ALVIN WEI on 9/24/26.
//3:53 contexto sep/25

//Making a custom object update on the screen (across views (basically make the object variables an @State
//1. Set @Observable on top of code; it is a macro (only for ios 17+

//making a noncustom object update on screen (across views)
//1. put @Binding in the new view
//2. pass a binding ($) variable through the init in the navigation link
//3. in the new view, use .constant(value) to pass a binding version of the variable through the preview

//making a variable acessible on every and any view (ios 17+)
//1. create a singleton named shared (a static version of the class itself in itself) in a class called AppData (doesn't have to be AppData)
//2. don't make the variable static
//3. reference the variable with AppData.shared.(var name)
//4. make the AppData init private so no one else can make an object of it
//note: it is ok to make statics if it is going to be a let; if it doesn't change much, statics are not that bad

import SwiftUI

@Observable
class AppData{
    
    static let shared = AppData() //singleton: only building one object of the class, which can be used anywhere
    
    static var name = "googitygoogitygoo" //incorrect method!!!!!
    
    static let goodPadding = 12
    
    var age = 0
    private init() {
    }
    //not allowing anyone else to make an object of the AppData class
}

struct ContentView: View {
    
    var kid = student(name: "billybob", age: 6)
    var otherKid = student(name: "bobilybill", age: 100)
    @State var userInputName = ""
    @State var children: [student] = []
    @State var JOBBBBB = "teach"
    
    var body: some View {
        NavigationView{
            VStack {
                Text("\(AppData.shared.age)")
                Text(AppData.name)
                Text(JOBBBBB)
                Text(kid.name)
                Text("\(kid.age)")
                TextField("Enter name", text: $userInputName)
                    .multilineTextAlignment(.center)
                
                Button("Add to student"){
                    //let temp = student(name: "joey", age: 1029)
//                    let temp = student(name: userInputName, age: 0)
//                    children.append(temp)
                    userInputName = ""
                    
                    AppData.name = "JOHN SMIHHHH"
                }
                Button("Add struct"){
                    var temp = course(period: 2, teacherName: "Dr. Bill", courseName: "Intro to hell")
                    temp.period += 1
                }
                ForEach(children, id: \.name){ n in
                    Text(n.name)
                }
                NavigationLink("see student") {
                    studentView(student: kid, JOBBBB: $JOBBBBB)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
