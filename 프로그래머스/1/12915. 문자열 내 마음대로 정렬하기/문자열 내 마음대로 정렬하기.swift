func solution(_ strings:[String], _ n:Int) -> [String] {
    var result: Array<String> = strings;
    
    result.sort{ Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] };

    return result;
}