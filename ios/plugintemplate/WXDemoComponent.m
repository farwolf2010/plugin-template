//
//  WXDemoComponent.m
//  AFNetworking
//
//  Created by 郑江荣 on 2019/5/29.
//

#import "WXDemoComponent.h"
//注册组件名称为demo
WX_PlUGIN_EXPORT_COMPONENT(demo, WXDemoComponent)


@implementation WXDemoComponent
    //组件也可以暴露方法，在前端用this.$refs.demo.log()调用，注意不能导出同步方法，如果y想要返回值，请传入callback
    WX_EXPORT_METHOD(@selector(log))
    
    //构造函数，请在这将属性取下来，并在viewDidLoad中做首次渲染
   - (instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance
    {
        if (self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance]) {
        }
        
        //     UIFont *font = [WXUtility fontWithSize:_fontSize textWeight:_fontWeight textStyle:_fontStyle fontFamily:_fontFamily scaleFactor:self.weexInstance.pixelScaleFactor useCoreText:[self useCoreText]];
        return self;
    }
    
    //初始化完成调用
    -(void)viewDidLoad{
        [super viewDidLoad];
    }
    
     //属性值发生变化，请在这里做界面渲染操作
    -(void)updateAttributes:(NSDictionary *)attributes{
        [super updateAttributes:attributes];
    }
    
    //可以在这里根据subcomponent类型加载指定类型的子元素，注意这个方法会在viewDidLoad之后调用
    -(void)insertSubview:(WXComponent *)subcomponent atIndex:(NSInteger)index
    {
        [super insertSubview:subcomponent atIndex:index];
    }
    -(void)log{
        NSLog(@"log");
    }
    
    
    
@end
