
import Foundation
import Darwin
import UIKit

class WordSearch {
    var words: [String?]
    var puzzle: [String?]
    var answers: [Int]
    var solutions: [String]
    
    init() {
        puzzle = [String?](count: 64, repeatedValue: "a")
        words = [String?]()
        answers = [Int]()
        solutions = [String]()
    }
    
    func start(num: Int) {
        var puzzleInput:String = generatePuzzle(num)
        var index = 0
        for i in puzzleInput.characters{
            puzzle[index] = String(i)
            index++
        }
    }
    
    func generatePuzzle(puzzlenum: Int) -> String{
        if(puzzlenum % 2 == 0){
            answers = [1,2,3,4,5,6,7,9,17,15,23,25,33,36,37,38,39,40,41,62,61,60,59]
            return "gmapkitisospsstosdsaedasgasgaosgslsmsafarisyzniljsfcutrskehobjc"
        } else {
            answers =  [42,35,30,18,24,25,26,27,2,3,4,5,6,49,50,51,52,53,54,55,11,17,23,29,36]
            return "rfgiftsoisflsynwsiasassgtreeshnsmsatasrsbsssquspkyadilohdbecsai"

        }
        
        
            }

}