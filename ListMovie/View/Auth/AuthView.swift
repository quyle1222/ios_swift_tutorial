//
//  AuthView.swift
//  ListMovie
//
//  Created by TuPT on 08/09/2022.
//

import SwiftUI
import Alamofire
import SwiftyJSON


struct AuthView: View {
    @ObservedObject var viewModel : AuthViewModel = AuthViewModel()
    @State var text = State(initialValue: "")
    @State var isActive:Bool
    @StateObject var user: User
    let authRepository = AuthRepository()
    
    
    init(){
        _isActive = State(initialValue: false)
        _user = StateObject(wrappedValue: User(username: "",password: ""))
        print("view",viewModel.isActive)

        viewModel.isActive = !viewModel.isActive
        print("view",viewModel.isActive)
    }
    
    func onLogin() {
        Task {
            do {
                let data:AuthDTO = AuthDTO.init(username: "quyle1222", password: "admin")
                authRepository.login(auth:data)!.responseDecodable(of:ApiResult.self){ response in
                    print("response",response.result)
                    do{
                        let result = try JSONDecoder().decode(UserDTO.self, from: try response.result.get().data!.rawData())
                        let token:String = result.token!
                        if(!token.isEmpty){
                            print("token",token)
                            isActive = true
                        }
                    }
                    catch let error
                    {
                        print("error",error)
                    }
                };
            }
        }
    }
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                Text("Navigation View")
                    .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: 20)
                Button(action:onLogin){
                    Text("Login")
                }.frame(width: 200, height: 50, alignment: .center).background(.green)
                NavigationLink("", destination: Home(), isActive: $isActive)
            }
            .navigationBarHidden(true)
            
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
