import Foundation

open class AppExceptionCatcher {
    
    static public func tryClosure(
        tryClosure: () -> (),
        catchClosure: @escaping (NSException) -> (),
        finallyClosure: @escaping () -> () = {})
    {
        
        AppExceptionCatcherObjC.`try`(tryClosure, catch: catchClosure, finally: finallyClosure)
    }
}
