package com.weexplus.plugin.component;

import android.content.Context;
import android.support.annotation.NonNull;

import com.weexplus.plugin.view.DemoView;
import com.farwolf.weex.annotation.WeexComponent;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.ui.action.BasicComponentData;
import com.taobao.weex.ui.component.WXComponent;
import com.taobao.weex.ui.component.WXVContainer;

//name:在vue中标签的名字
@WeexComponent(name="demo")
public class WXDemoComponent extends WXComponent<DemoView> {
    public WXDemoComponent(WXSDKInstance instance, WXVContainer parent, BasicComponentData basicComponentData) {
        super(instance, parent, basicComponentData);
    }

    @Override
    protected DemoView initComponentHostView(@NonNull Context context) {
        return new DemoView(context);
    }

    //此函数用来初始化
    @Override
    protected void onHostViewInitialized(DemoView host) {
        super.onHostViewInitialized(host);

    }


    //**组件的方法只支持异步，不支持同步，请用callback接收值
    @JSMethod
    public void getData(JSCallback callback){

    }


}
