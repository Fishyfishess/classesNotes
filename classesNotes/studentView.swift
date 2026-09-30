//
//  studentView.swift
//  classesNotes
//
//  Created by ALVIN WEI on 9/28/26.
//

import SwiftUI

struct studentView: View {
    @State var student: student
    @State var changeName = ""
    @Binding var JOBBBB: String
    @State var changeJob = ""
    var body: some View {
        Text(student.name)
        TextField("change name", text: $changeName)
            .multilineTextAlignment(.center)
        Text(JOBBBB)
        TextField("change job", text: $changeJob)
            .multilineTextAlignment(.center)
        Button("change your name") {
            student.name = changeName
        }
        Button("change your ways") {
            JOBBBB = changeJob
        }
    }
}

#Preview {
    studentView(student: student(name: "john", age: -1), JOBBBB: .constant(""))
}

//to pass strings between views, make the string a @binding. in the preview and in the navigtion links, we must make the string binding as well.
