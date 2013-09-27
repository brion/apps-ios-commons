//
//  UILabel+ResizeWithAttributes.m
//  Commons-iOS
//
//  Created by MONTE HURD on 5/25/13.

#import "UILabel+ResizeWithAttributes.h"

@implementation UILabel (ResizeWithAttributes)

// Applies attributes to the label's current text adjusting the label size to fit its newly attributed text
// Should work very nicely for i18n cases where text length varies

-(void)resizeWithAttributes:(NSDictionary *)attributes preferredMaxLayoutWidth:(CGFloat)width
{
	self.numberOfLines = 0; // zero means use as many as needed
    self.preferredMaxLayoutWidth = width;
	self.attributedText = [[NSAttributedString alloc] initWithString: self.text attributes: attributes];
}

@end
