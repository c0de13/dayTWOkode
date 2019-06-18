//
//class FacebookProfile {
//
//    //attributes / fields of FB
//
//    var bio: String
//    var friendCount: Int
//    var userName : String
//    var birthday: String
//    var relationStatus: String
//    var friendList: [String]
//
//
//    //preselected options for relationStatus
//    let option1 = "Single"
//    let option2 = "Complicated"
//    let option3 = "Married"
//    let option4 = "Divorced"
//
//
//    //functions that support our user using FB profile
//    //the field bio is being updated by the method setBio
//    func setBio(b: String){
//        bio = b
//    }
//
//    //function that lets user update their FB name
//    func setUserName(nameUserInput: String){
//        userName = nameUserInput
//    }
//
//
//    //function that lets friend count
//    func setFriend(){
//        var friendNum = friendList.count
//        friendCount = friendNum
//    }
//
//    //function that updates the Bday
//    func setBirthday(bday: String){
//        birthday = bday
//    }
//
//
//    //function that updates the profiles relationship status
//    func setRelation(inputVAR: String){
//        if inputVAR == "1"{relationStatus = option1}
//
//        else if inputVAR == "2"{relationStatus = option2}
//
//        else if inputVAR == "3"{relationStatus = option3}
//
//        else if inputVAR == "4"{relationStatus = option4}
//
//        else { print( "The number was wrong?" ) }
//    }
//    //end of function setRelation
//
//
//    //THESE ARE WRAPPER FUNCTIONS
//    //wrapper functions: lets the user check their profile info
////    bio: String
////    var friendCount: Int
////    var userName : String
////    var birthday: String
////    var relationStatus: String
////    var friendList: [String]
//    func checkBio() -> String{return bio}
//    func checkFriendCount() -> Int{return friendCount}
//    func checkUserName() -> String{return userName}
//    func checkBirthday() -> String{return birthday}
//    func checkRelationshipStatus() -> String{return relationStatus}
//    //func checkFriendList() -> [String]{return friendList}
//
//
//
//
//    //initalize section
//    //tells the computer how to build an object of the class
//    init(){
//        //return
//        bio = ""
//        friendCount = 0
//        userName = ""
//        birthday = ""
//        relationStatus = option2
//        friendList = [String]()
//    }
//}
////END OF CLASS fACEBOOKpROFILE
//
//
//
////TESTING FB PROFILE
//var cassieProfile = FacebookProfile()
//
//cassieProfile.setUserName(nameUserInput: "Cassie")
//cassieProfile.setRelation(inputVAR: "2")
//cassieProfile.setBirthday(bday: "09/06/2002")
//
////that prints the address of the object cassieProfile
////print(cassieProfile)
//print(cassieProfile.checkUserName())
//




class BankAccount{
    
    var name: String
    var accountBalance: Double
    var transferNumber: Int
    var password: String
    
    init(){
        name = ""
        accountBalance = 0.0
        transferNumber = 0
        password = ""
    }
    
    
    //the set methods
    func setName(n:String){ name=n }
    func setTransferNumber(n:Int){ transferNumber=n }
    
    //the reset pass checks the user name
    func resetPassword(use:String, p:String){
        //password=p
        if use == name{
            password = p
        }
        else{
            print("The username is invalid and the password will not be reset.")
        }
    }
    
    
    
    //the check methods
    func checkName() -> String{
        return name
    }
    func checkAccountBal() -> Double {
        return accountBalance
    }
    func checkTransferNumber() -> Int {
        return transferNumber
    }
    //the username must be entered to check the password
    func checkPassword(use: String) -> String {
        if use == name{
            return password
        }
        else{
            return "The username is invalid"
        }
    }
    
    
    
    //the extra methods
    func deposit(d : Double) {
        accountBalance = accountBalance + d
    }
    //the withdrawal needs a pass
    func withdrawal(pass: String, with : Double) {
        if pass == password{
            if (accountBalance - with) >= 0{
                accountBalance = accountBalance - with
            }
            else{ // the bank balance after the withdrawal      is less than zero
                print("The withdrawal canceled. There isn't enough money in the account balance.")
            }
        }
        else{print("This is the wrong password enter a new one.")}
    }
    
    
    
    
    func PrintAll(){
        print(    "Name: \(name)\nAccount Balance: \(accountBalance)\nTransfer Number: \(transferNumber)\nPassword: \(password)"    )
    }
    
    
    
}//END OF CLASS BANK ACCOUNT





///test the bank account class

var MurphyAccount = BankAccount()
MurphyAccount.setName(n: "Megan Murphy")
MurphyAccount.setTransferNumber(n: 237562)
MurphyAccount.resetPassword(use: "Megan Murphy", p: "m04957")
MurphyAccount.resetPassword(use: "M", p: "wrongPASS")
MurphyAccount.deposit(d: 390)
MurphyAccount.withdrawal(pass: "m04957", with: 60)

MurphyAccount.PrintAll()





print("\n\n\nBATMAN")
var Wayne = BankAccount()
Wayne.setName(n: "Bruce Wayne")
Wayne.setTransferNumber(n: 347336)
Wayne.resetPassword(use: "Bruce Wayne", p: "I_am_batman")
Wayne.deposit(d: 50000000000)

Wayne.PrintAll()
//Wayne.withdrawal(pass: "I_am_batman", with: 50000000001)


print("\n\n\n")


var animals = ["red panda", "penguin", "polar bear"]

for index in 0..<animals.count{
    print("I love "+animals[index])
}

func printARRAY(arry : [String]){
    for ind in 0..<arry.count{
        print(arry[ind])
    }
}// END OF FUNC PRINTarray
print("\n\nTesting FUNC PRINTarray")
printARRAY(arry: animals)
