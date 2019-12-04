@interface NSString (private)
-(const char*)_fastCStringContents:(BOOL)arg1 ;
-(const unsigned short*)_fastCharacterContents;
@end

@interface NSNumber (nctlfix)
-(const char*)_fastCStringContents:(BOOL)arg1 ;
-(const unsigned short*)_fastCharacterContents;
- (NSInteger)length;
@end

@implementation NSNumber (nctlfix)

-(const unsigned short*)_fastCharacterContents {
    return [[self stringValue] _fastCharacterContents];
}

-(const char*)_fastCStringContents:(BOOL)arg1{
    return [[self stringValue] _fastCStringContents:arg1];
}

- (NSInteger)length {
    return [[self stringValue] length];
}
@end
