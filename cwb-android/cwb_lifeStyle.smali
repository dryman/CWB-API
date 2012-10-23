.class public Lorg/cwb/cwb_lifeStyle;
.super Lcom/google/android/maps/MapActivity;
.source "cwb_lifeStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_lifeStyle$JSONParseTask;,
        Lorg/cwb/cwb_lifeStyle$lifeWeatherData;,
        Lorg/cwb/cwb_lifeStyle$myTaskClass;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private mo:Lcom/google/android/maps/MyLocationOverlay;

.field private mv:Lcom/google/android/maps/MapView;

.field private myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_lifeStyle$lifeWeatherData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 548
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=C&townid="

    sput-object v0, Lorg/cwb/cwb_lifeStyle;->DATA_URL:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method private InitDisplay()V
    .registers 10

    .prologue
    const v8, 0x7f0200be

    const/4 v7, 0x0

    .line 276
    iget-object v5, p0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2d

    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09006d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 279
    const-string v6, "OK"

    new-instance v7, Lorg/cwb/cwb_lifeStyle$4;

    invoke-direct {v7, p0}, Lorg/cwb/cwb_lifeStyle$4;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 284
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 338
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_2c
    return-void

    .line 288
    :cond_2d
    const v5, 0x7f08014f

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    .local v1, currentPosition:Landroid/widget/TextView;
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "area"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c8

    .line 291
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "area"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 290
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_4f
    const v5, 0x7f080041

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 296
    .local v2, firstDayData:Landroid/widget/Button;
    const v5, 0x7f080042

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 297
    .local v3, secondDayData:Landroid/widget/Button;
    const v5, 0x7f080043

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 299
    .local v4, tomoDayData:Landroid/widget/Button;
    const v5, 0x7f0200bf

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 300
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 301
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 302
    iget-object v5, p0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    iget-object v5, v5, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/cwb/cwb_lifeStyle;->getTypeString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 303
    new-instance v5, Lorg/cwb/cwb_lifeStyle$5;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle$5;-><init>(Lorg/cwb/cwb_lifeStyle;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v5, p0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    iget-object v5, v5, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/cwb/cwb_lifeStyle;->getTypeString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 314
    new-instance v5, Lorg/cwb/cwb_lifeStyle$6;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle$6;-><init>(Lorg/cwb/cwb_lifeStyle;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v5, p0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    iget-object v5, v5, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/cwb/cwb_lifeStyle;->getTypeString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 325
    new-instance v5, Lorg/cwb/cwb_lifeStyle$7;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle$7;-><init>(Lorg/cwb/cwb_lifeStyle;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-direct {p0, v7}, Lorg/cwb/cwb_lifeStyle;->setViewData(I)V

    goto/16 :goto_2c

    .line 293
    .end local v2           #firstDayData:Landroid/widget/Button;
    .end local v3           #secondDayData:Landroid/widget/Button;
    .end local v4           #tomoDayData:Landroid/widget/Button;
    :cond_c8
    iget-object v5, p0, Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    iget-object v5, v5, Lorg/cwb/cwb_lifeStyle$myTaskClass;->countyName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f
.end method

.method static synthetic access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cwb/cwb_lifeStyle;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_lifeStyle;)V
    .registers 1
    .parameter

    .prologue
    .line 550
    invoke-direct {p0}, Lorg/cwb/cwb_lifeStyle;->getHttpData()V

    return-void
.end method

.method static synthetic access$3(Lorg/cwb/cwb_lifeStyle;)V
    .registers 1
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lorg/cwb/cwb_lifeStyle;->InitDisplay()V

    return-void
.end method

.method static synthetic access$4(Lorg/cwb/cwb_lifeStyle;)Lorg/cwb/cwb_lifeStyle$myTaskClass;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cwb/cwb_lifeStyle;)Lcom/google/android/maps/MyLocationOverlay;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle;->mo:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$6(Lorg/cwb/cwb_lifeStyle;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lorg/cwb/cwb_lifeStyle;->setViewData(I)V

    return-void
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 552
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 553
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lorg/cwb/cwb_lifeStyle;->DATA_URL:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    iget-object v11, v11, Lorg/cwb/cwb_lifeStyle$myTaskClass;->countyID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 555
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 557
    .local v9, rp:Lorg/apache/http/HttpResponse;
    iget-object v10, p0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 558
    const/4 v5, 0x0

    .line 559
    .local v5, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_68

    .line 560
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 563
    .restart local v5       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 564
    .local v7, line:Ljava/lang/String;
    const-string v1, ""

    .line 565
    .local v1, content:Ljava/lang/String;
    :goto_4d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_69

    .line 569
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 571
    .local v8, object:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_59
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_7b

    .line 654
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 660
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_68
    :goto_68
    return-void

    .line 566
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_69
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    .line 572
    .restart local v4       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_7b
    new-instance v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    invoke-direct {v6, p0}, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    .line 573
    .local v6, lifeData:Lorg/cwb/cwb_lifeStyle$lifeWeatherData;
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 574
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 575
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Cname"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 573
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Cname:Ljava/lang/String;

    .line 577
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 578
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 579
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Issue_Time"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 576
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Issue_Time:Ljava/lang/String;

    .line 581
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 582
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 583
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "From_Time"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 580
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->From_Time:Ljava/lang/String;

    .line 585
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 586
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 587
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "To_Time"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 584
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->To_Time:Ljava/lang/String;

    .line 589
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 590
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 591
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 588
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    .line 593
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 594
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 595
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Dressing"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 592
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Dressing:Ljava/lang/String;

    .line 597
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 598
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 599
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Sun_dry"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 596
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Sun_dry:Ljava/lang/String;

    .line 601
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 602
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 603
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Outdoor"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 600
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Outdoor:Ljava/lang/String;

    .line 605
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 606
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 607
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Drive"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 604
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Drive:Ljava/lang/String;

    .line 609
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 610
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 611
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Agri"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 608
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Agri:Ljava/lang/String;

    .line 613
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 614
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 615
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Works"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 612
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Works:Ljava/lang/String;

    .line 617
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 618
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 619
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Commer"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 616
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Commer:Ljava/lang/String;

    .line 621
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 622
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 623
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Dressing_text"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 620
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Dressing_text:Ljava/lang/String;

    .line 627
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 628
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 629
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Sun_dry_text"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 626
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Sun_dry_text:Ljava/lang/String;

    .line 631
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 632
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 633
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Outdoor_text"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 630
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Outdoor_text:Ljava/lang/String;

    .line 635
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 636
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 637
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Drive_text"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 634
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Drive_text:Ljava/lang/String;

    .line 639
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 640
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 641
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Agri_text"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 638
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Agri_text:Ljava/lang/String;

    .line 643
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 644
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 645
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Works_text"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 642
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Works_text:Ljava/lang/String;

    .line 647
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 648
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 649
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Commer_text"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 646
    iput-object v10, v6, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Commer_text:Ljava/lang/String;

    .line 651
    iget-object v10, p0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24d} :catch_251

    .line 571
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_59

    .line 657
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #lifeData:Lorg/cwb/cwb_lifeStyle$lifeWeatherData;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_251
    move-exception v2

    .line 658
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_68
.end method

.method private getResourceFromType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "iconType"
    .parameter "dayType"
    .parameter "resourceType"
    .parameter "number"

    .prologue
    const/4 v3, 0x2

    .line 395
    const-string v0, "drawable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b1

    .line 396
    const-string v0, "Dressing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 397
    const-string v0, "TN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "TMN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 398
    :cond_21
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dressing"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_47

    .end local p4
    :goto_32
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 469
    :goto_46
    return v0

    .line 399
    .restart local p4
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_32

    .line 402
    :cond_57
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dressing"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_7d

    .end local p4
    :goto_68
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_46

    .restart local p4
    :cond_7d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_68

    .line 406
    :cond_8d
    const-string v0, "Sun_dry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 407
    const-string v0, "TN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    const-string v0, "TMN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 408
    :cond_a5
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sun_dry"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_cc

    .end local p4
    :goto_b6
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_cc
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_b6

    .line 412
    :cond_dc
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sun_dry"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_103

    .end local p4
    :goto_ed
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_ed

    .line 416
    :cond_113
    const-string v0, "Outdoor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 417
    const-string v0, "TN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12b

    const-string v0, "TMN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 418
    :cond_12b
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "outdoor_night"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_152

    .end local p4
    :goto_13c
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_13c

    .line 422
    :cond_162
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "outdoor_day"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_189

    .end local p4
    :goto_173
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_173

    .line 426
    :cond_199
    const-string v0, "Drive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 427
    const-string v0, "TN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b1

    const-string v0, "TMN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 428
    :cond_1b1
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drive_night"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1d8

    .end local p4
    :goto_1c2
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_1d8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_1c2

    .line 432
    :cond_1e8
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drive_day"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_20f

    .end local p4
    :goto_1f9
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_20f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_1f9

    .line 436
    :cond_21f
    const-string v0, "Agri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 437
    const-string v0, "TN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_237

    const-string v0, "TMN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26e

    .line 438
    :cond_237
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "agri_night"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_25e

    .end local p4
    :goto_248
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_25e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_248

    .line 442
    :cond_26e
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "agri_day"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_295

    .end local p4
    :goto_27f
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_27f

    .line 446
    :cond_2a5
    const-string v0, "Works"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32b

    .line 447
    const-string v0, "TN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bd

    const-string v0, "TMN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f4

    .line 448
    :cond_2bd
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "works_night"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_2e4

    .end local p4
    :goto_2ce
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_2e4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_2ce

    .line 452
    :cond_2f4
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "works_day"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_31b

    .end local p4
    :goto_305
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_31b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_305

    .line 456
    :cond_32b
    const-string v0, "Commer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b1

    .line 457
    const-string v0, "TN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_343

    const-string v0, "TMN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37a

    .line 458
    :cond_343
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commer_night"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_36a

    .end local p4
    :goto_354
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_36a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_354

    .line 462
    :cond_37a
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commer_day"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_3a1

    .end local p4
    :goto_38b
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual {p0}, Lorg/cwb/cwb_lifeStyle;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_46

    .restart local p4
    :cond_3a1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_38b

    .line 469
    :cond_3b1
    const/4 v0, 0x0

    goto/16 :goto_46
.end method

.method private getTypeString(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 473
    const-string v0, "TN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 474
    const v0, 0x7f090042

    .line 480
    :goto_b
    return v0

    .line 475
    :cond_c
    const-string v0, "TD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 476
    const v0, 0x7f090041

    goto :goto_b

    .line 477
    :cond_18
    const-string v0, "TM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 478
    const v0, 0x7f090043

    goto :goto_b

    .line 480
    :cond_24
    const v0, 0x7f090044

    goto :goto_b
.end method

.method private setViewData(I)V
    .registers 25
    .parameter "whichDay"

    .prologue
    .line 341
    const v19, 0x7f080150

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 343
    .local v9, Dressing:Landroid/widget/ImageView;
    const-string v20, "Dressing"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 344
    const-string v22, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Dressing:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle;->getResourceFromType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    const v19, 0x7f080152

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 346
    .local v10, Dressing_text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Dressing_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const v19, 0x7f080153

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 352
    .local v15, Sun_dry:Landroid/widget/ImageView;
    const-string v20, "Sun_dry"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 353
    const-string v22, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Sun_dry:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle;->getResourceFromType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    const v19, 0x7f080155

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 355
    .local v16, Sun_dry_text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Sun_dry_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const v19, 0x7f080156

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 359
    .local v13, Outdoor:Landroid/widget/ImageView;
    const-string v20, "Outdoor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 360
    const-string v22, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Outdoor:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle;->getResourceFromType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    const v19, 0x7f080158

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 362
    .local v14, Outdoor_text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Outdoor_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    const v19, 0x7f080159

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 366
    .local v11, Drive:Landroid/widget/ImageView;
    const-string v20, "Drive"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 367
    const-string v22, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Drive:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle;->getResourceFromType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    const v19, 0x7f08015b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 369
    .local v12, Drive_text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Drive_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const v19, 0x7f08015c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 373
    .local v5, Agri:Landroid/widget/ImageView;
    const-string v20, "Agri"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 374
    const-string v22, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Agri:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle;->getResourceFromType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    const v19, 0x7f08015e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 376
    .local v6, Agri_text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Agri_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const v19, 0x7f08015f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 380
    .local v17, Works:Landroid/widget/ImageView;
    const-string v20, "Works"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 381
    const-string v22, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Works:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle;->getResourceFromType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    const v19, 0x7f080161

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 383
    .local v18, Works_text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Works_text:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const v19, 0x7f080162

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 387
    .local v7, Commer:Landroid/widget/ImageView;
    const-string v20, "Commer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 388
    const-string v22, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Commer:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cwb/cwb_lifeStyle;->getResourceFromType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    const v19, 0x7f080164

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 390
    .local v8, Commer_text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle;->result:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$lifeWeatherData;->Commer_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_lifeStyle;->setContentView(I)V

    .line 44
    new-instance v2, Lorg/cwb/cwb_lifeStyle$myTaskClass;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    iput-object v2, p0, Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    .line 52
    const v2, 0x7f0800ad

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 53
    .local v1, selectOtherCity:Landroid/widget/LinearLayout;
    new-instance v2, Lorg/cwb/cwb_lifeStyle$1;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_lifeStyle$1;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v2, 0x7f080096

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/MapView;

    iput-object v2, p0, Lorg/cwb/cwb_lifeStyle;->mv:Lcom/google/android/maps/MapView;

    .line 77
    new-instance v2, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle;->mv:Lcom/google/android/maps/MapView;

    invoke-direct {v2, p0, v3}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v2, p0, Lorg/cwb/cwb_lifeStyle;->mo:Lcom/google/android/maps/MyLocationOverlay;

    .line 78
    iget-object v2, p0, Lorg/cwb/cwb_lifeStyle;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 81
    const v2, 0x7f0800a9

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_lifeStyle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 82
    .local v0, pinSelf:Landroid/widget/ImageButton;
    new-instance v2, Lorg/cwb/cwb_lifeStyle$2;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_lifeStyle$2;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 265
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 266
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 272
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 242
    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 244
    sget-boolean v2, Lorg/cwb/cwb_constants;->lifeFirstTimeInitial:Z

    if-eqz v2, :cond_2e

    .line 245
    iget-object v2, p0, Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    sget-object v3, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    iput-object v3, v2, Lorg/cwb/cwb_lifeStyle$myTaskClass;->countyID:Ljava/lang/String;

    .line 246
    sget-object v2, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, tempTitle:[Ljava/lang/String;
    iget-object v2, p0, Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    aget-object v3, v1, v4

    iput-object v3, v2, Lorg/cwb/cwb_lifeStyle$myTaskClass;->countyName:Ljava/lang/String;

    .line 248
    new-instance v2, Lorg/cwb/cwb_lifeStyle$JSONParseTask;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_lifeStyle$JSONParseTask;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    .end local v1           #tempTitle:[Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void

    .line 251
    :cond_2f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09006d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 253
    const-string v3, "OK"

    new-instance v4, Lorg/cwb/cwb_lifeStyle$3;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_lifeStyle$3;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_2e
.end method
