
import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        Image("header_image")
            .resizable()
            .scaledToFit()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
