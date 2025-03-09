import SwiftUI

struct MainTabView: View {

    var body: some View {
        TabView {
            CoffeeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("コーヒー")
                }
            
            FavoriteView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("お気に入り")
                }
            
            Text("シェア")
                .tabItem {
                    Image(systemName: "repeat.circle.fill")
                    Text("共有")
                }
            Text("フォロー")
                .tabItem {
                    Image(systemName: "person.fill.badge.plus")
                    Text("フォロー欄")
                }
        }
    }
}

#Preview {
    MainTabView()
}
