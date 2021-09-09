
import SwiftUI

struct ShoppingListView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shoppingListViewModel: ShoppingListViewModel
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    ForEach(shoppingListViewModel.shoppingList) {item in
                        ShoppingIngredientsView(ingredient: item)
                    }
                }
            }
            .navigationBarTitle(Text("Список покупок"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ShoppingListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListView()
            .environmentObject(ShoppingListViewModel())
    }
}
