//
//  UICollectionViewCell+Reuseidentifier.h
//  GCReuseableIdDemo
//
//  Created by gaochao on 2021/5/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionViewCell (Reuseidentifier)

+ (void)registerNibIn:(UICollectionView *)collectionView bundle:(nullable NSBundle *)bundle;

+ (void)registerClassIn:(UICollectionView *)collectionView;
+ (instancetype)dequeueReuseableCellIn:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
