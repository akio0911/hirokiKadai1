import SwiftUI

struct ContentView: View {
    @State private var num: [Int?] = [nil, nil, nil, nil, nil]
    @State private var total = 0
    
    var body: some View {
        VStack {
            NumberInputView(value: $num[0])
            NumberInputView(value: $num[1])
            NumberInputView(value: $num[2])
            NumberInputView(value: $num[3])
            NumberInputView(value: $num[4])

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

struct NumberInputView: View {
    @Binding var value: Int?

    var body: some View {
        TextField("", value: $value, formatter: NumberFormatter())
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
