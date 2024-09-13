// 1Create a Generic Stack Class: Make a stack class that works with any type (like numbers, strings, etc.). Add methods to add, remove, and see the top item in the stack.
//class Stack<T>{
//    public var elements: [T] = []
//    func addValue(_ element: T){
//        elements.append(element)
//    }
//    func removeValue(){
//        elements.removeAll()
//    }
//    func getTopValue() -> T?{
//        return elements.first
//    }
//}
//var newStack = Stack<Int>()
//newStack.addValue(428)
//newStack.addValue(232)
//var newStack2 = Stack<String>()
//newStack2.addValue("asdf")
//newStack2.addValue("xchj")
//newStack2.addValue("ufwi")
//print(newStack2.getTopValue() ?? "nil")
//---------------------------------------------------------------------------------------
// 2 Build a Generic Swap Function: Write a function called swapValues that takes two items of the same type and switches their values. Test it with different types like integers, strings, and custom objects.

//func swapValues<T>(_ a: inout T,_ b: inout T ){
//    var secondA = a
//    a = b
//    b = secondA
//}
//var a1 = 5
//var b1 = 10
//swapValues(&a1,&b1)
//print("a1 = \(a1) , b1 = \(b1)")
//
//var a2 = "First"
//var b2 = "Second"
//swapValues(&a2, &b2)
//print("a2 is \(a2) , b2 is \(b2)")

//---------------------------------------------------------------------------------------
//3 Create a Type-safe Dictionary Wrapper: Make a dictionary class that only allows specific types for keys and values. Add methods to add, get, and remove items while keeping the type safety.
//class DictionaryClass <KeyType:Hashable, ValueType>{
//    var dictionary: [KeyType:ValueType] = [:]
//    func addValue(key:KeyType,value:ValueType){
//        dictionary[key] = value
//    }
//    func deleteValue(key:KeyType){
//        dictionary[key] = nil
//    }
//    func getValue(key:KeyType) -> ValueType?{
//        return dictionary[key]
//    }
//}
//let myDictionary = DictionaryClass<Int,String>()
//myDictionary.addValue(key: 15, value: "asdf")
//myDictionary.addValue(key: 16, value: "avjev")
//myDictionary.deleteValue(key: 16)
//print(myDictionary.getValue(key: 15) ?? "nil")
//---------------------------------------------------------------------------------------
//4 Extend a Generic Protocol: Define a protocol called Identifiable that requires any type to have an id property. Create two structs, like User and Product, and make them follow this protocol.
//protocol Identifiable{
//    associatedtype ID
//}
//struct User<ID>: Identifiable{
//    var id: ID
//}
//struct Product<ID>: Identifiable{
//    var id: ID
//}
//let user = User(id: "user123")
//let product = Product(id: 100)
//print(user.id)
//print(product.id)
//---------------------------------------------------------------------------------------
// 5 Implement a Generic Sorting Function: Write a function called customSort that takes an array of any comparable type and sorts it using a custom sorting rule. Test it with different types like numbers, strings, and custom objects.
//let arrInt = [5,10,1,3,7]
//let arrString = ["Hello","All"]
//func customSort<T:Comparable>(_ array: [T]) -> [T]{
//    let arr = array.sorted()
//    return arr
//}
//var result1 = customSort(arrInt)
//var result2 = customSort(arrString)
//print(result1)
//print(result2)
//---------------------------------------------------------------------------------------
// 6 Generic Constraints with Multiple Protocols: Write a function called filterAndSort that works with any array of elements that can be both compared (like sorting numbers) and converted to a string. Make sure it filters and sorts the array correctly.
//var arr = [3,5,2,6,1,5]
//func filterAndSort<T:Comparable & CustomStringConvertible>(_ array: [T]) -> [String] {
//    let convertedArr = array.map {String(describing:$0)}
//    let sortedArr = convertedArr.sorted()
//    return sortedArr
//}
//print(filterAndSort(arr))
//---------------------------------------------------------------------------------------
// 7 Create a Reusable Generic View Model: Design a view model that can work with different types of data and views (like table views or collection views). Make it easy to extend for different uses by using generics.     ???
//protocol viewModel{
//    associatedtype Data
//    func updateView()
//}
//class GenericViewModel<Data> :viewModel{
//    func updateView() {
//        <#code#>
//    }
//}
//---------------------------------------------------------------------------------

// 8 Develop a Generic Caching System: Implement a caching system that can store any type of data using a unique key. It should have methods to add, get, and clear data while ensuring the data types match correctly.
//class Cache<Key:Hashable,Value> {
//    private var cache:[Key: Value] = [:]
//    func addData(key:Key,value:Value){
//        cache[key] = value
//    }
//    func removeData(key:Key){
//        cache[key] = nil
//    }
//    func clearData(){
//        cache.removeAll()
//    }
//    func getData(key: Key) ->Value? {
//        return cache[key]
//    }
//}
//var result = Cache<Int,String>()
//result.addData(key: 2, value: "hello")
//print(result.getData(key: 2) ?? "nil")

