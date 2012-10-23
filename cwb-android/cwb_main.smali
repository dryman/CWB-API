.class public Lorg/cwb/cwb_main;
.super Lcom/google/android/maps/MapActivity;
.source "cwb_main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_main$getXMLDataAndFindLoc;,
        Lorg/cwb/cwb_main$period_check_Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cwb_main"

.field public static bLoading:Z

.field private static bSelectedFromSearchList:Z

.field static gpsStation:Ljava/lang/String;

.field private static highest:Landroid/widget/TextView;

.field private static highest_title:Landroid/widget/TextView;

.field private static lowest:Landroid/widget/TextView;

.field private static lowest_title:Landroid/widget/TextView;

.field static mFavorStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static screen:I

.field private static temp:Landroid/widget/TextView;

.field private static windPower:Landroid/widget/TextView;

.field private static windPower_title:Landroid/widget/TextView;


# instance fields
.field private avgrain:Landroid/widget/TextView;

.field private favorTitle:Landroid/widget/TextView;

.field private favor_left_arrow_btn:Landroid/widget/ImageButton;

.field private favor_right_arrow_btn:Landroid/widget/ImageButton;

.field private humidity:Landroid/widget/TextView;

.field private location:Landroid/widget/TextView;

.field private mCurrentStation:Ljava/lang/String;

.field private mCwbData:Lorg/cwb/cwb_stationlist;

.field private mCwbPreference:Landroid/content/SharedPreferences;

.field private mFindLocation:Lorg/cwb/cwb_findlocation;

.field private mMonavg:Landroid/widget/TextView;

.field private mReceiver:Lorg/cwb/cwb_main$period_check_Receiver;

.field private mo:Lcom/google/android/maps/MyLocationOverlay;

.field private mv:Lcom/google/android/maps/MapView;

.field private myHandler:Landroid/os/Handler;

.field private pd:Landroid/app/ProgressDialog;

.field private rain:Landroid/widget/TextView;

.field private time:Landroid/widget/TextView;

.field private weather:Landroid/widget/TextView;

.field private weathericon:Landroid/widget/ImageView;

.field private winddir:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sput-boolean v1, Lorg/cwb/cwb_main;->bLoading:Z

    .line 47
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    .line 82
    sput-boolean v1, Lorg/cwb/cwb_main;->bSelectedFromSearchList:Z

    .line 83
    sput v1, Lorg/cwb/cwb_main;->screen:I

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;

    .line 55
    iput-object v1, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    .line 81
    iput-object v1, p0, Lorg/cwb/cwb_main;->pd:Landroid/app/ProgressDialog;

    .line 136
    new-instance v0, Lorg/cwb/cwb_main$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_main$1;-><init>(Lorg/cwb/cwb_main;)V

    iput-object v0, p0, Lorg/cwb/cwb_main;->myHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method private InitialDisplayView()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 463
    sput v5, Lorg/cwb/cwb_main;->screen:I

    .line 465
    const-string v4, "cwb_preference"

    invoke-virtual {p0, v4, v5}, Lorg/cwb/cwb_main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lorg/cwb/cwb_main;->mCwbPreference:Landroid/content/SharedPreferences;

    .line 466
    const v4, 0x7f080008

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->favorTitle:Landroid/widget/TextView;

    .line 468
    const v4, 0x7f08000b

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 469
    .local v0, favor_add_btn:Landroid/widget/ImageButton;
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    const v4, 0x7f080007

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lorg/cwb/cwb_main;->favor_right_arrow_btn:Landroid/widget/ImageButton;

    .line 473
    iget-object v4, p0, Lorg/cwb/cwb_main;->favor_right_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lorg/cwb/cwb_main;->favor_left_arrow_btn:Landroid/widget/ImageButton;

    .line 477
    iget-object v4, p0, Lorg/cwb/cwb_main;->favor_left_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    const v4, 0x7f080009

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 480
    .local v3, searchbtn:Landroid/widget/ImageButton;
    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v4, 0x7f080026

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 484
    .local v2, last24hr:Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    const v4, 0x7f08002a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 487
    .local v1, icon:Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lorg/cwb/cwb_main;->highest_title:Landroid/widget/TextView;

    .line 490
    const v4, 0x7f080022

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lorg/cwb/cwb_main;->lowest_title:Landroid/widget/TextView;

    .line 492
    const v4, 0x7f08000c

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->time:Landroid/widget/TextView;

    .line 493
    const v4, 0x7f08000f

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->location:Landroid/widget/TextView;

    .line 494
    const v4, 0x7f080010

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lorg/cwb/cwb_main;->temp:Landroid/widget/TextView;

    .line 495
    const v4, 0x7f08000e

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->weather:Landroid/widget/TextView;

    .line 497
    const v4, 0x7f080012

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->winddir:Landroid/widget/TextView;

    .line 498
    const v4, 0x7f080014

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lorg/cwb/cwb_main;->windPower:Landroid/widget/TextView;

    .line 499
    const v4, 0x7f080013

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lorg/cwb/cwb_main;->windPower_title:Landroid/widget/TextView;

    .line 501
    const v4, 0x7f08001a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->humidity:Landroid/widget/TextView;

    .line 502
    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->rain:Landroid/widget/TextView;

    .line 504
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lorg/cwb/cwb_main;->highest:Landroid/widget/TextView;

    .line 505
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lorg/cwb/cwb_main;->lowest:Landroid/widget/TextView;

    .line 506
    const v4, 0x7f080025

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->avgrain:Landroid/widget/TextView;

    .line 508
    const v4, 0x7f08000d

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->weathericon:Landroid/widget/ImageView;

    .line 509
    const v4, 0x7f08001f

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/cwb/cwb_main;->mMonavg:Landroid/widget/TextView;

    .line 511
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_main;)Lcom/google/android/maps/MyLocationOverlay;
    .registers 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lorg/cwb/cwb_main;->mo:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 82
    sget-boolean v0, Lorg/cwb/cwb_main;->bSelectedFromSearchList:Z

    return v0
.end method

.method static synthetic access$10(Lorg/cwb/cwb_main;)V
    .registers 1
    .parameter

    .prologue
    .line 382
    invoke-direct {p0}, Lorg/cwb/cwb_main;->initialTitleName()V

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_main;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lorg/cwb/cwb_main;)Lorg/cwb/cwb_stationlist;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    return-object v0
.end method

.method static synthetic access$4(Lorg/cwb/cwb_main;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cwb/cwb_main;)V
    .registers 1
    .parameter

    .prologue
    .line 306
    invoke-direct {p0}, Lorg/cwb/cwb_main;->showMainPageData()V

    return-void
.end method

.method static synthetic access$6(Lorg/cwb/cwb_main;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lorg/cwb/cwb_main;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$7(Lorg/cwb/cwb_main;)Lorg/cwb/cwb_findlocation;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;

    return-object v0
.end method

.method static synthetic access$8(Lorg/cwb/cwb_main;Lorg/cwb/cwb_findlocation;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;

    return-void
.end method

.method static synthetic access$9(Lorg/cwb/cwb_main;)V
    .registers 1
    .parameter

    .prologue
    .line 514
    invoke-direct {p0}, Lorg/cwb/cwb_main;->parserxmlData()V

    return-void
.end method

.method private addFavorStation(Ljava/lang/String;)V
    .registers 8
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, bDuplicated:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_5e

    .line 435
    :goto_b
    if-nez v0, :cond_93

    .line 436
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v3, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 438
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_27
    const-string v2, ""

    .line 440
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2a
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_71

    .line 443
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 444
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "favor_station_list"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 445
    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 449
    .end local v2           #result:Ljava/lang/String;
    :goto_5d
    return-void

    .line 430
    :cond_5e
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 431
    const/4 v0, 0x1

    .line 432
    goto :goto_b

    .line 429
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 441
    .restart local v2       #result:Ljava/lang/String;
    :cond_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 447
    .end local v2           #result:Ljava/lang/String;
    :cond_93
    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_5d
.end method

.method private getFahrenheit(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "temp"

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 454
    .local v0, temp_integer:I
    :try_start_1
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, tempf:Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x4110

    mul-float/2addr v2, v3

    const/high16 v3, 0x40a0

    div-float/2addr v2, v3

    const/high16 v3, 0x4200

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_24

    move-result v0

    .line 460
    .end local v1           #tempf:Ljava/lang/Float;
    :goto_1f
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 457
    :catch_24
    move-exception v2

    goto :goto_1f
.end method

.method private initialTitleName()V
    .registers 7

    .prologue
    .line 384
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 385
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 391
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbPreference:Landroid/content/SharedPreferences;

    const-string v4, "favor_station_list"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_28

    .line 393
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_22
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 401
    .end local v2           #st:Ljava/util/StringTokenizer;
    :cond_28
    sget-object v3, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    if-eqz v3, :cond_46

    sget-object v3, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_46

    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    sget-object v4, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 402
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    sget-object v4, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_46
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_57

    .line 406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4f
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_79

    .line 411
    .end local v1           #i:I
    :cond_57
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 412
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 414
    :cond_69
    invoke-direct {p0}, Lorg/cwb/cwb_main;->updateArrowVisible()V

    .line 415
    return-void

    .line 395
    .restart local v2       #st:Ljava/util/StringTokenizer;
    :cond_6d
    sget-object v4, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 407
    .end local v2           #st:Ljava/util/StringTokenizer;
    .restart local v1       #i:I
    :cond_79
    sget-object v4, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f
.end method

.method private parserxmlData()V
    .registers 10

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 518
    .local v0, documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    :try_start_1
    new-instance v4, Ljava/net/URL;

    const-string v5, "http://www.cwb.gov.tw/wwwgis/kml/auth_obs.xml"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 519
    .local v4, url:Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 520
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 521
    .local v3, mDocument:Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    .line 524
    iget-object v5, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v5, v3}, Lorg/cwb/cwb_stationlist;->setDocument(Lorg/w3c/dom/Document;)V

    .line 525
    invoke-static {}, Lorg/cwb/cwb_findlocation;->getLastKnowLocation()Landroid/location/Location;

    move-result-object v2

    .line 526
    .local v2, location:Landroid/location/Location;
    if-eqz v2, :cond_38

    .line 528
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 527
    invoke-static {v5, v6, v7, v8}, Lorg/cwb/cwb_findlocation;->getCurrentLoacation(DD)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    .line 529
    :cond_38
    sget-object v5, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 530
    sget-boolean v5, Lorg/cwb/cwb_main;->bSelectedFromSearchList:Z

    if-nez v5, :cond_4a

    .line 531
    sget-object v5, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    iput-object v5, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    .line 532
    :cond_4a
    const/4 v5, 0x0

    sput-boolean v5, Lorg/cwb/cwb_main;->bSelectedFromSearchList:Z

    .line 535
    :cond_4d
    iget-object v5, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    iget-object v6, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/cwb/cwb_stationlist;->setUpStationListClass(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_55

    .line 540
    .end local v2           #location:Landroid/location/Location;
    .end local v3           #mDocument:Lorg/w3c/dom/Document;
    .end local v4           #url:Ljava/net/URL;
    :goto_54
    return-void

    .line 536
    :catch_55
    move-exception v1

    .line 537
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/cwb/cwb_stationlist;->setDocument(Lorg/w3c/dom/Document;)V

    .line 538
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method private setMainPageData(Z)V
    .registers 4
    .parameter "bupdated"

    .prologue
    .line 290
    invoke-static {p0}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 291
    if-nez p1, :cond_14

    .line 292
    new-instance v0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;-><init>(Lorg/cwb/cwb_main;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    :cond_13
    :goto_13
    return-void

    .line 294
    :cond_14
    iget-object v0, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    iget-object v1, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setUpStationListClass(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lorg/cwb/cwb_main;->showMainPageData()V

    goto :goto_13

    .line 298
    :cond_1f
    iget-object v0, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    if-eqz v0, :cond_13

    .line 299
    iget-object v0, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    iget-object v1, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setUpStationListClass(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private setupBroadCast()V
    .registers 3

    .prologue
    .line 542
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 543
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "cwb.PERIOD_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    new-instance v1, Lorg/cwb/cwb_main$period_check_Receiver;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_main$period_check_Receiver;-><init>(Lorg/cwb/cwb_main;)V

    iput-object v1, p0, Lorg/cwb/cwb_main;->mReceiver:Lorg/cwb/cwb_main$period_check_Receiver;

    .line 545
    iget-object v1, p0, Lorg/cwb/cwb_main;->mReceiver:Lorg/cwb/cwb_main$period_check_Receiver;

    invoke-virtual {p0, v1, v0}, Lorg/cwb/cwb_main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 546
    return-void
.end method

.method private showMainPageData()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 307
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v3}, Lorg/cwb/cwb_stationlist;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-nez v3, :cond_b

    .line 381
    :goto_a
    return-void

    .line 311
    :cond_b
    sget-object v3, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1ab

    sget-object v3, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 312
    iget-object v3, p0, Lorg/cwb/cwb_main;->favorTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_46
    iget-object v3, p0, Lorg/cwb/cwb_main;->time:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v5}, Lorg/cwb/cwb_stationlist;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v3, p0, Lorg/cwb/cwb_main;->location:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-static {p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1df

    .line 320
    sget-object v3, Lorg/cwb/cwb_main;->highest_title:Landroid/widget/TextView;

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 321
    sget-object v3, Lorg/cwb/cwb_main;->lowest_title:Landroid/widget/TextView;

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v3}, Lorg/cwb/cwb_stationlist;->getTempStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d6

    .line 323
    sget-object v3, Lorg/cwb/cwb_main;->temp:Landroid/widget/TextView;

    const v4, 0x7f090012

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v6}, Lorg/cwb/cwb_stationlist;->getTempStatus()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_ba
    sget-object v3, Lorg/cwb/cwb_main;->highest:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->gethighestTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    sget-object v3, Lorg/cwb/cwb_main;->lowest:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getlowestTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v3, p0, Lorg/cwb/cwb_main;->avgrain:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getavgRain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :goto_db
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v3}, Lorg/cwb/cwb_stationlist;->getGifmap()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wea99.gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_257

    .line 344
    iget-object v3, p0, Lorg/cwb/cwb_main;->weathericon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    :goto_f9
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v3}, Lorg/cwb/cwb_stationlist;->getWeather()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    .line 354
    iget-object v3, p0, Lorg/cwb/cwb_main;->weather:Landroid/widget/TextView;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :goto_10e
    iget-object v3, p0, Lorg/cwb/cwb_main;->winddir:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getWinddir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbPreference:Landroid/content/SharedPreferences;

    const-string v4, "wind_value"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2a6

    .line 362
    sget-object v3, Lorg/cwb/cwb_main;->windPower:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getWindStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    sget-object v3, Lorg/cwb/cwb_main;->windPower_title:Landroid/widget/TextView;

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :goto_137
    iget-object v3, p0, Lorg/cwb/cwb_main;->humidity:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getHumidity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v3, p0, Lorg/cwb/cwb_main;->rain:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getRain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v3, p0, Lorg/cwb/cwb_main;->avgrain:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getavgRain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v3}, Lorg/cwb/cwb_stationlist;->getTime()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, month:Ljava/lang/String;
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v3}, Lorg/cwb/cwb_stationlist;->getTime()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 376
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 377
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    :cond_188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    iget-object v3, p0, Lorg/cwb/cwb_main;->mMonavg:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 314
    .end local v2           #month:Ljava/lang/String;
    :cond_1ab
    iget-object v3, p0, Lorg/cwb/cwb_main;->favorTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_46

    .line 325
    :cond_1d6
    sget-object v3, Lorg/cwb/cwb_main;->temp:Landroid/widget/TextView;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ba

    .line 330
    :cond_1df
    sget-object v3, Lorg/cwb/cwb_main;->highest_title:Landroid/widget/TextView;

    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 331
    sget-object v3, Lorg/cwb/cwb_main;->lowest_title:Landroid/widget/TextView;

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 332
    sget-object v3, Lorg/cwb/cwb_main;->temp:Landroid/widget/TextView;

    const v4, 0x7f090013

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    .line 333
    iget-object v6, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v6}, Lorg/cwb/cwb_stationlist;->getTempStatus()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/cwb/cwb_main;->getFahrenheit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 332
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v3}, Lorg/cwb/cwb_stationlist;->gethighestTemp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_237

    .line 335
    sget-object v3, Lorg/cwb/cwb_main;->highest:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->gethighestTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    sget-object v3, Lorg/cwb/cwb_main;->lowest:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->gethighestTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_db

    .line 338
    :cond_237
    sget-object v3, Lorg/cwb/cwb_main;->highest:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->gethighestTemp()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/cwb/cwb_main;->getFahrenheit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    sget-object v3, Lorg/cwb/cwb_main;->lowest:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->gethighestTemp()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/cwb/cwb_main;->getFahrenheit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_db

    .line 348
    :cond_257
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "day_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getGifmap()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v5}, Lorg/cwb/cwb_stationlist;->getGifmap()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, icon:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lorg/cwb/cwb_main;->weathericon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f9

    .line 356
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #icon:Ljava/lang/String;
    :cond_299
    iget-object v3, p0, Lorg/cwb/cwb_main;->weather:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getWeather()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10e

    .line 366
    :cond_2a6
    sget-object v3, Lorg/cwb/cwb_main;->windPower:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getWindMS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    sget-object v3, Lorg/cwb/cwb_main;->windPower_title:Landroid/widget/TextView;

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_137
.end method

.method private updateArrowVisible()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 417
    sget-object v0, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    .line 418
    iget-object v0, p0, Lorg/cwb/cwb_main;->favor_right_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lorg/cwb/cwb_main;->favor_left_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 425
    :goto_15
    return-void

    .line 421
    :cond_16
    iget-object v0, p0, Lorg/cwb/cwb_main;->favor_right_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lorg/cwb/cwb_main;->favor_left_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_15
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_176

    .line 288
    :cond_a
    :goto_a
    return-void

    .line 195
    :sswitch_b
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_27

    .line 196
    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 198
    :cond_27
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/cwb/cwb_main;->addFavorStation(Ljava/lang/String;)V

    goto :goto_a

    .line 206
    :sswitch_2d
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_a

    .line 208
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5c

    .line 209
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 210
    .local v1, i:I
    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_60

    .line 211
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    .line 216
    :goto_59
    invoke-direct {p0, v7}, Lorg/cwb/cwb_main;->setMainPageData(Z)V

    .line 220
    .end local v1           #i:I
    :cond_5c
    invoke-direct {p0}, Lorg/cwb/cwb_main;->updateArrowVisible()V

    goto :goto_a

    .line 213
    .restart local v1       #i:I
    :cond_60
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    goto :goto_59

    .line 227
    .end local v1           #i:I
    :sswitch_6d
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_a

    .line 229
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9e

    .line 230
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 231
    .restart local v1       #i:I
    add-int/lit8 v3, v1, -0x1

    if-gez v3, :cond_a3

    .line 232
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    sget-object v4, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    .line 238
    :goto_9b
    invoke-direct {p0, v7}, Lorg/cwb/cwb_main;->setMainPageData(Z)V

    .line 242
    .end local v1           #i:I
    :cond_9e
    invoke-direct {p0}, Lorg/cwb/cwb_main;->updateArrowVisible()V

    goto/16 :goto_a

    .line 234
    .restart local v1       #i:I
    :cond_a3
    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    goto :goto_9b

    .line 247
    .end local v1           #i:I
    :sswitch_b0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v3, "class_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".cwb_lastActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v3, "group_index"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v3, "view_layer_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v3, "NAME"

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v3, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_main;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 258
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_f5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 259
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v3, "class_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".cwb_searchlist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v3, "group_index"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v3, "view_layer_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    iget-object v3, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    if-eqz v3, :cond_149

    .line 264
    const-string v3, "stationlist"

    iget-object v4, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v4}, Lorg/cwb/cwb_stationlist;->getTotalStationList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 267
    :goto_138
    const-string v3, "activity name"

    const-string v4, "cwb_main"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v3, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_main;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 266
    :cond_149
    const-string v3, "stationlist"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_138

    .line 273
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09003b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 275
    const v4, 0x7f09003c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 276
    const v4, 0x7f09003d

    new-instance v5, Lorg/cwb/cwb_main$2;

    invoke-direct {v5, p0}, Lorg/cwb/cwb_main$2;-><init>(Lorg/cwb/cwb_main;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_a

    .line 192
    nop

    :sswitch_data_176
    .sparse-switch
        0x7f080006 -> :sswitch_6d
        0x7f080007 -> :sswitch_2d
        0x7f080009 -> :sswitch_f5
        0x7f08000b -> :sswitch_b
        0x7f080026 -> :sswitch_b0
        0x7f08002a -> :sswitch_150
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_main;->setContentView(I)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    .line 91
    new-instance v0, Lorg/cwb/cwb_stationlist;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_stationlist;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;

    .line 93
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cwb/cwb_main;->pd:Landroid/app/ProgressDialog;

    .line 94
    iget-object v0, p0, Lorg/cwb/cwb_main;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Loading ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lorg/cwb/cwb_main;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 99
    invoke-direct {p0}, Lorg/cwb/cwb_main;->setupBroadCast()V

    .line 101
    invoke-static {p0}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 132
    :goto_3d
    return-void

    .line 104
    :cond_3e
    invoke-direct {p0}, Lorg/cwb/cwb_main;->InitialDisplayView()V

    .line 122
    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cwb/cwb_main;->bSelectedFromSearchList:Z

    .line 125
    invoke-virtual {p0}, Lorg/cwb/cwb_main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iput-object v0, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    .line 130
    :goto_5c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Location : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;-><init>(Lorg/cwb/cwb_main;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3d

    .line 127
    :cond_7d
    const-string v0, "\u53f0\u5317"

    iput-object v0, p0, Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;

    goto :goto_5c
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 167
    iget-object v2, p0, Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;

    if-eqz v2, :cond_3a

    .line 169
    iget-object v2, p0, Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;

    invoke-virtual {v2}, Lorg/cwb/cwb_findlocation;->isGPSEnabled()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 170
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v1, gpsIntent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    .line 172
    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "custom:3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2b
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_32
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2b .. :try_end_32} :catch_40

    .line 182
    .end local v1           #gpsIntent:Landroid/content/Intent;
    :cond_32
    :goto_32
    iget-object v2, p0, Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;

    invoke-virtual {v2}, Lorg/cwb/cwb_findlocation;->unRegisterLocationListener()V

    .line 183
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;

    .line 185
    :cond_3a
    iget-object v2, p0, Lorg/cwb/cwb_main;->mReceiver:Lorg/cwb/cwb_main$period_check_Receiver;

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    return-void

    .line 178
    .restart local v1       #gpsIntent:Landroid/content/Intent;
    :catch_40
    move-exception v0

    .line 179
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_32
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 163
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 155
    invoke-direct {p0}, Lorg/cwb/cwb_main;->showMainPageData()V

    .line 157
    sget v0, Lorg/cwb/cwb_main;->screen:I

    if-eqz v0, :cond_d

    .line 158
    invoke-static {}, Lorg/cwb/cwb_lastActivity;->updateTempView()V

    .line 160
    :cond_d
    return-void
.end method
