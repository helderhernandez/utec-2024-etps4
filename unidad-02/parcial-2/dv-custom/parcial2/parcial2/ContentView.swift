import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Header()
            
            Text("EXAMEN PRACTICO")
                .foregroundColor(.gray)
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(height: 60)
                        .foregroundColor(.gray)

                    HStack{
                        Image("logo-2")
                            .resizable().scaledToFit().frame(width: 75, height: 50, alignment: .center).cornerRadius(100)
                        Text("Parcial II")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }

            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(height: 60)
                        .foregroundColor(.gray)

                    HStack{
                        Image("logo-1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 50, alignment: .center)
                            .cornerRadius(100)
                            
                        Text("HELDER JOSUE HERNANDEZ DIAZ 25-2916-2018")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }

            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(height: 60)
                        .foregroundColor(.gray)
                    HStack{
                        Image("logo-3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 50, alignment: .center)
                            .cornerRadius(100)

                        Text("ETPS4")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal, 50.0/*@END_MENU_TOKEN@*/)
        
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
