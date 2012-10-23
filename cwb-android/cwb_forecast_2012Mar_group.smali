.class public Lorg/cwb/cwb_forecast_2012Mar_group;
.super Landroid/app/ActivityGroup;
.source "cwb_forecast_2012Mar_group.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static Group:Lorg/cwb/cwb_forecast_2012Mar_group;

.field private static dialog:Landroid/app/ProgressDialog;

.field public static listView:Lorg/cwb/view/DraggableListView;

.field public static scrollView:Landroid/widget/HorizontalScrollView;

.field public static self:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

.field public static self2:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

.field private static viewFlipper:Landroid/widget/ViewFlipper;


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

.field private page3:Landroid/widget/ImageView;

.field private page4:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 176
    const/4 v0, 0x0

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    .line 385
    new-instance v0, Lorg/cwb/cwb_forecast_2012Mar_group$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_forecast_2012Mar_group$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_group;)V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_2012Mar_group;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lorg/cwb/cwb_forecast_2012Mar_group;->updateData(II)V

    return-void
.end method

.method public static dismissDialog()V
    .registers 1

    .prologue
    .line 186
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 187
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 188
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    .line 189
    return-void
.end method

.method public static showDialog()V
    .registers 2

    .prologue
    .line 178
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_d

    .line 179
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    .line 180
    :cond_d
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 182
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 183
    return-void
.end method

.method private updateData(II)V
    .registers 6
    .parameter "index"
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 396
    const/4 v0, 0x2

    if-ne p2, v0, :cond_a

    .line 397
    add-int/lit8 p1, p1, -0x1

    .line 398
    if-gez p1, :cond_a

    .line 399
    const/4 p1, 0x3

    .line 401
    :cond_a
    if-ne p2, v2, :cond_12

    .line 402
    add-int/lit8 p1, p1, 0x1

    .line 403
    const/4 v0, 0x3

    if-le p1, v0, :cond_12

    .line 404
    const/4 p1, 0x0

    .line 407
    :cond_12
    packed-switch p1, :pswitch_data_78

    .line 439
    :goto_15
    return-void

    .line 411
    :pswitch_16
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 412
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 410
    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    .line 412
    invoke-virtual {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->getData()V

    goto :goto_15

    .line 416
    :pswitch_2c
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->scrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_35

    .line 417
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 422
    :cond_35
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 423
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 421
    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    .line 423
    invoke-virtual {v0, v2}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getData(Z)V

    goto :goto_15

    .line 429
    :pswitch_4b
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 430
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 428
    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;

    .line 430
    invoke-virtual {v0, v2}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getData(Z)V

    goto :goto_15

    .line 435
    :pswitch_61
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 436
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 434
    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_graphic;

    .line 436
    invoke-virtual {v0, v2}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getData(Z)V

    goto :goto_15

    .line 407
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_16
        :pswitch_2c
        :pswitch_4b
        :pswitch_61
    .end packed-switch
.end method


# virtual methods
.method public addViewHistory(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 165
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 195
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->listView:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v0}, Lorg/cwb/view/DraggableListView;->isDraggingNow()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 196
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_group;->self:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-virtual {v0, p1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 199
    :goto_e
    return v0

    .line 197
    :cond_f
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 198
    const/4 v0, 0x1

    goto :goto_e

    .line 199
    :cond_19
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e
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
    .line 161
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method public goNext()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 443
    sget-object v1, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 445
    sget-object v1, Lorg/cwb/cwb_forecast_2012Mar_group;->scrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_f

    .line 446
    sget-object v1, Lorg/cwb/cwb_forecast_2012Mar_group;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 454
    :cond_f
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 455
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 456
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 457
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->history:Ljava/util/ArrayList;

    .line 48
    sput-object p0, Lorg/cwb/cwb_forecast_2012Mar_group;->Group:Lorg/cwb/cwb_forecast_2012Mar_group;

    .line 50
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030013

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, firstView:Landroid/view/View;
    invoke-virtual {p0, v3}, Lorg/cwb/cwb_forecast_2012Mar_group;->setContentView(Landroid/view/View;)V

    .line 54
    new-instance v10, Landroid/view/GestureDetector;

    invoke-direct {v10, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->detector:Landroid/view/GestureDetector;

    .line 55
    const v10, 0x7f0800cf

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_forecast_2012Mar_group;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ViewFlipper;

    sput-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 56
    sget-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 57
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 58
    sget-object v12, Lorg/cwb/cwb_constants;->defaultWeatherBackground:Ljava/lang/String;

    const-string v13, "drawable"

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 57
    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 56
    invoke-virtual {v10, v11}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 59
    sget-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    sput-object v10, Lorg/cwb/cwb_constants;->flipperView:Landroid/view/View;

    .line 60
    sput-object p0, Lorg/cwb/cwb_constants;->forecast_group:Landroid/app/Activity;

    .line 64
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v10

    const-string v11, "cwb_forecast_2012Mar_addFavorite"

    .line 65
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-direct {v12, p0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const/high16 v13, 0x400

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    .line 64
    invoke-virtual {v10, v11, v12}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v10

    .line 66
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 67
    .local v6, view:Landroid/view/View;
    const-string v10, "0"

    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    const-string v11, "cwb_forecast_2012Mar_addFavorite"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v10, v6}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v10

    const-string v11, "cwb_forecast_2012Mar_every3hour"

    .line 73
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    invoke-direct {v12, p0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const/high16 v13, 0x400

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    .line 72
    invoke-virtual {v10, v11, v12}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v10

    .line 74
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 75
    .local v7, view2:Landroid/view/View;
    const-string v10, "1"

    invoke-virtual {v7, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    const-string v11, "cwb_forecast_2012Mar_every3hour"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v10, v7}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v10

    const-string v11, "cwb_forecast_2012Mar_oneweek"

    .line 81
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lorg/cwb/cwb_forecast_2012Mar_oneweek;

    invoke-direct {v12, p0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const/high16 v13, 0x400

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    .line 80
    invoke-virtual {v10, v11, v12}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v10

    .line 82
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 83
    .local v8, view3:Landroid/view/View;
    const-string v10, "2"

    invoke-virtual {v8, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    const-string v11, "cwb_forecast_2012Mar_oneweek"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v10, v8}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v10

    const-string v11, "cwb_forecast_2012Mar_graphic"

    .line 90
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lorg/cwb/cwb_forecast_2012Mar_graphic;

    invoke-direct {v12, p0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const/high16 v13, 0x400

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    .line 89
    invoke-virtual {v10, v11, v12}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v10

    .line 91
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 92
    .local v9, view4:Landroid/view/View;
    const-string v10, "3"

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->activityList:Ljava/util/ArrayList;

    const-string v11, "cwb_forecast_2012Mar_graphic"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v10, v9}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 97
    sget-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ViewFlipper;->setLongClickable(Z)V

    .line 101
    const v10, 0x7f0800d1

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_forecast_2012Mar_group;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    .line 102
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    const v11, 0x7f0200b0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    const v10, 0x7f0800d2

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_forecast_2012Mar_group;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    .line 104
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    const v11, 0x7f0200b1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    const v10, 0x7f0800d3

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_forecast_2012Mar_group;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    .line 106
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    const v11, 0x7f0200b1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    const v10, 0x7f0800d4

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_forecast_2012Mar_group;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    .line 108
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    const v11, 0x7f0200b1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    invoke-virtual {p0, v3}, Lorg/cwb/cwb_forecast_2012Mar_group;->addViewHistory(Landroid/view/View;)V

    .line 117
    const-string v10, "favoriteList"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lorg/cwb/cwb_forecast_2012Mar_group;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 118
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v10, "favoCity"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, favoList:Ljava/lang/String;
    if-eqz v1, :cond_1bf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-le v10, v11, :cond_1bf

    .line 120
    const-string v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, favoListToken:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v2, v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, data:[Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v0, v10

    sput-object v10, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    .line 126
    sget-object v10, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v10}, Landroid/widget/ViewFlipper;->showNext()V

    .line 128
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 129
    .local v4, msg:Landroid/os/Message;
    const/4 v10, 0x0

    iput v10, v4, Landroid/os/Message;->arg1:I

    .line 130
    const/4 v10, 0x1

    iput v10, v4, Landroid/os/Message;->arg2:I

    .line 131
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x2bc

    invoke-virtual {v10, v4, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    const v11, 0x7f0200b1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    const v11, 0x7f0200b0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #favoListToken:[Ljava/lang/String;
    .end local v4           #msg:Landroid/os/Message;
    :cond_1bf
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16
    .parameter "ev1"
    .parameter "ev2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const-wide/16 v9, 0x2bc

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v8, 0x7f0200b0

    const v7, 0x7f0200b1

    .line 256
    sget-boolean v5, Lorg/cwb/cwb_constants;->canFlip:Z

    if-nez v5, :cond_2c

    .line 257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "\u8acb\u52a0\u5165\u57ce\u5e02"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 259
    const-string v5, "OK"

    new-instance v6, Lorg/cwb/cwb_forecast_2012Mar_group$2;

    invoke-direct {v6, p0}, Lorg/cwb/cwb_forecast_2012Mar_group$2;-><init>(Lorg/cwb/cwb_forecast_2012Mar_group;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 263
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 382
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2b
    :goto_2b
    return v3

    .line 269
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/high16 v6, 0x4396

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const v6, 0x44048000

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5e

    .line 270
    sget-object v5, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 271
    sget-object v4, Lorg/cwb/cwb_forecast_2012Mar_group;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 272
    sget-object v4, Lorg/cwb/cwb_forecast_2012Mar_group;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->requestFocusFromTouch()Z

    goto :goto_2b

    .line 276
    :cond_5e
    sget-object v5, Lorg/cwb/cwb_forecast_2012Mar_group;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->clearFocus()V

    .line 279
    :cond_63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x42f0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_10d

    .line 280
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 282
    const/high16 v5, 0x7f04

    .line 281
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 280
    invoke-virtual {v3, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 283
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 285
    const v5, 0x7f040001

    .line 284
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 283
    invoke-virtual {v3, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 287
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, index:I
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showNext()V

    .line 290
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 291
    .local v2, msg:Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 292
    iput v4, v2, Landroid/os/Message;->arg2:I

    .line 293
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 296
    add-int/lit8 v1, v1, 0x1

    .line 297
    const/4 v3, 0x3

    if-le v1, v3, :cond_b3

    .line 298
    const/4 v1, 0x0

    .line 299
    :cond_b3
    packed-switch v1, :pswitch_data_1b8

    :goto_b6
    move v3, v4

    .line 329
    goto/16 :goto_2b

    .line 301
    :pswitch_b9
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b6

    .line 307
    :pswitch_ce
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b6

    .line 313
    :pswitch_e3
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b6

    .line 319
    :pswitch_f8
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b6

    .line 330
    .end local v1           #index:I
    .end local v2           #msg:Landroid/os/Message;
    :cond_10d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, -0x3d10

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2b

    .line 331
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 333
    const v5, 0x7f040002

    .line 332
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 331
    invoke-virtual {v3, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 334
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 336
    const v5, 0x7f040003

    .line 335
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 334
    invoke-virtual {v3, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 338
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 339
    .restart local v1       #index:I
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 342
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 343
    .restart local v2       #msg:Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 344
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 345
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    add-int/lit8 v1, v1, -0x1

    .line 348
    if-gez v1, :cond_15e

    .line 349
    const/4 v1, 0x3

    .line 350
    :cond_15e
    packed-switch v1, :pswitch_data_1c4

    :goto_161
    move v3, v4

    .line 380
    goto/16 :goto_2b

    .line 352
    :pswitch_164
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_161

    .line 358
    :pswitch_179
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_161

    .line 364
    :pswitch_18e
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_161

    .line 370
    :pswitch_1a3
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page3:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->page4:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_161

    .line 299
    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_ce
        :pswitch_e3
        :pswitch_f8
    .end packed-switch

    .line 350
    :pswitch_data_1c4
    .packed-switch 0x0
        :pswitch_164
        :pswitch_179
        :pswitch_18e
        :pswitch_1a3
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 217
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 146
    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 148
    const/4 v2, 0x1

    sput-boolean v2, Lorg/cwb/cwb_constants;->nowFirstTimeInitial:Z

    .line 150
    sget-object v2, Lorg/cwb/cwb_forecast_2012Mar_group;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, index:I
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 153
    .local v1, msg:Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 154
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 155
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->myHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    .end local v0           #index:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_30
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 231
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public removeLastChild()Landroid/view/View;
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    .line 170
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->history:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    :cond_16
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->history:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
