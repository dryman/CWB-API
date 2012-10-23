.class public Lorg/cwb/cwb_main_group;
.super Landroid/app/ActivityGroup;
.source "cwb_main_group.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static Group:Lorg/cwb/cwb_main_group;

.field private static dialog:Landroid/app/ProgressDialog;


# instance fields
.field private activityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private detector:Landroid/view/GestureDetector;

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private myHandler:Landroid/os/Handler;

.field private page1:Landroid/widget/ImageView;

.field private page2:Landroid/widget/ImageView;

.field private view:Landroid/view/View;

.field private view2:Landroid/view/View;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_main_group;->activityList:Ljava/util/ArrayList;

    .line 305
    new-instance v0, Lorg/cwb/cwb_main_group$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_main_group$1;-><init>(Lorg/cwb/cwb_main_group;)V

    iput-object v0, p0, Lorg/cwb/cwb_main_group;->myHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_main_group;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->activityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cwb/cwb_main_group;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->page1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_main_group;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->page2:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static dismissDialog()V
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 157
    sget-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    .line 159
    return-void
.end method

.method public static showDialog()V
    .registers 2

    .prologue
    .line 148
    sget-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_d

    .line 149
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    .line 150
    :cond_d
    sget-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    sget-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 152
    sget-object v0, Lorg/cwb/cwb_main_group;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 153
    return-void
.end method


# virtual methods
.method public addViewHistory(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 126
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 165
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 166
    const/4 v0, 0x1

    .line 167
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public getViewHistory()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/high16 v8, 0x400

    const/16 v6, 0x8

    const/4 v7, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/cwb/cwb_main_group;->history:Ljava/util/ArrayList;

    .line 40
    sput-object p0, Lorg/cwb/cwb_main_group;->Group:Lorg/cwb/cwb_main_group;

    .line 44
    invoke-virtual {p0}, Lorg/cwb/cwb_main_group;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, contentView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_main_group;->setContentView(Landroid/view/View;)V

    .line 47
    const v3, 0x7f0800d1

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_group;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lorg/cwb/cwb_main_group;->page1:Landroid/widget/ImageView;

    .line 48
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->page1:Landroid/widget/ImageView;

    const v4, 0x7f0200b0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    const v3, 0x7f0800d2

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_group;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lorg/cwb/cwb_main_group;->page2:Landroid/widget/ImageView;

    .line 50
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->page2:Landroid/widget/ImageView;

    const v4, 0x7f0200b1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    const v3, 0x7f0800d3

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_group;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 52
    .local v1, page3:Landroid/widget/ImageView;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    const v3, 0x7f0800d4

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_group;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 54
    .local v2, page4:Landroid/widget/ImageView;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lorg/cwb/cwb_main_group;->detector:Landroid/view/GestureDetector;

    .line 60
    const v3, 0x7f0800cf

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_group;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 62
    invoke-virtual {p0}, Lorg/cwb/cwb_main_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const-string v4, "cwb_main_2012mar"

    .line 63
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lorg/cwb/cwb_main_2012mar;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 62
    invoke-virtual {v3, v4, v5}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 62
    iput-object v3, p0, Lorg/cwb/cwb_main_group;->view:Landroid/view/View;

    .line 65
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->view:Landroid/view/View;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->activityList:Ljava/util/ArrayList;

    const-string v4, "cwb_main_2012mar"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lorg/cwb/cwb_main_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const-string v4, "cwb_lastActivity_2012mar"

    .line 69
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lorg/cwb/cwb_lastActivity_2012mar;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 68
    invoke-virtual {v3, v4, v5}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 68
    iput-object v3, p0, Lorg/cwb/cwb_main_group;->view2:Landroid/view/View;

    .line 71
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->view2:Landroid/view/View;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->activityList:Ljava/util/ArrayList;

    const-string v4, "cwb_lastActivity_2012mar"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->view:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    .line 75
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->view2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    .line 77
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lorg/cwb/cwb_main_group;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 78
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lorg/cwb/cwb_main_group;->view2:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 82
    iget-object v3, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v7}, Landroid/widget/ViewFlipper;->setLongClickable(Z)V

    .line 85
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_main_group;->addViewHistory(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "ev1"
    .parameter "ev2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const-wide/16 v5, 0x2bc

    const/4 v3, 0x1

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x42f0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_52

    .line 217
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 219
    const/high16 v4, 0x7f04

    .line 218
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 217
    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 222
    const v4, 0x7f040001

    .line 221
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 220
    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 224
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, index:I
    add-int/lit8 v0, v0, 0x1

    .line 226
    if-le v0, v3, :cond_3e

    .line 227
    const/4 v0, 0x0

    .line 229
    :cond_3e
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->showNext()V

    .line 231
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 232
    .local v1, msg:Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 233
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v3

    .line 301
    .end local v0           #index:I
    .end local v1           #msg:Landroid/os/Message;
    :goto_51
    return v2

    .line 259
    :cond_52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    const/high16 v4, -0x3d10

    cmpg-float v2, v2, v4

    if-gez v2, :cond_a2

    .line 260
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 262
    const v4, 0x7f040002

    .line 261
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 260
    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 263
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 265
    const v4, 0x7f040003

    .line 264
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 263
    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 268
    .restart local v0       #index:I
    add-int/lit8 v0, v0, -0x1

    .line 269
    if-gez v0, :cond_8e

    .line 270
    const/4 v0, 0x1

    .line 272
    :cond_8e
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 274
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 275
    .restart local v1       #msg:Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 276
    iget-object v2, p0, Lorg/cwb/cwb_main_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v3

    .line 299
    goto :goto_51

    .line 301
    .end local v0           #index:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_a2
    const/4 v2, 0x0

    goto :goto_51
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 185
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 95
    iget-object v1, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, index:I
    packed-switch v0, :pswitch_data_4a

    .line 117
    :goto_16
    return-void

    .line 99
    :pswitch_17
    invoke-virtual {p0}, Lorg/cwb/cwb_main_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 100
    iget-object v1, p0, Lorg/cwb/cwb_main_group;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 98
    check-cast v1, Lorg/cwb/cwb_main_2012mar;

    .line 100
    invoke-virtual {v1}, Lorg/cwb/cwb_main_2012mar;->onResume()V

    goto :goto_16

    .line 109
    :pswitch_2d
    iget-object v1, p0, Lorg/cwb/cwb_main_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 111
    invoke-virtual {p0}, Lorg/cwb/cwb_main_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 112
    iget-object v1, p0, Lorg/cwb/cwb_main_group;->activityList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 110
    check-cast v1, Lorg/cwb/cwb_main_2012mar;

    .line 112
    invoke-virtual {v1}, Lorg/cwb/cwb_main_2012mar;->onResume()V

    goto :goto_16

    .line 96
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_2d
    .end packed-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 199
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllView()V
    .registers 1

    .prologue
    .line 137
    return-void
.end method

.method public removeLastChild()Landroid/view/View;
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    .line 141
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->history:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cwb/cwb_main_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    :cond_16
    iget-object v0, p0, Lorg/cwb/cwb_main_group;->history:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cwb/cwb_main_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
