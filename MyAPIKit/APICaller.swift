//
//  APICaller.swift
//  MyAPIKit
//
//  Created by Aaryaman Saini on 11/03/22.
//

import Foundation

public class APICaller {
    
    public static let shared = APICaller()
    
    let urlstring = Constants()
    
    private init() {}
    
    public func fetchCourseName(completion: @escaping ([String]) -> Void ) {
        guard let url = URL(string: Constants.url) else {
            completion([])
            return
        }
        
        let tasks = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                completion([])
                return
            }
            
            // Decode
            
            do{
                guard let result = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: String]] else {
                    completion([])
                    return
                }
                let names: [String] = result.compactMap( {$0["name"] } )
                completion(names)
                
            }catch{
                completion([])
            }
        }
        
        tasks.resume()
    }
}
