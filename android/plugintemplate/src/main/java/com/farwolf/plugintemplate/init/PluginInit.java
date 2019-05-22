package com.farwolf.plugintemplate.init;

import android.content.Context;

import com.farwolf.weex.annotation.ModuleEntry;

@ModuleEntry
public class PluginInit {


    //**方法明和参数固定，框架会根据反射执行此函数，context 为application类型
    //**如果有第三方需要初始化，请在此处执行
    public  void init(Context context)
    {



    }
}
