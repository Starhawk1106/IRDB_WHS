//
//  DataController.swift
//  IRDB_WHS
//
//  Created by William Stanley on 10/29/20.
//

import UIKit

class DataController: NSObject
{
    let JSONURL = "https://api.jsonbin.io/b/5facdec6ea9b612e1c66aa54/11"
    
    var dataModel: MediaDataModel?
    
    func getJSONData(completion: @escaping (_ dataModel: MediaDataModel) -> ())
    {
        let jsonUrl = URL(string: JSONURL)
        
        let dataTask = URLSession.shared.dataTask(with: jsonUrl!)
        {
            (data, response, error) in
            
            guard let thisData = data else
            {
                return
            }
            
            do
            {
                let decoder = JSONDecoder()
                let thisMediaData = try decoder.decode(MediaDataModel.self, from: thisData)
                
                self.dataModel = thisMediaData
                print(thisMediaData.franchise[0].entries[0].name)
                
                DispatchQueue.main.async
                {
                    completion(self.dataModel!)
                }
                
            }
            catch let err
            {
                print("ERROR WAS: ", err)
                
            }
            
        }
        dataTask.resume()
    }
}
