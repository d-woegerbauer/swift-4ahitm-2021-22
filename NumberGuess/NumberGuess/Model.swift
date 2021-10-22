class Model {
    var numberToGuess = 0
    var countOfTries = 0
    
    func compare(guess guessedNumber: Int!) -> Int! {
        countOfTries += 1
        var result = 0
        if guessedNumber < numberToGuess {
            print("Zu erratende Zahl \(numberToGuess)")
            result = -1
        }else if guessedNumber > numberToGuess {
            result = 1
        }else{
            numberToGuess = Int.random(in: 0..<100)
        }
        return result
    }
    
    func compare(guess guessedNumber: String!) -> Int! {
        let convertedNumber = Int(guessedNumber)!
        return compare(guess: convertedNumber)
    }
    
    func isValid(guessValid guessedNumber: String?) -> Bool! {
        var result = false
        if let str = guessedNumber {
            if let number = Int(str) {
                if number > 0 && number < 100 {
                    result = true;
                }
            }
        }
        return result;
    }
}
