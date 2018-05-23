//
//  main.swift
//  DealOrNoDeal
//

import Foundation

// INPUT
// Global variable to use later in program
var countOfBriefcasesOpened = 0

// Now get the actual number of briefcases that were opened during the game
// e.g.: write the rest of the INPUT section
print("Insert Number of breifcases opened")
while 1 == 1 {
    guard let givenInput = readLine() else {
        print("Insert Number of breifcases opened")
        continue
    }
    guard let givenInteger = Int(givenInput) else {
      print("Insert Number of breifcases opened")
        continue
    }
    
    if givenInteger <= 0 || givenInteger > 10 {
       print("Insert Number of breifcases opened")
    }
    countOfBriefcasesOpened = givenInteger
    break
    
}


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire
var briefCaseCosts : [String] = []
var costs = 1691600
// Collect the list of what briefcases were opened here
for counter in 1...countOfBriefcasesOpened {
    
    // Ask what briefcase was opened in this turn
    print("Briefcase opened, in turn \(counter), was:")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // What was provided?

    briefCaseCosts.append(givenInput)
    
    // Implement the rest of your logic here...
    for letters in briefCaseCosts {
        switch letters {
        case "1" :
            costs -= 100
        case "2" :
            costs -= 500
        case "3" :
            costs -= 1000
        case "4" :
            costs -= 5000
        case "5" :
            costs -= 10000
        case "6" :
            costs -= 25000
        case "7" :
            costs -= 50000
        case "8" :
            costs -= 100000
        case "9" :
            costs -= 500000
        case "10" :
            costs -= 1000000
        default:
            break
        }
  
        
    }
    
}
var bankerGivenCost = 1
print("Banker Offer?")
while 1 == 1 {
    guard let givenInput = readLine() else {
        print("Banker Offer?")
        continue
    }
    guard let givenInteger = Int(givenInput) else {
        print("Banker Offer?")
        continue
    }
    
    bankerGivenCost = givenInteger
    break
    
}

if bankerGivenCost > costs {
    print("Deal")
} else if bankerGivenCost < costs {
    print("No Deal")
} else {
    print("No Deal.")
}


