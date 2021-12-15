import SwiftUI

struct ContentView: View {
    @State private var num: [Int?] = [nil, nil, nil, nil, nil]
    @State private var total = 0
    
    var body: some View {
        VStack {
            TextField("", value: $num[0], formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            TextField("", value: $num[1], formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            TextField("", value: $num[2], formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            TextField("", value: $num[3], formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            TextField("", value: $num[4], formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            Button(action: {
                total = num.map{$0 ?? 0}.reduce(0, +)
            }) {
                Text("足す")
            }
            .padding()
            
            Text(String(total))
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
