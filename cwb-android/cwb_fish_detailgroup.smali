.class public Lorg/cwb/cwb_fish_detailgroup;
.super Landroid/app/ActivityGroup;
.source "cwb_fish_detailgroup.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private page1:Landroid/widget/ImageView;

.field private page2:Landroid/widget/ImageView;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_fish_detailgroup;)Landroid/widget/ViewFlipper;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 92
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->launchBackKey()V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/cwb/cwb_fish_detailgroup;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 103
    const/4 v0, 0x1

    .line 104
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public launchBackKey()V
    .registers 5

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, graphicIntent:Landroid/content/Intent;
    const-string v1, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "class_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cwb_graphic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "group_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v1, "view_layer_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_fish_detailgroup;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/high16 v10, 0x400

    const/16 v9, 0x8

    .line 29
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v6, 0x7f030013

    invoke-virtual {p0, v6}, Lorg/cwb/cwb_fish_detailgroup;->setContentView(I)V

    .line 32
    sput-object p0, Lorg/cwb/cwb_constants;->fishDetailGroup:Landroid/app/ActivityGroup;

    .line 34
    new-instance v6, Landroid/view/GestureDetector;

    invoke-direct {v6, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->detector:Landroid/view/GestureDetector;

    .line 35
    const v6, 0x7f0800cf

    invoke-virtual {p0, v6}, Lorg/cwb/cwb_fish_detailgroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewFlipper;

    iput-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 37
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/cwb/cwb_fish_2012mar_nearsea;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "graphic_cityid"

    .line 40
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "graphic_cityid"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v6

    const-string v7, "cwb_fish_2012mar_nearsea"

    invoke-virtual {v6, v7, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 45
    .local v4, view:Landroid/view/View;
    const v6, 0x186a1

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 47
    iget-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v4}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 49
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/cwb/cwb_fish_2012mar_tides;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, intent2:Landroid/content/Intent;
    const-string v6, "graphic_cityid"

    .line 52
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "graphic_cityid"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v6, "graphic_cityname"

    .line 54
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "graphic_cityname"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v6

    const-string v7, "cwb_fish_2012mar_tides"

    invoke-virtual {v6, v7, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v6

    .line 57
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 59
    .local v5, view2:Landroid/view/View;
    const v6, 0x186a2

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 60
    iget-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v5}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 63
    iget-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ViewFlipper;->setLongClickable(Z)V

    .line 66
    const v6, 0x7f0800d1

    invoke-virtual {p0, v6}, Lorg/cwb/cwb_fish_detailgroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->page1:Landroid/widget/ImageView;

    .line 67
    iget-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->page1:Landroid/widget/ImageView;

    const v7, 0x7f0200b0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    const v6, 0x7f0800d2

    invoke-virtual {p0, v6}, Lorg/cwb/cwb_fish_detailgroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->page2:Landroid/widget/ImageView;

    .line 69
    iget-object v6, p0, Lorg/cwb/cwb_fish_detailgroup;->page2:Landroid/widget/ImageView;

    const v7, 0x7f0200b1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    const v6, 0x7f0800d3

    invoke-virtual {p0, v6}, Lorg/cwb/cwb_fish_detailgroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 71
    .local v2, page3:Landroid/widget/ImageView;
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    const v6, 0x7f0800d4

    invoke-virtual {p0, v6}, Lorg/cwb/cwb_fish_detailgroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 74
    .local v3, page4:Landroid/widget/ImageView;
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 113
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
    const v6, 0x186a2

    const v5, 0x7f0200b1

    const v4, 0x7f0200b0

    const/4 v2, 0x1

    .line 151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "onFling"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x42f0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_92

    .line 153
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 155
    const/high16 v3, 0x7f04

    .line 154
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 153
    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 156
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 158
    const v3, 0x7f040001

    .line 157
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 156
    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 160
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 162
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v6, :cond_87

    .line 164
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v3, "cwb_fish_2012mar_tides"

    invoke-virtual {v1, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 163
    check-cast v1, Lorg/cwb/cwb_fish_2012mar_tides;

    .line 164
    invoke-virtual {v1}, Lorg/cwb/cwb_fish_2012mar_tides;->getDataSize()I

    move-result v1

    .line 163
    if-nez v1, :cond_7b

    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u66ab\u7121\u8cc7\u6599\uff0c\u8acb\u9078\u64c7\u5176\u4ed6\u6d77\u57df"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 167
    const-string v3, "OK"

    new-instance v4, Lorg/cwb/cwb_fish_detailgroup$1;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_fish_detailgroup$1;-><init>(Lorg/cwb/cwb_fish_detailgroup;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v1, v2

    .line 231
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_7a
    return v1

    .line 184
    :cond_7b
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->page1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->page2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_85
    move v1, v2

    .line 192
    goto :goto_7a

    .line 187
    :cond_87
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->page1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->page2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_85

    .line 193
    :cond_92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, -0x3d10

    cmpg-float v1, v1, v3

    if-gez v1, :cond_116

    .line 194
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 196
    const v3, 0x7f040002

    .line 195
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 194
    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 197
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 199
    const v3, 0x7f040003

    .line 198
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 197
    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 202
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v6, :cond_10b

    .line 204
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_detailgroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v3, "cwb_fish_2012mar_tides"

    invoke-virtual {v1, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 203
    check-cast v1, Lorg/cwb/cwb_fish_2012mar_tides;

    .line 204
    invoke-virtual {v1}, Lorg/cwb/cwb_fish_2012mar_tides;->getDataSize()I

    move-result v1

    .line 203
    if-nez v1, :cond_fe

    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u66ab\u7121\u8cc7\u6599\uff0c\u8acb\u9078\u64c7\u5176\u4ed6\u6d77\u57df"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 207
    const-string v3, "OK"

    new-instance v4, Lorg/cwb/cwb_fish_detailgroup$2;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_fish_detailgroup$2;-><init>(Lorg/cwb/cwb_fish_detailgroup;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v1, v2

    .line 221
    goto/16 :goto_7a

    .line 223
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_fe
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->page1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->page2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_108
    move v1, v2

    .line 229
    goto/16 :goto_7a

    .line 226
    :cond_10b
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->page1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v1, p0, Lorg/cwb/cwb_fish_detailgroup;->page2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_108

    .line 231
    :cond_116
    const/4 v1, 0x0

    goto/16 :goto_7a
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 122
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 136
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method
