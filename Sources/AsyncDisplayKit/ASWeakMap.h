//
//  ASWeakMap.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <Foundation/Foundation.h>
#import "../PublishHeaders/AsyncDisplayKit/ASBaseDefines.h"

NS_ASSUME_NONNULL_BEGIN


/**
 * This class is used in conjunction with ASWeakMap.  Instances of this type are returned by an ASWeakMap,
 * must retain this value for as long as they want the entry to exist in the map.
 */
AS_SUBCLASSING_RESTRICTED
@interface ASWeakMapEntry<Value> : NSObject

@property (readonly) Value value;

@end


/**
 * This is not a full-featured map.  It does not support features like `count` and FastEnumeration because there
 * is not currently a need.
 *
 * This is a map that does not retain keys or values added to it.  When both getting and setting, the caller is
 * returned a ASWeakMapEntry and must retain it for as long as it wishes the key/value to remain in the map.
 * We return a single Entry value to the caller to avoid two potential problems:
 *
 * 1) It's easier for callers to retain one value (the Entry) and not two (a key and a value).
 * 2) Key values are tested for `isEqual` equality.  If if a caller asks for a key "A" that is equal to a key "B"
 *    already in the map, then we need the caller to retain key "B" and not key "A".  Returning an Entry simplifies
 *    the semantics.
 *
 * The underlying storage is a hash table and the Key type should implement `hash` and `isEqual:`.
 */
AS_SUBCLASSING_RESTRICTED
@interface ASWeakMap<__covariant Key, Value> : NSObject

/**
 * Read from the cache.  The Value object is accessible from the returned ASWeakMapEntry.
 */
- (nullable ASWeakMapEntry<Value> *)entryForKey:(Key)key AS_WARN_UNUSED_RESULT;

/**
 * Put a value into the cache.  If an entry with an equal key already exists, then the value is updated on the existing entry.
 */
- (ASWeakMapEntry<Value> *)setObject:(Value)value forKey:(Key)key AS_WARN_UNUSED_RESULT;

@end


NS_ASSUME_NONNULL_END
