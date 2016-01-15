//
//  ViewController.m
//  ArchiveDemo
//
//  Created by DingDing on 16/1/153.
//  Copyright © 2016年 奶豆. All rights reserved.
//

#import "ViewController.h"
#import "ArticleModel.h"

@interface ViewController ()

@property (nonatomic, strong) ArticleModel *articleModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (IBAction)ArchiveMethod:(id)sender
{
    self.articleModel.title = _titleField.text;
    
    self.articleModel.content = _contentTextView.text;
    
    [NSKeyedArchiver archiveRootObject:self.articleModel toFile:[self docPath]];
}

- (IBAction)UnArchiveMethod:(id)sender
{
    self.articleModel = [NSKeyedUnarchiver unarchiveObjectWithFile:[self docPath]];
    
    _titleField.text = _articleModel.title;
    _contentTextView.text = _articleModel.content;
}

- (NSString *)docPath
{
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    docPath = [docPath stringByAppendingPathComponent:@"ArticleFile"];
    
    NSLog(@"归档地址： %@", docPath);
    
    return docPath;
}

#pragma mark - setters and getters
/*
- (void)setTitleField:(UITextField *)titleField
{
    _titleField = titleField;
    
    self.articleModel.title = _titleField.text;
}

- (void)setContentTextView:(UITextView *)contentTextView
{
    _contentTextView = contentTextView;
    
    self.articleModel.content = _contentTextView.text;
}
 */

- (ArticleModel *)articleModel
{
    if (!_articleModel) {
        _articleModel = [[ArticleModel alloc] init];
    }
    
    return _articleModel;
}

@end
