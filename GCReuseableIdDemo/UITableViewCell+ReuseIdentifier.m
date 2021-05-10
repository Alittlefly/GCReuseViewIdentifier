//
//  UITableViewCell+ReuseIdentifier.m
//  GCReuseableIdDemo'

//
//  Created by gaochao on 2021/5/10.
//

#import "UITableViewCell+ReuseIdentifier.h"

@implementation UITableViewCell (ReuseIdentifier)

+ (void)registerNibIn:(UITableView *)tableView bundle:(nullable NSBundle *)bundle {
    NSString *classNameId = NSStringFromClass(self);
    [tableView registerNib:[UINib nibWithNibName:classNameId bundle:bundle] forCellReuseIdentifier:classNameId];
}

+ (void)registerClassIn:(UITableView *)tableView {
    NSString *classNameId = NSStringFromClass(self);
    [tableView registerClass:self forCellReuseIdentifier:classNameId];
}

+ (instancetype)dequeueReuseableCellIn:(UITableView *)tableView {
    NSString *classNameId = NSStringFromClass(self);
    return [tableView dequeueReusableCellWithIdentifier:classNameId];
}

+ (instancetype)dequeueReuseableCellIn:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    NSString *classNameId = NSStringFromClass(self);
    return [tableView dequeueReusableCellWithIdentifier:classNameId forIndexPath:indexPath];
}
@end
