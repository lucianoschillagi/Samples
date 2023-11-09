import SwiftUI

struct ColorPickerView: View {
    
    @State private var selectedColor = Color.blue

    var body: some View {
        VStack {
            ColorPicker("", selection: $selectedColor).padding(.bottom)
            ColorRectangle(selectedColor: $selectedColor)
            ColorRectangle(selectedColor: $selectedColor).colorInvert()
        }.padding()
    }
}

struct ColorRectangle: View {
    @Binding var selectedColor: Color
    var body: some View {
        Rectangle()
            .foregroundColor(selectedColor)
            .frame(width: 300, height: 300)
            .cornerRadius(10)
            .overlay {
                Text("Color").font(.system(size: 60)).foregroundColor(selectedColor).bold().colorInvert().fontDesign(.rounded)
            }.padding(.bottom)
    }
}

#Preview {
    ColorPickerView()
}
