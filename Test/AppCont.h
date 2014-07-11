//
//  AppCont.h
//  Test
//
//  Created by chenliangjie on 14-6-14.
//  Copyright (c) 2014年 TEST. All rights reserved.
//

#ifndef Test_AppCont_h
#define Test_AppCont_h

#define ISIPHONE5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#endif
