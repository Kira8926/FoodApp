
import SwiftUI

struct RecipeIngredientsView: View {
    
    // MARK: - PROPERTIES
    var recipe: Recipe
    @State private var showAlertIngredient: Bool = false
    @EnvironmentObject var shoppingListViewModel: ShoppingListViewModel
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
        
            HStack {
                Spacer()
                Text("Ингредиенты")
                    .modifier(BoxTitleModifier())
                Spacer()
            }
            
            
            HStack {
                Button(action: {
                    self.shoppingListViewModel.addRecipeToShoppingList(recipe: self.recipe)
                    self.showAlertIngredient.toggle()
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        self.showAlertIngredient.toggle()
                    }
                }) {
                    HStack {
                        Image(systemName: "cart.badge.plus")
                        Text("Добавить в список покупок")
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(40)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 5, x: 1, y: 2)
                }
                .alert(isPresented: $showAlertIngredient) {
                    Alert(
                        title: Text("Ура!"),
                        message: Text("Ингредиенты были добавлены в список покупок"),
                        dismissButton: .default(Text("ОК"))
                    )
                }
                
            }

            VStack (alignment: .leading, spacing: 5) {
                ForEach(recipe.ingredients, id: \.self) { item in
                    VStack (alignment: .leading, spacing: 5) {
                        Text(item)
                            .font(.footnote)
                            .multilineTextAlignment(TextAlignment.leading)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        Divider()
                    }
                }
                
            }
        }
        .modifier(BoxBackgroundModifier())
    }
}

struct RecipeIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeIngredientsView(recipe: sampleRecipes[0])
    }
}
