//
//  ContentView.swift
//  StudentsInfo
//
//  Created by Sedra Asrawi on 18/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.yellow.opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("data")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            
                Text("سجل الطلبة")
                    .font(.custom(FontsManager.Lalezar.regular, size: 40))
                
                ScrollView{
                    ForEach(students) { student in
                        
                        VStack{
                            
                            Text("الاسم : \(student.fullname)")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.trailing)
                                .frame(width: 300, height: 20, alignment: .trailing)
                            Text("السنة : \(student.year)")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.trailing)
                                .frame(width: 300, height: 20, alignment: .trailing)
                            Text("العمر : \(student.age)")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.trailing)
                                .frame(width: 300, height: 20, alignment: .trailing)
                            Divider()
                            
                           
                            
                            
                        }
                        
                    
                        
                    }
                }
                
                HStack{
                    Text("عدد الطلبة المسجلين : 3")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(5)

                    Image(systemName: "i.circle.fill")
                        .foregroundColor(.blue.opacity(0.5))
                        .font(.system(size: 25))
                        .padding(5)

                   }.background()
                    .border(.blue)
                
                
                Spacer()
            }.frame(width: 350, height: 700)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StudentsDetails : Identifiable {
    let id = UUID()
    var fullname : String
    var year : Int
    var age : Int
}
var sedra = StudentsDetails(fullname: "سدرة محمد", year: 2004, age: 17)
var rahaf = StudentsDetails(fullname: "رهف خالد", year: 2004, age: 18)
var fatima = StudentsDetails(fullname: "فاطمة أحمد", year: 2006, age: 16)

var students = [sedra,rahaf,fatima]
