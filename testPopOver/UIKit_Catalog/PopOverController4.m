//
//  PopOverController.m
//  UIKit_Catalog
//
//  Created by KentarOu on 2014/10/08.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "PopOverController4.h"

@interface PopOverController4 ()<UIWebViewDelegate>


@end

@implementation PopOverController4

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"https://www.apple.com/jp/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [_mainWebView loadRequest:request];
}


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    
    // リンク先によって処理を分けるならここで書く
    
    return YES;
}

-(void)webViewDidStartLoad:(UIWebView*)webView
{
    // Statue Bar のインジケーター表示
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

-(void)webViewDidFinishLoad:(UIWebView*)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    

    // WebViewが初期表示時に拡大表示される対応
    CGSize contentSize = _mainWebView.scrollView.contentSize;
    CGSize viewSize = _mainWebView.frame.size;
    
    float scale = viewSize.width / contentSize.width;
    if (scale < 0.9) {
        NSLog(@"Zoom out fix for web view: %f", scale);
        _mainWebView.scrollView.zoomScale = scale;
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}





@end
