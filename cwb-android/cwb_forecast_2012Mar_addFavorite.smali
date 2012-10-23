.class public Lorg/cwb/cwb_forecast_2012Mar_addFavorite;
.super Landroid/app/Activity;
.source "cwb_forecast_2012Mar_addFavorite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;,
        Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;,
        Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;,
        Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;

.field private static DATA_URL2:Ljava/lang/String;


# instance fields
.field private adapter:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

.field private bFirstTimeInit:Z

.field private citySpinner:Landroid/widget/Spinner;

.field private contentView:Landroid/view/View;

.field private favoList:Ljava/lang/String;

.field private favoListToken:[Ljava/lang/String;

.field private listView:Lorg/cwb/view/DraggableListView;

.field private mainDataLayout:Landroid/widget/LinearLayout;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;",
            ">;"
        }
    .end annotation
.end field

.field private result2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCityName:Ljava/lang/String;

.field private selectedID:Ljava/lang/String;

.field private selectedTownName:Ljava/lang/String;

.field private townSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 486
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=1"

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->DATA_URL:Ljava/lang/String;

    .line 487
    const-string v0, "http://app.cwb.gov.tw/ws/feed.php?userid=1b8df2a02611e9ec1aac&type=1&townid="

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->DATA_URL2:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->mainDataLayout:Landroid/widget/LinearLayout;

    .line 42
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    .line 43
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->citySpinner:Landroid/widget/Spinner;

    .line 44
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->townSpinner:Landroid/widget/Spinner;

    .line 45
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->contentView:Landroid/view/View;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->bFirstTimeInit:Z

    .line 409
    new-instance v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->adapter:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method private InitialDisplay()V
    .registers 9

    .prologue
    const v7, 0x1090009

    const v6, 0x1090008

    .line 412
    iget-boolean v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->bFirstTimeInit:Z

    if-nez v5, :cond_34

    .line 413
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_13

    .line 441
    :cond_12
    :goto_12
    return-void

    .line 416
    :cond_13
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 417
    .local v1, cityNameList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_5b

    .line 420
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 423
    .local v0, cityAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 424
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->citySpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 425
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->bFirstTimeInit:Z

    .line 428
    .end local v0           #cityAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #cityNameList:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_34
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_12

    .line 431
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 432
    .local v4, townNameList:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_45
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_6a

    .line 435
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 438
    .local v3, townAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 439
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->townSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_12

    .line 418
    .end local v3           #townAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4           #townNameList:[Ljava/lang/String;
    .restart local v1       #cityNameList:[Ljava/lang/String;
    :cond_5b
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->CountyName:Ljava/lang/String;

    aput-object v5, v1, v2

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 433
    .end local v1           #cityNameList:[Ljava/lang/String;
    .restart local v4       #townNameList:[Ljava/lang/String;
    :cond_6a
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->TownName:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_45
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->deleteSelf(I)V

    return-void
.end method

.method static synthetic access$10()Ljava/lang/String;
    .registers 1

    .prologue
    .line 486
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->DATA_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V
    .registers 1
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->showAddSelection()V

    return-void
.end method

.method static synthetic access$12(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Lorg/cwb/view/DraggableListView;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    return-object v0
.end method

.method static synthetic access$13(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedCityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedTownName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;[Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->adapter:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->getHttpData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V
    .registers 1
    .parameter

    .prologue
    .line 410
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->InitialDisplay()V

    return-void
.end method

.method static synthetic access$4(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedCityName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .registers 1

    .prologue
    .line 487
    sget-object v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->DATA_URL2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedTownName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedID:Ljava/lang/String;

    return-void
.end method

.method private deleteSelf(I)V
    .registers 12
    .parameter "index"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 294
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 295
    .local v0, asList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v2, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_8f

    .line 302
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 304
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    .line 305
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 307
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v6}, Lorg/cwb/view/DraggableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 312
    const-string v6, "favoriteList"

    invoke-virtual {p0, v6, v9}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 313
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 314
    .local v4, se:Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    .line 315
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    array-length v6, v6

    if-lt v6, v8, :cond_45

    .line 316
    const-string v6, ""

    iput-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    .line 317
    :cond_45
    const/4 v3, 0x0

    :goto_46
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_9c

    .line 322
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    array-length v6, v6

    if-lt v6, v8, :cond_d7

    .line 323
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    aget-object v6, v6, v9

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, data:[Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v6, v1, v6

    sput-object v6, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, v1, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    .line 326
    sput-boolean v8, Lorg/cwb/cwb_constants;->bNeedChangeDefaultWeatherBackground:Z

    .line 332
    .end local v1           #data:[Ljava/lang/String;
    :goto_7e
    const-string v6, "favoCity"

    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    if-nez v6, :cond_e2

    .line 336
    sput-boolean v9, Lorg/cwb/cwb_constants;->canFlip:Z

    .line 339
    :goto_8e
    return-void

    .line 299
    .end local v4           #se:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_8f
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 318
    .restart local v4       #se:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    :cond_9c
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    .line 319
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_d3

    .line 320
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    .line 317
    :cond_d3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_46

    .line 328
    :cond_d7
    const-string v6, ""

    sput-object v6, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    .line 329
    const-string v6, ""

    sput-object v6, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    .line 330
    sput-boolean v8, Lorg/cwb/cwb_constants;->bNeedChangeDefaultWeatherBackground:Z

    goto :goto_7e

    .line 338
    :cond_e2
    sput-boolean v8, Lorg/cwb/cwb_constants;->canFlip:Z

    goto :goto_8e
.end method

.method private getHttpData(Ljava/lang/String;)V
    .registers 15
    .parameter "url"

    .prologue
    .line 490
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 491
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 492
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 493
    .local v9, rp:Lorg/apache/http/HttpResponse;
    sget-object v11, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->DATA_URL:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 494
    iget-object v11, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 495
    :cond_1b
    sget-object v11, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->DATA_URL2:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_28

    .line 496
    iget-object v11, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 498
    :cond_28
    const/4 v6, 0x0

    .line 499
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_66

    .line 500
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 503
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 504
    .local v7, line:Ljava/lang/String;
    const-string v2, ""

    .line 505
    .local v2, content:Ljava/lang/String;
    :goto_4b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_67

    .line 509
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 511
    .local v8, object:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_57
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v5, v11, :cond_79

    .line 551
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 557
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_66
    :goto_66
    return-void

    .line 506
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    .line 512
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_79
    sget-object v11, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->DATA_URL:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d6

    .line 513
    new-instance v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    .line 515
    .local v0, citys:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 516
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 517
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "CountyID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 514
    iput-object v11, v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->CountyID:Ljava/lang/String;

    .line 520
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 521
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 522
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "CountyName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 519
    iput-object v11, v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->CountyName:Ljava/lang/String;

    .line 525
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 526
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 527
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownshipID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 524
    iput-object v11, v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->TownshipID:Ljava/lang/String;

    .line 529
    iget-object v11, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v0           #citys:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;
    :goto_d3
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 531
    :cond_d6
    new-instance v10, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;

    invoke-direct {v10, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    .line 533
    .local v10, towns:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 534
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 535
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownshipID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 532
    iput-object v11, v10, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->TownshipID:Ljava/lang/String;

    .line 538
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 539
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 540
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 537
    iput-object v11, v10, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->TownName:Ljava/lang/String;

    .line 543
    const-string v11, "Areas"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 544
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 545
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "zipcode"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 542
    iput-object v11, v10, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->zipcode:Ljava/lang/String;

    .line 547
    iget-object v11, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_128} :catch_129

    goto :goto_d3

    .line 554
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    .end local v10           #towns:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;
    :catch_129
    move-exception v3

    .line 555
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_66
.end method

.method private showAddSelection()V
    .registers 5

    .prologue
    .line 204
    invoke-static {p0}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "Please Check Network"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 207
    const-string v2, "OK"

    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$5;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$5;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 291
    :goto_25
    return-void

    .line 217
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    const-string v2, "OK"

    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 281
    new-instance v2, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$7;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$7;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_25
.end method


# virtual methods
.method public getData()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 185
    sget-boolean v1, Lorg/cwb/cwb_constants;->bNeedReloadFavoList:Z

    if-eqz v1, :cond_33

    .line 186
    sput-boolean v2, Lorg/cwb/cwb_constants;->bNeedReloadFavoList:Z

    .line 191
    const-string v1, "favoriteList"

    invoke-virtual {p0, v1, v2}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "favoCity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 194
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    .line 196
    :cond_24
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    if-eqz v1, :cond_33

    .line 197
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v1}, Lorg/cwb/view/DraggableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 200
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->setContentView(I)V

    .line 57
    const-string v2, "favoriteList"

    invoke-virtual {p0, v2, v4}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "favoCity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    if-eqz v2, :cond_e3

    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_e3

    .line 60
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;

    .line 65
    :goto_30
    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 66
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 67
    const v3, 0x7f03002b

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    iput-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->contentView:Landroid/view/View;

    .line 69
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->contentView:Landroid/view/View;

    const v3, 0x7f0801be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->citySpinner:Landroid/widget/Spinner;

    .line 71
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->citySpinner:Landroid/widget/Spinner;

    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 84
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->contentView:Landroid/view/View;

    const v3, 0x7f0801bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->townSpinner:Landroid/widget/Spinner;

    .line 85
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->townSpinner:Landroid/widget/Spinner;

    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$2;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$2;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    const v2, 0x7f0800a6

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 96
    .local v0, addIcon:Landroid/widget/ImageButton;
    new-instance v2, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$3;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$3;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v2, Lorg/cwb/view/DraggableListView;

    invoke-direct {v2, p0}, Lorg/cwb/view/DraggableListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    .line 105
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cwb/view/DraggableListView;->setCacheColorHint(I)V

    .line 106
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Lorg/cwb/view/DraggableListView;->setSelector(I)V

    .line 107
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v2, v4}, Lorg/cwb/view/DraggableListView;->setDividerHeight(I)V

    .line 108
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v2, v4}, Lorg/cwb/view/DraggableListView;->setDraggable(Z)V

    .line 109
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->adapter:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

    invoke-virtual {v2, v3}, Lorg/cwb/view/DraggableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$4;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$4;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    invoke-virtual {v2, v3}, Lorg/cwb/view/DraggableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    const v2, 0x7f0800a7

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->mainDataLayout:Landroid/widget/LinearLayout;

    .line 160
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->mainDataLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;

    sput-object v2, Lorg/cwb/cwb_forecast_2012Mar_group;->listView:Lorg/cwb/view/DraggableListView;

    .line 162
    sput-object p0, Lorg/cwb/cwb_forecast_2012Mar_group;->self:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    .line 166
    new-instance v2, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;

    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->DATA_URL:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    sget-boolean v2, Lorg/cwb/cwb_constants;->canFlip:Z

    if-nez v2, :cond_e2

    .line 169
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->showAddSelection()V

    .line 170
    :cond_e2
    return-void

    .line 62
    .end local v0           #addIcon:Landroid/widget/ImageButton;
    :cond_e3
    sput-boolean v4, Lorg/cwb/cwb_constants;->canFlip:Z

    goto/16 :goto_30
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 562
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 563
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 568
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 569
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    return-void
.end method
