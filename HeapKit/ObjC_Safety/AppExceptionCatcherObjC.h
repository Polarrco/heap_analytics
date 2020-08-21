#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppExceptionCatcherObjC: NSObject

+ (void)try:(nonnull NS_NOESCAPE void(^)(void))tryBlock
catch:(nonnull void(^)(NSException * _Nonnull))catchBlock
finally:(nonnull void(^)(void))finallyBlock;

@end

NS_ASSUME_NONNULL_END
