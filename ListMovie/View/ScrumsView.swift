
import SwiftUI



struct ScrumsView: View {
    
    var body: some View {
        VStack(){
            Text("SwiftUI Tutorials")
                .font(.title)
                .frame(maxWidth: .infinity)
                .background(Color.yellow)
            Text("Name").frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
                .font(.system(size: 18))
            Spacer().frame(height: 2, alignment: .leading)
            TextField("", text: $user.username)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            Rectangle()
                .frame(height: 2)
                .padding(.horizontal, 20)
                .foregroundColor(.red)
            Text("Password").frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
                .font(.system(size: 18))
            Spacer().frame(height: 2, alignment: .leading)
            TextField("", text: $user.password)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            Rectangle()
                .frame(height: 2)
                .padding(.horizontal, 20)
                .foregroundColor(.red)
            Button(action: handleLogin) {
                Text("SignUp".uppercased())
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
            .background(Color.yellow) // If you have this
            .cornerRadius(25)
        }.frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
        )
    }
    
    func handleLogin (){
       print("skskks")
    }
}

struct ScrumsView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            ScrumsView()
        }
    }
}


