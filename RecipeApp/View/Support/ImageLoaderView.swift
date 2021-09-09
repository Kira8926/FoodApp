
import SwiftUI

struct ImageLoaderView: View {
    // MARK: - PROPERTIES
    var imageUrl: String
    
    var body: some View {
        
        Image(imageUrl)
            .resizable()
            .scaledToFit()
            
    }
}

struct ImageLoaderView_Previews: PreviewProvider {
    static var previews: some View {
        
    }
}
