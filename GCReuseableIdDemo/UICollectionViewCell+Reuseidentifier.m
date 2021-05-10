//
//  UICollectionViewCell+Reuseidentifier.m
//  GCReuseableIdDemo
//
//  Created by gaochao on 2021/5/10.
//

#import "UICollectionViewCell+Reuseidentifier.h"

@implementation UICollectionViewCell (Reuseidentifier)

+ (void)registerNibIn:(UICollectionView *)collectionView bundle:(nullable NSBundle *)bundle {
    NSString *classNameId = NSStringFromClass(self);
    [collectionView registerNib:[UINib nibWithNibName:classNameId bundle:bundle] forCellWithReuseIdentifier:classNameId];
}

+ (void)registerClassIn:(UICollectionView *)collectionView {
    NSString *classNameId = NSStringFromClass(self);
    [collectionView registerClass:self forCellWithReuseIdentifier:classNameId];
}

+ (instancetype)dequeueReuseableCellIn:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    NSString *classNameId = NSStringFromClass(self);
    return [collectionView dequeueReusableCellWithReuseIdentifier:classNameId forIndexPath:classNameId];
}
@end
