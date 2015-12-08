//
//  WordSearchViewController.swift
//  WordSearch
//
//  Created by Adam Sebti on 7/12/15.
//  Copyright © 2015 Adam Sebti. All rights reserved.
//

import UIKit

class WordSearchViewController: UIViewController {

    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b15: UIButton!
    @IBOutlet weak var b16: UIButton!
    @IBOutlet weak var b17: UIButton!
    @IBOutlet weak var b18: UIButton!
    @IBOutlet weak var b19: UIButton!
    @IBOutlet weak var b20: UIButton!
    @IBOutlet weak var b21: UIButton!
    @IBOutlet weak var b22: UIButton!
    @IBOutlet weak var b23: UIButton!
    @IBOutlet weak var b24: UIButton!
    @IBOutlet weak var b25: UIButton!
    @IBOutlet weak var b26: UIButton!
    @IBOutlet weak var b27: UIButton!
    @IBOutlet weak var b28: UIButton!
    @IBOutlet weak var b29: UIButton!
    @IBOutlet weak var b30: UIButton!
    @IBOutlet weak var b31: UIButton!
    @IBOutlet weak var b32: UIButton!
    @IBOutlet weak var b33: UIButton!
    @IBOutlet weak var b34: UIButton!
    @IBOutlet weak var b35: UIButton!
    @IBOutlet weak var b36: UIButton!
    @IBOutlet weak var b37: UIButton!
    @IBOutlet weak var b38: UIButton!
    @IBOutlet weak var b39: UIButton!
    @IBOutlet weak var b40: UIButton!
    @IBOutlet weak var b41: UIButton!
    @IBOutlet weak var b42: UIButton!
    @IBOutlet weak var b43: UIButton!
    @IBOutlet weak var b44: UIButton!
    @IBOutlet weak var b45: UIButton!
    @IBOutlet weak var b46: UIButton!
    @IBOutlet weak var b47: UIButton!
    @IBOutlet weak var b48: UIButton!
    @IBOutlet weak var b49: UIButton!
    @IBOutlet weak var b50: UIButton!
    @IBOutlet weak var b51: UIButton!
    @IBOutlet weak var b52: UIButton!
    @IBOutlet weak var b53: UIButton!
    @IBOutlet weak var b54: UIButton!
    @IBOutlet weak var b55: UIButton!
    @IBOutlet weak var b56: UIButton!
    @IBOutlet weak var b57: UIButton!
    @IBOutlet weak var b58: UIButton!
    @IBOutlet weak var b59: UIButton!
    @IBOutlet weak var b60: UIButton!
    @IBOutlet weak var b61: UIButton!
    @IBOutlet weak var b62: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var life1: UIProgressView!
    
    @IBOutlet weak var life5: UIProgressView!
    @IBOutlet weak var life4: UIProgressView!
    @IBOutlet weak var life3: UIProgressView!
    @IBOutlet weak var life2: UIProgressView!
    
    var puzzle: [String?] = []
    var game: WordSearch!
    var buttons1: [UIButton!] = []
    var buttons2: [UIButton!] = []
    var buttons3: [UIButton!] = []
    var buttons4: [UIButton!] = []
    var buttons5: [UIButton!] = []
    var buttons6: [UIButton!] = []
    var buttons7: [UIButton!] = []
    var currentButton: UIButton = UIButton()
    var answers: [Int] = []
    var answersFound: Int = 0
    var dict: [Int: [UIButton!]] = [Int: [UIButton!]]()
    var lifeStack: [UIProgressView!] = []
    var notLost: Bool = true
    var puzzlenum: Int = 0
    var check: [Bool] = []
    
    @IBOutlet weak var newGameBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons1 = [b0, b1, b2, b3, b4, b5, b6,b7, b8, b9]
        buttons2 = [b10, b11, b12, b13,b14, b15, b16, b17, b18, b19]
        buttons3 = [b20, b21, b22, b23, b24, b25, b26, b27, b28, b29]
        buttons4 = [b30, b31, b32, b33, b34,b35, b36, b37, b38, b39]
        buttons5 = [b40, b41, b42, b43, b44, b45, b46,b47, b48, b49]
        buttons6 = [b50, b51, b52, b53, b54, b55, b56, b57, b58, b59]
        buttons7 = [b60, b61, b62]
        dict = [
            1:buttons1,
            2:buttons2,
            3:buttons3,
            4:buttons4,
            5:buttons5,
            6: buttons6,
            7: buttons7]
        newGame()
        newGameBtn.addTarget(self, action: "newGame", forControlEvents: .TouchUpInside)
        
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadPuzzle(){
        var index = 0
        for button in buttons1 {
            button.setTitle(puzzle[index], forState: UIControlState.Normal)
            button.backgroundColor = UIColor(red: 0, green: 0.2, blue: 0.8, alpha: 1)
            button.addTarget(self, action: "clicked:", forControlEvents: .TouchUpInside)
            button.tag = index
            currentButton = button
            index++
            
        }
        for button in buttons2 {
            button.setTitle(puzzle[index], forState: UIControlState.Normal)
            button.backgroundColor = UIColor(red: 0, green: 0.2, blue: 0.8, alpha: 1)
            button.addTarget(self, action: "clicked:", forControlEvents: .TouchUpInside)
            button.tag = index
            currentButton = button
            index++
        }
        for button in buttons3 {
            button.setTitle(puzzle[index], forState: UIControlState.Normal)
            button.backgroundColor = UIColor(red: 0, green: 0.2, blue: 0.8, alpha: 1)
            button.addTarget(self, action: "clicked:", forControlEvents: .TouchUpInside)
            button.tag = index
            currentButton = button
            index++
        }
        for button in buttons4 {
            button.setTitle(puzzle[index], forState: UIControlState.Normal)
            button.backgroundColor = UIColor(red: 0, green: 0.2, blue: 0.8, alpha: 1)
            button.addTarget(self, action: "clicked:", forControlEvents: .TouchUpInside)
            button.tag = index
            currentButton = button
            index++
        }
        for button in buttons5 {
            button.setTitle(puzzle[index], forState: UIControlState.Normal)
            button.backgroundColor = UIColor(red: 0, green: 0.2, blue: 0.8, alpha: 1)
            button.addTarget(self, action: "clicked:", forControlEvents: .TouchUpInside)
            button.tag = index
            currentButton = button
            index++
        }
        for button in buttons6 {
            button.setTitle(puzzle[index], forState: UIControlState.Normal)
            button.backgroundColor = UIColor(red: 0, green: 0.2, blue: 0.8, alpha: 1)
            button.addTarget(self, action: "clicked:", forControlEvents: .TouchUpInside)
            button.tag = index
            currentButton = button
            index++
        }
        for button in buttons7 {
            button.setTitle(puzzle[index], forState: UIControlState.Normal)
            button.backgroundColor = UIColor(red: 0, green: 0.2, blue: 0.8, alpha: 1)
            button.addTarget(self, action: "clicked:", forControlEvents: .TouchUpInside)
            button.tag = index
            currentButton = button
            index++
        }
        
    }
    
    func clicked(sender:UIButton!){
        if(check[sender.tag]){
            return
        }
        if(answers.contains(sender.tag) && notLost){
            check[sender.tag] = true
            var column = ceil((Double(sender.tag)/10) + 0.1)
            answersFound++
            let progressFrac = Float(answersFound)/Float(answers.count)
            progressBar.setProgress(progressFrac, animated: true)
            var tempbuttons: [UIButton!] = dict[Int(column)]!
            var tempbutton: UIButton! = tempbuttons[sender.tag % 10]
            tempbutton.backgroundColor = UIColor(red: 0, green: 0.80, blue: 0.24, alpha: 1)
            if(progressFrac == 1){
                notLost = false
                let alert = UIAlertController(title: "You Win!", message: "Click new game to try agin", preferredStyle: UIAlertControllerStyle.Alert)
                
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Cancel, handler: nil))
                self.presentViewController(alert, animated: false, completion: nil)
            }
        } else {
            removeLife()
        }
    }
    
    func removeLife(){
        if(notLost){
            if(lifeStack.isEmpty){
                notLost = false
                let alert = UIAlertController(title: "You Lost!", message: "Click new game to try agin", preferredStyle: UIAlertControllerStyle.Alert)
            
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Cancel, handler: nil))
                self.presentViewController(alert, animated: false, completion: nil)

                    } else {
                var life = lifeStack.removeLast()
                life.setProgress(1, animated: true)
            }
        }
    }
    func newGame(){
        game = WordSearch()
        game.start(puzzlenum++)
        notLost = true
        check = [Bool](count: 64, repeatedValue: false)
        answersFound = 0
        puzzle = game.puzzle
        answers = game.answers
        loadPuzzle()
        progressBar.setProgress(0, animated: true)
        lifeStack = []
        lifeStack.append(life1)
        lifeStack.append(life2)
        lifeStack.append(life3)
        lifeStack.append(life4)
        lifeStack.append(life5)
        for i in lifeStack{
            i.setProgress(0, animated: true)
        }

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
