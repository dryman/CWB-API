.class public Lorg/cwb/cwb_main_2012mar;
.super Lcom/google/android/maps/MapActivity;
.source "cwb_main_2012mar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_main_2012mar$JSONParseTask;,
        Lorg/cwb/cwb_main_2012mar$loadCityDataTask;,
        Lorg/cwb/cwb_main_2012mar$nowData;,
        Lorg/cwb/cwb_main_2012mar$otherCityData;,
        Lorg/cwb/cwb_main_2012mar$setTownNameTask;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;

.field private static DATA_URL_SELF:Ljava/lang/String;

.field private static final cityMappingList:[Ljava/lang/String;

.field private static final cityNameList:[Ljava/lang/String;


# instance fields
.field private bFirstTimeInit:Z

.field private final cityLink:Ljava/lang/String;

.field private citySpinner:Landroid/widget/Spinner;

.field private contentView:Landroid/view/View;

.field private data:Lorg/cwb/cwb_main_2012mar$nowData;

.field private locationHandler:Landroid/os/Handler;

.field private mo:Lcom/google/android/maps/MyLocationOverlay;

.field private mv:Lcom/google/android/maps/MapView;

.field private selectedArea:Ljava/lang/String;

.field private selectedAreaE:Ljava/lang/String;

.field private selectedID:Ljava/lang/String;

.field private selectedTownName:Ljava/lang/String;

.field private townSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "N"

    aput-object v1, v0, v2

    const-string v1, "C"

    aput-object v1, v0, v3

    const-string v1, "E"

    aput-object v1, v0, v4

    const-string v1, "S"

    aput-object v1, v0, v5

    const-string v1, "I"

    aput-object v1, v0, v6

    sput-object v0, Lorg/cwb/cwb_main_2012mar;->cityMappingList:[Ljava/lang/String;

    .line 356
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5317"

    aput-object v1, v0, v2

    const-string v1, "\u4e2d"

    aput-object v1, v0, v3

    const-string v1, "\u6771"

    aput-object v1, v0, v4

    const-string v1, "\u5357"

    aput-object v1, v0, v5

    const-string v1, "\u5916\u5cf6"

    aput-object v1, v0, v6

    sput-object v0, Lorg/cwb/cwb_main_2012mar;->cityNameList:[Ljava/lang/String;

    .line 489
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=4&stid="

    sput-object v0, Lorg/cwb/cwb_main_2012mar;->DATA_URL_SELF:Ljava/lang/String;

    .line 490
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=D&townid="

    sput-object v0, Lorg/cwb/cwb_main_2012mar;->DATA_URL:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 42
    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar;->citySpinner:Landroid/widget/Spinner;

    .line 43
    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar;->townSpinner:Landroid/widget/Spinner;

    .line 161
    new-instance v0, Lorg/cwb/cwb_main_2012mar$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_main_2012mar$1;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar;->locationHandler:Landroid/os/Handler;

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cwb/cwb_main_2012mar;->bFirstTimeInit:Z

    .line 488
    new-instance v0, Lorg/cwb/cwb_main_2012mar$nowData;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_main_2012mar$nowData;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 653
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=3"

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar;->cityLink:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private InitialDisplay()V
    .registers 24

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Stname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_3b

    .line 360
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v19, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v19, 0x7f09006d

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 362
    const-string v20, "OK"

    new-instance v21, Lorg/cwb/cwb_main_2012mar$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/cwb/cwb_main_2012mar$9;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 367
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->show()V

    .line 452
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :goto_3a
    return-void

    .line 371
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Stid:Ljava/lang/String;

    move-object/from16 v19, v0

    sput-object v19, Lorg/cwb/cwb_constants;->selectedStid:Ljava/lang/String;

    .line 373
    const v19, 0x7f08019d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 375
    .local v10, observeStation:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Stname:Ljava/lang/String;

    move-object/from16 v19, v0

    sput-object v19, Lorg/cwb/cwb_constants;->observeStationName:Ljava/lang/String;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Stname:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const v19, 0x7f0801a6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 380
    .local v15, weatherIcon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_main_2012mar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 381
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "b_day_wea"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->gifmap:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "drawable"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_main_2012mar;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 380
    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 379
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    const v19, 0x7f080010

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 386
    .local v13, temperature:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2d4

    .line 387
    const v19, 0x7f090014

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 388
    :goto_ce
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Temperature:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 385
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 384
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    const v19, 0x7f0801a8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 391
    .local v14, temperatureStatus:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Weather:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v19, 0x7f0801a9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 394
    .local v9, obTime:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Obstime:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Obstime:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x3

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const v19, 0x7f080012

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 397
    .local v16, windDirectionValue:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->WindDir:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const v19, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 400
    .local v18, windPowerValue:Landroid/widget/TextView;
    const v19, 0x7f080013

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 401
    .local v17, windPower:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isWindScale(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2e1

    .line 402
    const v19, 0x7f090006

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->WindScale:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :goto_1a4
    const v19, 0x7f08001a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 410
    .local v5, humidityValue:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Humidity:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const v19, 0x7f08001e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 413
    .local v12, rainVolumnValue:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Rain:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    const v19, 0x7f0801ad

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 416
    .local v8, monthAverage:Landroid/widget/TextView;
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meanmonth:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v20, 0x7f09000d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const v19, 0x7f080020

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 419
    .local v3, highestTempLabel:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2fc

    .line 420
    const v19, 0x7f09000e

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 424
    :goto_235
    const v19, 0x7f080022

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 425
    .local v6, lowestTempLabel:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_306

    .line 426
    const v19, 0x7f09000f

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 430
    :goto_250
    const v19, 0x7f080021

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 431
    .local v4, highestValue:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmax:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_310

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmax:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_282
    const v19, 0x7f080023

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 441
    .local v7, lowestValue:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmin:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_344

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :goto_2b4
    const v19, 0x7f080025

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 451
    .local v11, rainValue:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->precp:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 388
    .end local v3           #highestTempLabel:Landroid/widget/TextView;
    .end local v4           #highestValue:Landroid/widget/TextView;
    .end local v5           #humidityValue:Landroid/widget/TextView;
    .end local v6           #lowestTempLabel:Landroid/widget/TextView;
    .end local v7           #lowestValue:Landroid/widget/TextView;
    .end local v8           #monthAverage:Landroid/widget/TextView;
    .end local v9           #obTime:Landroid/widget/TextView;
    .end local v11           #rainValue:Landroid/widget/TextView;
    .end local v12           #rainVolumnValue:Landroid/widget/TextView;
    .end local v14           #temperatureStatus:Landroid/widget/TextView;
    .end local v16           #windDirectionValue:Landroid/widget/TextView;
    .end local v17           #windPower:Landroid/widget/TextView;
    .end local v18           #windPowerValue:Landroid/widget/TextView;
    :cond_2d4
    const v19, 0x7f090015

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_ce

    .line 405
    .restart local v9       #obTime:Landroid/widget/TextView;
    .restart local v14       #temperatureStatus:Landroid/widget/TextView;
    .restart local v16       #windDirectionValue:Landroid/widget/TextView;
    .restart local v17       #windPower:Landroid/widget/TextView;
    .restart local v18       #windPowerValue:Landroid/widget/TextView;
    :cond_2e1
    const v19, 0x7f090005

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->Wind:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a4

    .line 422
    .restart local v3       #highestTempLabel:Landroid/widget/TextView;
    .restart local v5       #humidityValue:Landroid/widget/TextView;
    .restart local v8       #monthAverage:Landroid/widget/TextView;
    .restart local v12       #rainVolumnValue:Landroid/widget/TextView;
    :cond_2fc
    const v19, 0x7f090010

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_235

    .line 428
    .restart local v6       #lowestTempLabel:Landroid/widget/TextView;
    :cond_306
    const v19, 0x7f090011

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_250

    .line 434
    .restart local v4       #highestValue:Landroid/widget/TextView;
    :cond_310
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_329

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmax:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_282

    .line 437
    :cond_329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmax:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_282

    .line 444
    .restart local v7       #lowestValue:Landroid/widget/TextView;
    :cond_344
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_35d

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b4

    .line 447
    :cond_35d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b4
.end method

.method static synthetic access$0(Lorg/cwb/cwb_main_2012mar;)V
    .registers 1
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/cwb/cwb_main_2012mar;->loadCurrentLocationData()V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_main_2012mar;)Landroid/widget/Spinner;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->townSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$10(Lorg/cwb/cwb_main_2012mar;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lorg/cwb/cwb_main_2012mar;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar;->selectedTownName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lorg/cwb/cwb_main_2012mar;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar;->selectedID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lorg/cwb/cwb_main_2012mar;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->selectedID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lorg/cwb/cwb_main_2012mar;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lorg/cwb/cwb_main_2012mar;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->selectedTownName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lorg/cwb/cwb_main_2012mar;)Lcom/google/android/maps/MyLocationOverlay;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->mo:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$17(Lorg/cwb/cwb_main_2012mar;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->locationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lorg/cwb/cwb_main_2012mar;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_main_2012mar;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->selectedAreaE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_main_2012mar;)V
    .registers 1
    .parameter

    .prologue
    .line 491
    invoke-direct {p0}, Lorg/cwb/cwb_main_2012mar;->getHttpData()V

    return-void
.end method

.method static synthetic access$4(Lorg/cwb/cwb_main_2012mar;)V
    .registers 1
    .parameter

    .prologue
    .line 654
    invoke-direct {p0}, Lorg/cwb/cwb_main_2012mar;->getCityData()V

    return-void
.end method

.method static synthetic access$5(Lorg/cwb/cwb_main_2012mar;)V
    .registers 1
    .parameter

    .prologue
    .line 357
    invoke-direct {p0}, Lorg/cwb/cwb_main_2012mar;->InitialDisplay()V

    return-void
.end method

.method static synthetic access$6(Lorg/cwb/cwb_main_2012mar;)V
    .registers 1
    .parameter

    .prologue
    .line 256
    invoke-direct {p0}, Lorg/cwb/cwb_main_2012mar;->showSelectionFirst()V

    return-void
.end method

.method static synthetic access$7()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 355
    sget-object v0, Lorg/cwb/cwb_main_2012mar;->cityMappingList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lorg/cwb/cwb_main_2012mar;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar;->selectedAreaE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 356
    sget-object v0, Lorg/cwb/cwb_main_2012mar;->cityNameList:[Ljava/lang/String;

    return-object v0
.end method

.method private getCityData()V
    .registers 13

    .prologue
    .line 656
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 657
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v10, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=3"

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 658
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 660
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 661
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_53

    .line 662
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 665
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 666
    .local v7, line:Ljava/lang/String;
    const-string v2, ""

    .line 667
    .local v2, content:Ljava/lang/String;
    :goto_33
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_54

    .line 671
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 672
    .local v8, object:Lorg/json/JSONObject;
    sget-object v10, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 674
    const/4 v5, 0x0

    .local v5, i:I
    :goto_44
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_66

    .line 739
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 745
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_53
    :goto_53
    return-void

    .line 668
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 675
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_66
    new-instance v0, Lorg/cwb/cwb_main_2012mar$otherCityData;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_main_2012mar$otherCityData;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    .line 677
    .local v0, cityData:Lorg/cwb/cwb_main_2012mar$otherCityData;
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 678
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 679
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "StationName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 676
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationName:Ljava/lang/String;

    .line 682
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 683
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 684
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "StationID"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 681
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationID:Ljava/lang/String;

    .line 687
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 688
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 689
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "StationNameE"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 686
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationNameE:Ljava/lang/String;

    .line 692
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 693
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 694
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Area"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 691
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->Area:Ljava/lang/String;

    .line 697
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 698
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 699
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "longitude"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 696
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->longitude:Ljava/lang/String;

    .line 702
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 703
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 704
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "latitude"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 701
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->latitude:Ljava/lang/String;

    .line 707
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 708
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 709
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "altitude"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 706
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->altitude:Ljava/lang/String;

    .line 712
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 713
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 714
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Address"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 711
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->Address:Ljava/lang/String;

    .line 717
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 718
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 719
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "AddressE"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 716
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->AddressE:Ljava/lang/String;

    .line 722
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 723
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 724
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "F36_Area"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 721
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->F36_Area:Ljava/lang/String;

    .line 727
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 728
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 729
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "FWeek_Area"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 726
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->FWeek_Area:Ljava/lang/String;

    .line 732
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 733
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 734
    const-string v11, "stations"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "FTravel_Area"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 731
    iput-object v10, v0, Lorg/cwb/cwb_main_2012mar$otherCityData;->FTravel_Area:Ljava/lang/String;

    .line 736
    sget-object v10, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_190} :catch_194

    .line 674
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_44

    .line 742
    .end local v0           #cityData:Lorg/cwb/cwb_main_2012mar$otherCityData;
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_194
    move-exception v3

    .line 743
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_53
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 500
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 502
    .local v0, client:Lorg/apache/http/client/HttpClient;
    sget-boolean v9, Lorg/cwb/cwb_constants;->nowFirstTimeInitial:Z

    if-eqz v9, :cond_66

    .line 503
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/cwb/cwb_main_2012mar;->DATA_URL:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cwb/cwb_main_2012mar;->selectedID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 506
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    :goto_23
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 509
    .local v8, rp:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 510
    .local v5, in:Ljava/io/BufferedReader;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_65

    .line 511
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #in:Ljava/io/BufferedReader;
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 514
    .restart local v5       #in:Ljava/io/BufferedReader;
    const-string v6, ""

    .line 515
    .local v6, line:Ljava/lang/String;
    const-string v1, ""

    .line 516
    .local v1, content:Ljava/lang/String;
    :goto_4a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_81

    .line 520
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 522
    .local v7, object:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_56
    const-string v9, "Areas"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v4, v9, :cond_93

    .line 595
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 601
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #rp:Lorg/apache/http/HttpResponse;
    :cond_65
    :goto_65
    return-void

    .line 505
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    :cond_66
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/cwb/cwb_main_2012mar;->DATA_URL_SELF:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cwb/cwb_main_2012mar;->selectedID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_23

    .line 517
    .restart local v1       #content:Ljava/lang/String;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #rp:Lorg/apache/http/HttpResponse;
    :cond_81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 525
    .restart local v4       #i:I
    .restart local v7       #object:Lorg/json/JSONObject;
    :cond_93
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 526
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 527
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 528
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Stid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 525
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Stid:Ljava/lang/String;

    .line 530
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 531
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 532
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 533
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Stname"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 530
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Stname:Ljava/lang/String;

    .line 536
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 537
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 538
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 539
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Obstime"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 536
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Obstime:Ljava/lang/String;

    .line 540
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 541
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 542
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 543
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Weather"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 540
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Weather:Ljava/lang/String;

    .line 544
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 545
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 546
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 547
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "gifmap"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 544
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->gifmap:Ljava/lang/String;

    .line 548
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 549
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 550
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 551
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Weather"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 548
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Weather:Ljava/lang/String;

    .line 552
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 553
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 554
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 555
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Temperature"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 552
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Temperature:Ljava/lang/String;

    .line 556
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 557
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 558
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 559
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "WindDir"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 556
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->WindDir:Ljava/lang/String;

    .line 560
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 561
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 562
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 563
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "WindScale"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 560
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->WindScale:Ljava/lang/String;

    .line 564
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 565
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 566
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 567
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Wind"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 564
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Wind:Ljava/lang/String;

    .line 568
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 569
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 570
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 571
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Humidity"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 568
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Humidity:Ljava/lang/String;

    .line 573
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 574
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 575
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 576
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Rain"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 573
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->Rain:Ljava/lang/String;

    .line 577
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 578
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 579
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 580
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "meanmonth"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 577
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->meanmonth:Ljava/lang/String;

    .line 581
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 582
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 583
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 584
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "meantxmax"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 581
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmax:Ljava/lang/String;

    .line 585
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 586
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 587
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 588
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "meantxmin"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 585
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmin:Ljava/lang/String;

    .line 589
    iget-object v9, p0, Lorg/cwb/cwb_main_2012mar;->data:Lorg/cwb/cwb_main_2012mar$nowData;

    .line 590
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 591
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 592
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "precp"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 589
    iput-object v10, v9, Lorg/cwb/cwb_main_2012mar$nowData;->precp:Ljava/lang/String;
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_233} :catch_237

    .line 522
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_56

    .line 598
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #rp:Lorg/apache/http/HttpResponse;
    :catch_237
    move-exception v2

    .line 599
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_65
.end method

.method private loadCurrentLocationData()V
    .registers 18

    .prologue
    .line 173
    sget-object v12, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cwb/cwb_main_2012mar;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v13}, Lcom/google/android/maps/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v13

    .line 173
    invoke-static {v12, v13}, Lorg/cwb/cwb_utilities;->getAddressbyGeoPoint(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Address;

    move-result-object v9

    .line 176
    .local v9, mAddr:Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cwb/cwb_main_2012mar;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v12}, Lcom/google/android/maps/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v12

    if-nez v12, :cond_24

    .line 177
    sget-object v12, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 178
    const-string v13, "\u76ee\u524d\u4f4d\u7f6e\u7121\u6cd5\u4f7f\u7528, \u8acb\u7a0d\u5019\u518d\u8a66"

    const/4 v14, 0x0

    .line 177
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 178
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 180
    :cond_24
    if-nez v9, :cond_33

    .line 181
    sget-object v12, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 182
    const-string v13, "\u76ee\u524d\u4f4d\u7f6e\u7121\u6cd5\u4f7f\u7528, \u8acb\u7a0d\u5019\u518d\u8a66"

    const/4 v14, 0x0

    .line 181
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 182
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 225
    :goto_32
    return-void

    .line 184
    :cond_33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, distances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_39
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v2, v12, :cond_bb

    .line 196
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 197
    .local v10, tempValue:D
    const/4 v3, 0x0

    .line 198
    .local v3, index:I
    const/4 v2, 0x1

    :goto_4e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v2, v12, :cond_108

    .line 208
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->Area:Ljava/lang/String;

    const-string v13, "N"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12f

    .line 209
    const-string v12, "\u5317"

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;

    .line 219
    :cond_6c
    :goto_6c
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/cwb/cwb_main_2012mar;->selectedTownName:Ljava/lang/String;

    .line 220
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationID:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/cwb/cwb_main_2012mar;->selectedID:Ljava/lang/String;

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cwb/cwb_main_2012mar;->selectedTownName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lorg/cwb/cwb_constants;->observeStationName:Ljava/lang/String;

    .line 222
    const/4 v12, 0x0

    sput-boolean v12, Lorg/cwb/cwb_constants;->nowFirstTimeInitial:Z

    .line 223
    new-instance v12, Lorg/cwb/cwb_main_2012mar$JSONParseTask;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Void;

    invoke-virtual {v12, v13}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_32

    .line 187
    .end local v3           #index:I
    .end local v10           #tempValue:D
    :cond_bb
    invoke-virtual {v9}, Landroid/location/Address;->getLatitude()D

    move-result-wide v13

    .line 188
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->latitude:Ljava/lang/String;

    .line 187
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    sub-double v12, v13, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 188
    const-wide/high16 v14, 0x4000

    .line 187
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 190
    .local v5, lat2:D
    invoke-virtual {v9}, Landroid/location/Address;->getLongitude()D

    move-result-wide v13

    .line 191
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->longitude:Ljava/lang/String;

    .line 190
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    sub-double v12, v13, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 191
    const-wide/high16 v14, 0x4000

    .line 190
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .line 193
    .local v7, long2:D
    add-double v12, v5, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_39

    .line 199
    .end local v5           #lat2:D
    .end local v7           #long2:D
    .restart local v3       #index:I
    .restart local v10       #tempValue:D
    :cond_108
    const/4 v4, 0x1

    .local v4, j:I
    :goto_109
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_113

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4e

    .line 200
    :cond_113
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v12, v12, v10

    if-gez v12, :cond_12c

    .line 201
    move v3, v4

    .line 202
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 199
    :cond_12c
    add-int/lit8 v4, v4, 0x1

    goto :goto_109

    .line 210
    .end local v4           #j:I
    :cond_12f
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->Area:Ljava/lang/String;

    const-string v13, "C"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_149

    .line 211
    const-string v12, "\u4e2d"

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;

    goto/16 :goto_6c

    .line 212
    :cond_149
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->Area:Ljava/lang/String;

    const-string v13, "E"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_163

    .line 213
    const-string v12, "\u6771"

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;

    goto/16 :goto_6c

    .line 214
    :cond_163
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->Area:Ljava/lang/String;

    const-string v13, "S"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17d

    .line 215
    const-string v12, "\u5357"

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;

    goto/16 :goto_6c

    .line 216
    :cond_17d
    sget-object v12, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v12, v12, Lorg/cwb/cwb_main_2012mar$otherCityData;->Area:Ljava/lang/String;

    const-string v13, "I"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    .line 217
    const-string v12, "\u5916\u5cf6"

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;

    goto/16 :goto_6c
.end method

.method private showSelectionFirst()V
    .registers 5

    .prologue
    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 261
    const-string v2, "OK"

    new-instance v3, Lorg/cwb/cwb_main_2012mar$7;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_main_2012mar$7;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 269
    new-instance v2, Lorg/cwb/cwb_main_2012mar$8;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_main_2012mar$8;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 279
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v3, 0x7f030024

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_2012mar;->setContentView(I)V

    .line 58
    sget-object v3, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 59
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 60
    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 58
    iput-object v3, p0, Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;

    .line 62
    iget-object v3, p0, Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;

    const v4, 0x7f0801be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lorg/cwb/cwb_main_2012mar;->citySpinner:Landroid/widget/Spinner;

    .line 64
    iget-object v3, p0, Lorg/cwb/cwb_main_2012mar;->citySpinner:Landroid/widget/Spinner;

    new-instance v4, Lorg/cwb/cwb_main_2012mar$2;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_main_2012mar$2;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 75
    iget-boolean v3, p0, Lorg/cwb/cwb_main_2012mar;->bFirstTimeInit:Z

    if-nez v3, :cond_50

    .line 76
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 78
    const v3, 0x1090008

    sget-object v4, Lorg/cwb/cwb_main_2012mar;->cityNameList:[Ljava/lang/String;

    .line 76
    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 79
    .local v0, cityAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 80
    iget-object v3, p0, Lorg/cwb/cwb_main_2012mar;->citySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 81
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/cwb/cwb_main_2012mar;->bFirstTimeInit:Z

    .line 87
    .end local v0           #cityAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_50
    iget-object v3, p0, Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;

    const v4, 0x7f0801bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lorg/cwb/cwb_main_2012mar;->townSpinner:Landroid/widget/Spinner;

    .line 88
    iget-object v3, p0, Lorg/cwb/cwb_main_2012mar;->townSpinner:Landroid/widget/Spinner;

    new-instance v4, Lorg/cwb/cwb_main_2012mar$3;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_main_2012mar$3;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    const v3, 0x7f0801a5

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 103
    .local v2, selectOtherCityLayout:Landroid/widget/LinearLayout;
    new-instance v3, Lorg/cwb/cwb_main_2012mar$4;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_main_2012mar$4;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/MapView;

    iput-object v3, p0, Lorg/cwb/cwb_main_2012mar;->mv:Lcom/google/android/maps/MapView;

    .line 121
    new-instance v3, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v4, p0, Lorg/cwb/cwb_main_2012mar;->mv:Lcom/google/android/maps/MapView;

    invoke-direct {v3, p0, v4}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v3, p0, Lorg/cwb/cwb_main_2012mar;->mo:Lcom/google/android/maps/MyLocationOverlay;

    .line 122
    iget-object v3, p0, Lorg/cwb/cwb_main_2012mar;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v3}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 125
    const v3, 0x7f0800a9

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_main_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 126
    .local v1, pinSelf:Landroid/widget/ImageButton;
    new-instance v3, Lorg/cwb/cwb_main_2012mar$5;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_main_2012mar$5;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 750
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;

    .line 752
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 753
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar;->mv:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->removeAllViews()V

    .line 754
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 759
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 760
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 231
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 234
    :try_start_3
    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 235
    sget-boolean v2, Lorg/cwb/cwb_constants;->nowFirstTimeInitial:Z

    if-eqz v2, :cond_23

    .line 236
    sget-object v2, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    iput-object v2, p0, Lorg/cwb/cwb_main_2012mar;->selectedID:Ljava/lang/String;

    .line 237
    sget-object v2, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    sput-object v2, Lorg/cwb/cwb_constants;->observeStationName:Ljava/lang/String;

    .line 238
    new-instance v2, Lorg/cwb/cwb_main_2012mar$JSONParseTask;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    :goto_22
    return-void

    .line 240
    :cond_23
    new-instance v2, Lorg/cwb/cwb_main_2012mar$JSONParseTask;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_22

    .line 252
    :catch_2f
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 243
    .end local v1           #e:Ljava/lang/Exception;
    :cond_34
    :try_start_34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09006d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 245
    const-string v3, "OK"

    new-instance v4, Lorg/cwb/cwb_main_2012mar$6;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_main_2012mar$6;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_54} :catch_2f

    goto :goto_22
.end method
