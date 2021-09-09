
import SwiftUI

struct ImageLoaderView1: View {
    // MARK: - PROPERTIES
    var imageUrl: String
    
    var body: some View {
        
        Image(imageUrl)
            .resizable()
            .scaledToFill()
            
    }
}

struct ImageLoaderView1_Previews: PreviewProvider {
    static var previews: some View {
        
    }
}
