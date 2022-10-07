//
//  PersistenceManager.swift
//  GitFollowers
//
//  Created by Mabast on 10/7/22.
//

import Foundation

enum PersistanceActionType {
    case add, remove
}

enum PersistenceManager {
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorite = "favorites"
    }
    
    static func updateWith(favorite: Follower, actionType: PersistanceActionType, completed: @escaping (GFError?) -> Void) {
        retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                var retrivingFavorites = favorites
                switch actionType {
                case .add:
                    guard !retrivingFavorites.contains(favorite) else {
                        completed(.alreadyInFavorites)
                        return
                    }
                    retrivingFavorites.append(favorite)
                case .remove:
                    retrivingFavorites.removeAll { $0.login == favorite.login }
                }
                completed(save(favorites: retrivingFavorites))
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: Keys.favorite) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite  ))
        }
    }
    
    static func save(favorites: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: Keys.favorite)
            return nil
        } catch {
            return .unableToFavorite
        }
    }
}
