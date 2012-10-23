.class public Lorg/cwb/cwb_forecast_2012Mar_every3hour;
.super Lcom/google/android/maps/MapActivity;
.source "cwb_forecast_2012Mar_every3hour.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;,
        Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;,
        Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;,
        Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;,
        Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;

.field private static DATA_URL1:Ljava/lang/String;

.field private static DATA_URL2:Ljava/lang/String;


# instance fields
.field private bFirstTimeInit:Z

.field private citySpinner:Landroid/widget/Spinner;

.field private contentView:Landroid/view/View;

.field private locationHandler:Landroid/os/Handler;

.field private mo:Lcom/google/android/maps/MyLocationOverlay;

.field private mv:Lcom/google/android/maps/MapView;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;",
            ">;"
        }
    .end annotation
.end field

.field private result1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;",
            ">;"
        }
    .end annotation
.end field

.field private result2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;",
            ">;"
        }
    .end annotation
.end field

.field private scrollView:Landroid/widget/HorizontalScrollView;

.field private selectedCityName:Ljava/lang/String;

.field private selectedTownName:Ljava/lang/String;

.field private townSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=1"

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->DATA_URL1:Ljava/lang/String;

    .line 59
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=1&townid="

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->DATA_URL2:Ljava/lang/String;

    .line 772
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=6&townid="

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->DATA_URL:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->citySpinner:Landroid/widget/Spinner;

    .line 49
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->townSpinner:Landroid/widget/Spinner;

    .line 50
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->locationHandler:Landroid/os/Handler;

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->bFirstTimeInit:Z

    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method private InitialDisplay()V
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_35

    .line 566
    new-instance v7, Landroid/app/AlertDialog$Builder;

    sget-object v29, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    const v29, 0x7f09006d

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v29

    .line 568
    const-string v30, "OK"

    new-instance v31, Lorg/cwb/cwb_forecast_2012Mar_every3hour$8;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$8;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    invoke-virtual/range {v29 .. v31}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v29

    .line 573
    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog;->show()V

    .line 733
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    :goto_34
    return-void

    .line 577
    :cond_35
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 579
    .local v8, date:Ljava/util/Date;
    const v29, 0x7f08000d

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 580
    .local v27, weatherIcon:Landroid/widget/ImageView;
    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v29

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_32c

    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v29

    const/16 v30, 0x12

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_32c

    .line 582
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 583
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "b_day_wea"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx_Icon:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 584
    const-string v31, "drawable"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 582
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 581
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 592
    :goto_ab
    const v29, 0x7f0800ab

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 594
    .local v28, whatTimeForcast:Landroid/widget/TextView;
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Time:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    const v29, 0x7f09008f

    .line 594
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 593
    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    new-instance v21, Ljava/util/Random;

    invoke-direct/range {v21 .. v21}, Ljava/util/Random;-><init>()V

    .line 599
    .local v21, random:Ljava/util/Random;
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    .line 600
    .local v5, bgs:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v29

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_3f5

    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v29

    const/16 v30, 0x12

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_3f5

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "\u6674"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_37a

    .line 603
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070002

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 638
    :cond_13e
    :goto_13e
    const/16 v29, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v29

    aget-object v4, v5, v29

    .line 639
    .local v4, bg:Ljava/lang/String;
    sget-object v29, Lorg/cwb/cwb_constants;->defaultWeatherBackground:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17f

    .line 640
    const/16 v29, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v29

    aget-object v29, v5, v29

    sput-object v29, Lorg/cwb/cwb_constants;->defaultWeatherBackground:Ljava/lang/String;

    .line 641
    const/16 v29, 0x1

    sput-boolean v29, Lorg/cwb/cwb_constants;->bNeedChangeDefaultWeatherBackground:Z

    .line 643
    sget-object v29, Lorg/cwb/cwb_constants;->flipperView:Landroid/view/View;

    if-eqz v29, :cond_17f

    .line 644
    sget-object v29, Lorg/cwb/cwb_constants;->flipperView:Landroid/view/View;

    .line 645
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 646
    sget-object v31, Lorg/cwb/cwb_constants;->defaultWeatherBackground:Ljava/lang/String;

    const-string v32, "drawable"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 645
    invoke-virtual/range {v30 .. v33}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 644
    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundResource(I)V

    .line 652
    :cond_17f
    const v29, 0x7f0800ac

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 654
    .local v20, rainLabel:Landroid/widget/TextView;
    new-instance v30, Ljava/lang/StringBuilder;

    .line 655
    const v29, 0x7f090090

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Rain:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "mm"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 654
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 653
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    const v29, 0x7f080046

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 658
    .local v25, timeLabel:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->DataTime:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    const v29, 0x7f080010

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 662
    .local v24, temperatureLabel:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_499

    .line 663
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Temp:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v29, 0x7f090096

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 661
    :goto_258
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    const v29, 0x7f0800af

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 667
    .local v6, bottomDataLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 668
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    const/4 v11, 0x2

    .local v11, i:I
    :goto_277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-lt v11, v0, :cond_4e3

    .line 711
    const v29, 0x7f080048

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 712
    .local v13, image1:Landroid/widget/ImageView;
    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 713
    .local v16, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    mul-int/lit8 v29, v29, 0x6b

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 714
    const/16 v29, -0x2

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 715
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    invoke-virtual {v13}, Landroid/widget/ImageView;->requestLayout()V

    .line 719
    const v29, 0x7f08004a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 720
    .local v14, image2:Landroid/widget/ImageView;
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 721
    .local v17, lp2:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    mul-int/lit8 v29, v29, 0x6b

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 722
    const/16 v29, -0x2

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 723
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    invoke-virtual {v14}, Landroid/widget/ImageView;->requestLayout()V

    .line 727
    const v29, 0x7f0800ae

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 728
    .local v15, image3:Landroid/widget/ImageView;
    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout$LayoutParams;

    .line 729
    .local v18, lp3:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    mul-int/lit8 v29, v29, 0x6b

    move/from16 v0, v29

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 730
    const/16 v29, -0x2

    move/from16 v0, v29

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 731
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    invoke-virtual {v15}, Landroid/widget/ImageView;->requestLayout()V

    goto/16 :goto_34

    .line 587
    .end local v4           #bg:Ljava/lang/String;
    .end local v5           #bgs:[Ljava/lang/String;
    .end local v6           #bottomDataLayout:Landroid/widget/LinearLayout;
    .end local v11           #i:I
    .end local v13           #image1:Landroid/widget/ImageView;
    .end local v14           #image2:Landroid/widget/ImageView;
    .end local v15           #image3:Landroid/widget/ImageView;
    .end local v16           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17           #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18           #lp3:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20           #rainLabel:Landroid/widget/TextView;
    .end local v21           #random:Ljava/util/Random;
    .end local v24           #temperatureLabel:Landroid/widget/TextView;
    .end local v25           #timeLabel:Landroid/widget/TextView;
    .end local v28           #whatTimeForcast:Landroid/widget/TextView;
    :cond_32c
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 588
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "b_night_wea"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx_Icon:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 589
    const-string v31, "drawable"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 587
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 586
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_ab

    .line 604
    .restart local v5       #bgs:[Ljava/lang/String;
    .restart local v21       #random:Ljava/util/Random;
    .restart local v28       #whatTimeForcast:Landroid/widget/TextView;
    :cond_37a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "\u96e8"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_3a3

    .line 605
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070004

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13e

    .line 606
    :cond_3a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "\u591a\u96f2"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_3cc

    .line 607
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070006

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13e

    .line 608
    :cond_3cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "\u9670\u5929"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_13e

    .line 609
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070008

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13e

    .line 621
    :cond_3f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "\u6674"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_41e

    .line 622
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070002

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13e

    .line 623
    :cond_41e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "\u96e8"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_447

    .line 624
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070004

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13e

    .line 625
    :cond_447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "\u591a\u96f2"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_470

    .line 626
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070006

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13e

    .line 627
    :cond_470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "\u9670\u5929"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_13e

    .line 628
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070008

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13e

    .line 664
    .restart local v4       #bg:Ljava/lang/String;
    .restart local v20       #rainLabel:Landroid/widget/TextView;
    .restart local v24       #temperatureLabel:Landroid/widget/TextView;
    .restart local v25       #timeLabel:Landroid/widget/TextView;
    :cond_499
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Temp:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v29, 0x7f090097

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_258

    .line 671
    .restart local v6       #bottomDataLayout:Landroid/widget/LinearLayout;
    .restart local v11       #i:I
    :cond_4e3
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v29

    .line 672
    const v30, 0x7f030011

    const/16 v31, 0x0

    .line 671
    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 674
    .local v26, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Day:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    add-int/lit8 v31, v11, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Day:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_54c

    .line 675
    const v29, 0x7f0800b0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 676
    .local v9, dateLabel:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Day:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    .end local v9           #dateLabel:Landroid/widget/TextView;
    :cond_54c
    const v29, 0x7f0800b1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 680
    .local v10, hourLabel:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Hour:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const v29, 0x7f0800b2

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 683
    .local v12, iconLabel:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Hour:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "03"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5d3

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Hour:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "21"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5d3

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Hour:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "00"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6c3

    .line 687
    :cond_5d3
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 688
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "night_wea"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx_Icon:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 689
    const-string v31, "drawable"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 687
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 686
    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 697
    :goto_619
    const v29, 0x7f0800b3

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 698
    .local v22, tempLabel:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->MaxT:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    const v29, 0x7f0800b4

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 700
    .local v23, tempUnit:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_70b

    .line 701
    const v29, 0x7f090096

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 700
    :goto_667
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    const v29, 0x7f0800b5

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 706
    .local v19, percentLabel:Landroid/widget/TextView;
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->PoP:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v29, 0x7f090098

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 705
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 669
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_277

    .line 692
    .end local v19           #percentLabel:Landroid/widget/TextView;
    .end local v22           #tempLabel:Landroid/widget/TextView;
    .end local v23           #tempUnit:Landroid/widget/TextView;
    :cond_6c3
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 693
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "day_wea"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx_Icon:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 694
    const-string v31, "drawable"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 692
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 691
    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_619

    .line 702
    .restart local v22       #tempLabel:Landroid/widget/TextView;
    .restart local v23       #tempUnit:Landroid/widget/TextView;
    :cond_70b
    const v29, 0x7f090097

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_667
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 1
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->loadCurrentLocationData()V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getCityData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->DATA_URL2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Landroid/widget/ImageButton;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->checkAddButtonVisibility(Landroid/widget/ImageButton;)V

    return-void
.end method

.method static synthetic access$16(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Lcom/google/android/maps/MyLocationOverlay;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mo:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$18(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->locationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Z
    .registers 2
    .parameter

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->bFirstTimeInit:Z

    return v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/widget/Spinner;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->citySpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 371
    iput-boolean p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->bFirstTimeInit:Z

    return-void
.end method

.method static synthetic access$6(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/widget/Spinner;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->townSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$8(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 1
    .parameter

    .prologue
    .line 773
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getHttpData()V

    return-void
.end method

.method static synthetic access$9(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->InitialDisplay()V

    return-void
.end method

.method private checkAddButtonVisibility(Landroid/widget/ImageButton;)V
    .registers 12
    .parameter "addFavorite"

    .prologue
    const/4 v9, 0x0

    .line 64
    .line 65
    const-string v7, "favoriteList"

    invoke-virtual {p0, v7, v9}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 66
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "favoCity"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, favoList:Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, bContains:Z
    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, favoListToken:[Ljava/lang/String;
    array-length v7, v3

    const/16 v8, 0xa

    if-lt v7, v8, :cond_3c

    .line 74
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const-string v7, "\u6700\u591a\u53ea\u80fd\u670910\u500b\u5730\u9ede"

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 76
    const-string v8, "OK"

    new-instance v9, Lorg/cwb/cwb_forecast_2012Mar_every3hour$2;

    invoke-direct {v9, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$2;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 81
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 111
    .end local v0           #bContains:Z
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    .end local v3           #favoListToken:[Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-void

    .line 87
    .restart local v0       #bContains:Z
    .restart local v3       #favoListToken:[Ljava/lang/String;
    :cond_3c
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3d
    array-length v7, v3

    if-lt v4, v7, :cond_93

    .line 95
    :goto_40
    if-nez v0, :cond_3b

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 97
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 98
    sget-object v8, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 102
    .local v5, se:Landroid/content/SharedPreferences$Editor;
    const-string v7, "favoCity"

    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    const/4 v7, 0x1

    sput-boolean v7, Lorg/cwb/cwb_constants;->bNeedReloadFavoList:Z

    .line 107
    sget-object v7, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v8, "added."

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 108
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3b

    .line 88
    .end local v5           #se:Landroid/content/SharedPreferences$Editor;
    :cond_93
    aget-object v7, v3, v4

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 89
    aget-object v7, v3, v4

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 90
    const/4 v0, 0x1

    .line 91
    goto :goto_40

    .line 87
    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d
.end method

.method private checkFunc(Ljava/lang/String;)Z
    .registers 11
    .parameter "title"

    .prologue
    const/4 v6, 0x0

    .line 116
    .line 117
    const-string v7, "favoriteList"

    invoke-virtual {p0, v7, v6}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 118
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v7, "favoCity"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, favoList:Ljava/lang/String;
    if-eqz v1, :cond_41

    .line 121
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, tmp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 125
    .local v0, bContains:Z
    if-nez v5, :cond_1a

    .line 144
    .end local v0           #bContains:Z
    .end local v5           #tmp:[Ljava/lang/String;
    :cond_19
    :goto_19
    return v0

    .line 127
    .restart local v0       #bContains:Z
    .restart local v5       #tmp:[Ljava/lang/String;
    :cond_1a
    array-length v7, v5

    if-eqz v7, :cond_19

    .line 130
    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, favoListToken:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_24
    array-length v7, v2

    if-ge v3, v7, :cond_19

    .line 132
    aget-object v7, v2, v3

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 133
    aget-object v7, v2, v3

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 134
    const/4 v0, 0x1

    .line 135
    goto :goto_19

    .line 131
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .end local v0           #bContains:Z
    .end local v2           #favoListToken:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #tmp:[Ljava/lang/String;
    :cond_41
    move v0, v6

    .line 144
    goto :goto_19
.end method

.method private getCityData(Ljava/lang/String;)V
    .registers 15
    .parameter "url"

    .prologue
    .line 453
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 454
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 455
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 457
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 458
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_4c

    .line 459
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 462
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 463
    .local v7, line:Ljava/lang/String;
    const-string v2, ""

    .line 464
    .local v2, content:Ljava/lang/String;
    :goto_31
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4d

    .line 468
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 470
    .local v8, object:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3d
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v5, v11, :cond_5f

    .line 511
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 517
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_4c
    :goto_4c
    return-void

    .line 465
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_4d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    .line 471
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_5f
    sget-object v11, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->DATA_URL1:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bc

    .line 472
    new-instance v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    .line 474
    .local v0, citys:Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 475
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 476
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "CountyID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 473
    iput-object v11, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->CountyID:Ljava/lang/String;

    .line 479
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 480
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 481
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "CountyName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 478
    iput-object v11, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->CountyName:Ljava/lang/String;

    .line 484
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 485
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 486
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownshipID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 483
    iput-object v11, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->TownshipID:Ljava/lang/String;

    .line 489
    iget-object v11, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v0           #citys:Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;
    :goto_b9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 491
    :cond_bc
    new-instance v10, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;

    invoke-direct {v10, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    .line 493
    .local v10, towns:Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 494
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 495
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownshipID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 492
    iput-object v11, v10, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownshipID:Ljava/lang/String;

    .line 498
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 499
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 500
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 497
    iput-object v11, v10, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownName:Ljava/lang/String;

    .line 503
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 504
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 505
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "zipcode"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 502
    iput-object v11, v10, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->zipcode:Ljava/lang/String;

    .line 507
    iget-object v11, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10e} :catch_10f

    goto :goto_b9

    .line 514
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    .end local v10           #towns:Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;
    :catch_10f
    move-exception v3

    .line 515
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4c
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 779
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 780
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->DATA_URL:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 781
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 783
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 784
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_66

    .line 785
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 788
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 789
    .local v7, line:Ljava/lang/String;
    const-string v1, ""

    .line 790
    .local v1, content:Ljava/lang/String;
    :goto_46
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_67

    .line 794
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 795
    .local v8, object:Lorg/json/JSONObject;
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 796
    const/4 v5, 0x0

    .local v5, i:I
    :goto_57
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_79

    .line 864
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 870
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_66
    :goto_66
    return-void

    .line 791
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_67
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 797
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_79
    new-instance v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    .line 799
    .local v4, hrData:Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;
    if-nez v5, :cond_d0

    .line 801
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 802
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 803
    const-string v11, "town_newest"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Time"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 800
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Time:Ljava/lang/String;

    .line 805
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 806
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 807
    const-string v11, "town_newest"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Wx_Icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 804
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx_Icon:Ljava/lang/String;

    .line 810
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 811
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 812
    const-string v11, "town_newest"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Wx"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 809
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    .line 861
    :goto_c8
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 814
    :cond_d0
    const/4 v10, 0x1

    if-ne v5, v10, :cond_122

    .line 816
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 817
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 818
    const-string v11, "town_current"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "DataTime"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 815
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->DataTime:Ljava/lang/String;

    .line 821
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 822
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 823
    const-string v11, "town_current"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Temp"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 820
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Temp:Ljava/lang/String;

    .line 825
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 826
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 827
    const-string v11, "town_current"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Rain"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 824
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Rain:Ljava/lang/String;
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11b} :catch_11c

    goto :goto_c8

    .line 867
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #hrData:Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_11c
    move-exception v2

    .line 868
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_66

    .line 832
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #hrData:Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;
    .restart local v5       #i:I
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #object:Lorg/json/JSONObject;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_122
    :try_start_122
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 833
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 834
    const-string v11, "town_3hr"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Day"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 831
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Day:Ljava/lang/String;

    .line 837
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 838
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 839
    const-string v11, "town_3hr"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Hour"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 836
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Hour:Ljava/lang/String;

    .line 841
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 842
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 843
    const-string v11, "town_3hr"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Wx_Icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 840
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx_Icon:Ljava/lang/String;

    .line 846
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 847
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 848
    const-string v11, "town_3hr"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MinT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 845
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->MinT:Ljava/lang/String;

    .line 851
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 852
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 853
    const-string v11, "town_3hr"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MaxT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 850
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->MaxT:Ljava/lang/String;

    .line 855
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 856
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 857
    const-string v11, "town_3hr"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "PoP"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 854
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->PoP:Ljava/lang/String;
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_1b2} :catch_11c

    goto/16 :goto_c8
.end method

.method private loadCurrentLocationData()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 323
    sget-object v5, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 324
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v6}, Lcom/google/android/maps/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v6

    .line 323
    invoke-static {v5, v6}, Lorg/cwb/cwb_utilities;->getAddressbyGeoPoint(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Address;

    move-result-object v4

    .line 326
    .local v4, mAddr:Landroid/location/Address;
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v5}, Lcom/google/android/maps/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v5

    if-nez v5, :cond_20

    .line 327
    sget-object v5, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 328
    const-string v6, "\u76ee\u524d\u4f4d\u7f6e\u7121\u6cd5\u4f7f\u7528, \u8acb\u7a0d\u5019\u518d\u8a66"

    .line 327
    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 328
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 330
    :cond_20
    if-nez v4, :cond_2e

    .line 331
    sget-object v5, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 332
    const-string v6, "\u76ee\u524d\u4f4d\u7f6e\u7121\u6cd5\u4f7f\u7528, \u8acb\u7a0d\u5019\u518d\u8a66"

    .line 331
    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 332
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 368
    :goto_2d
    return-void

    .line 334
    :cond_2e
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->showDialog()V

    .line 335
    invoke-virtual {v4, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, currentCity:Ljava/lang/String;
    const-string v5, "\u53f0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u81fa"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_58
    const/4 v2, 0x0

    .line 340
    .local v2, index:I
    const/4 v3, 0x0

    .line 342
    .local v3, index2:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_bd

    .line 350
    :goto_63
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->DATA_URL2:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->CountyID:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getCityData(Ljava/lang/String;)V

    .line 352
    const/4 v1, 0x0

    :goto_84
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_d4

    .line 359
    :goto_8c
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->dismissDialog()V

    .line 361
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownshipID:Ljava/lang/String;

    sput-object v5, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    .line 366
    invoke-virtual {p0, v8}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getData(Z)V

    goto/16 :goto_2d

    .line 343
    :cond_bd
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->CountyName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 344
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;

    .line 345
    move v2, v1

    .line 346
    goto :goto_63

    .line 342
    :cond_d1
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 353
    :cond_d4
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->zipcode:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 354
    move v3, v1

    .line 355
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownName:Ljava/lang/String;

    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;

    goto :goto_8c

    .line 352
    :cond_f6
    add-int/lit8 v1, v1, 0x1

    goto :goto_84
.end method


# virtual methods
.method public getData(Z)V
    .registers 10
    .parameter "hasFocus"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const v5, 0x7f0800a8

    .line 524
    if-eqz p1, :cond_49

    .line 525
    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 526
    .local v2, title:Landroid/widget/TextView;
    sget-object v3, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    :goto_12
    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #title:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 535
    .restart local v2       #title:Landroid/widget/TextView;
    const v3, 0x7f0800a6

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 536
    .local v0, addFavorite:Landroid/widget/ImageButton;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->checkFunc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 537
    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 541
    :goto_32
    const v3, 0x7f0800af

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 542
    .local v1, bottomDataLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 545
    return-void

    .line 529
    .end local v0           #addFavorite:Landroid/widget/ImageButton;
    .end local v1           #bottomDataLayout:Landroid/widget/LinearLayout;
    .end local v2           #title:Landroid/widget/TextView;
    :cond_49
    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 528
    check-cast v2, Landroid/widget/TextView;

    .line 530
    .restart local v2       #title:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 539
    .restart local v0       #addFavorite:Landroid/widget/ImageButton;
    :cond_6e
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_32
.end method

.method protected isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v5, 0x7f030010

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->setContentView(I)V

    .line 153
    sget-object v5, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, tokens:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_1f

    .line 155
    aget-object v5, v4, v7

    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;

    .line 156
    const/4 v5, 0x1

    aget-object v5, v4, v5

    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;

    .line 159
    :cond_1f
    sget-object v5, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 160
    new-instance v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;

    sget-object v6, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->DATA_URL1:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Ljava/lang/String;)V

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    :cond_33
    const/high16 v5, 0x7f08

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->scrollView:Landroid/widget/HorizontalScrollView;

    .line 163
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->scrollView:Landroid/widget/HorizontalScrollView;

    sput-object v5, Lorg/cwb/cwb_forecast_2012Mar_group;->scrollView:Landroid/widget/HorizontalScrollView;

    .line 164
    sput-object p0, Lorg/cwb/cwb_forecast_2012Mar_group;->self2:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    .line 166
    sget-object v5, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 167
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 168
    const v6, 0x7f03002b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 166
    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;

    .line 170
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;

    const v6, 0x7f0801be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->citySpinner:Landroid/widget/Spinner;

    .line 172
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->citySpinner:Landroid/widget/Spinner;

    new-instance v6, Lorg/cwb/cwb_forecast_2012Mar_every3hour$3;

    invoke-direct {v6, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$3;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 185
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;

    const v6, 0x7f0801bf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->townSpinner:Landroid/widget/Spinner;

    .line 186
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->townSpinner:Landroid/widget/Spinner;

    new-instance v6, Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;

    invoke-direct {v6, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 199
    const v5, 0x7f0800a8

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 200
    .local v3, title:Landroid/widget/TextView;
    const v5, 0x7f0800a6

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 201
    .local v0, addFavorite:Landroid/widget/ImageButton;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->checkFunc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 202
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 203
    :cond_a9
    new-instance v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$5;

    invoke-direct {v5, p0, v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$5;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v5, 0x7f0800ad

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 222
    .local v2, selectOtherCity:Landroid/widget/LinearLayout;
    new-instance v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;

    invoke-direct {v5, p0, v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v5, 0x7f080096

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/maps/MapView;

    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mv:Lcom/google/android/maps/MapView;

    .line 270
    new-instance v5, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mv:Lcom/google/android/maps/MapView;

    invoke-direct {v5, p0, v6}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mo:Lcom/google/android/maps/MyLocationOverlay;

    .line 271
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v5}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 274
    const v5, 0x7f0800a9

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 275
    .local v1, pinSelf:Landroid/widget/ImageButton;
    new-instance v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;

    invoke-direct {v5, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 876
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 877
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 878
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->mv:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->removeAllViews()V

    .line 879
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 884
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 885
    return-void
.end method

.method public printLog()V
    .registers 3

    .prologue
    .line 520
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Log !!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    return-void
.end method
