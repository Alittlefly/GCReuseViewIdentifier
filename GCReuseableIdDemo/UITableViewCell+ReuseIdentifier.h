//
//  UITableViewCell+ReuseIdentifier.h
//  GCReuseableIdDemo
//
//  Created by gaochao on 2021/5/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableViewCell (ReuseIdentifier)

+ (void)registerNibIn:(UITableView *)tableView bundle:(nullable NSBundle *)bundle;

+ (void)registerClassIn:(UITableView *)tableView;

+ (instancetype)dequeueReuseableCellIn:(UITableView *)tableView;

+ (instancetype)dequeueReuseableCellIn:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
