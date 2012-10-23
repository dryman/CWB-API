.class public Lorg/cwb/cwb_forecast_week;
.super Landroid/app/Activity;
.source "cwb_forecast_week.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast_week$ForecastWeekTask;
    }
.end annotation


# static fields
.field public static final AUTH_36:Ljava/lang/String; = "http://www.cwb.gov.tw/wwwgis/kml/auth_36.xml"

.field public static final AUTH_WEEK:Ljava/lang/String; = "http://www.cwb.gov.tw/wwwgis/kml/auth_week.xml"

.field private static act:Landroid/app/Activity;

.field private static daylistH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static daylistL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static listH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static listL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private auth36:Ljava/io/InputStream;

.field private authWeek:Ljava/io/InputStream;

.field private dialog:Landroid/app/ProgressDialog;

.field private travels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lorg/cwb/cwb_forecast_week;->daylistL:Ljava/util/ArrayList;

    .line 43
    sput-object v0, Lorg/cwb/cwb_forecast_week;->daylistH:Ljava/util/ArrayList;

    .line 44
    sput-object v0, Lorg/cwb/cwb_forecast_week;->listL:Ljava/util/ArrayList;

    .line 45
    sput-object v0, Lorg/cwb/cwb_forecast_week;->listH:Ljava/util/ArrayList;

    .line 46
    sput-object v0, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_forecast_week;->TAG:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lorg/cwb/cwb_forecast_week;->auth36:Ljava/io/InputStream;

    .line 41
    iput-object v1, p0, Lorg/cwb/cwb_forecast_week;->authWeek:Ljava/io/InputStream;

    .line 47
    iput-object v1, p0, Lorg/cwb/cwb_forecast_week;->dialog:Landroid/app/ProgressDialog;

    .line 48
    iput-object v1, p0, Lorg/cwb/cwb_forecast_week;->travels:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "dURL"

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 326
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 327
    .local v2, ucon:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 331
    .end local v2           #ucon:Ljava/net/URLConnection;
    .end local v3           #url:Ljava/net/URL;
    :goto_e
    return-object v1

    .line 328
    :catch_f
    move-exception v0

    .line 329
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/cwb/cwb_forecast_week;->TAG:Ljava/lang/String;

    const-string v5, "DownloadFromUrl"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private static GetId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "str"
    .parameter "type"

    .prologue
    .line 335
    sget-object v0, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private HasNetwork()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_week;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 340
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 341
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 342
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 343
    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method private InitialDisplay()V
    .registers 6

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_week;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "area"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, area:Ljava/lang/String;
    const v3, 0x7f08010e

    invoke-virtual {p0, v3}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, textArea:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0, v0}, Lorg/cwb/cwb_forecast_week;->ShowToday(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, week_travel:[Ljava/lang/String;
    if-eqz v2, :cond_31

    .line 104
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/cwb/cwb_forecast_week;->ShowWeek(Ljava/lang/String;)V

    .line 105
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lorg/cwb/cwb_forecast_week;->ShowNear(Ljava/lang/String;)V

    .line 107
    :cond_31
    iget-object v3, p0, Lorg/cwb/cwb_forecast_week;->dialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_3d

    .line 108
    iget-object v3, p0, Lorg/cwb/cwb_forecast_week;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/cwb/cwb_forecast_week;->dialog:Landroid/app/ProgressDialog;

    .line 111
    :cond_3d
    return-void
.end method

.method private ShowNear(Ljava/lang/String;)V
    .registers 10
    .parameter "travelArea"

    .prologue
    .line 274
    iget-object v5, p0, Lorg/cwb/cwb_forecast_week;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "travelArea="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const v5, 0x7f080140

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 276
    .local v0, layout:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lorg/cwb/cwb_forecast_week;->travels:Ljava/util/ArrayList;

    if-eqz v5, :cond_2d

    .line 277
    iget-object v5, p0, Lorg/cwb/cwb_forecast_week;->travels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_42

    .line 279
    :cond_2d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/cwb/cwb_forecast_week;->travels:Ljava/util/ArrayList;

    .line 280
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v2, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_3b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 303
    return-void

    .line 277
    .end local v2           #st:Ljava/util/StringTokenizer;
    :cond_42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, view:Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_27

    .line 282
    .end local v4           #view:Landroid/widget/TextView;
    .restart local v2       #st:Ljava/util/StringTokenizer;
    :cond_4c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .local v3, travel:Ljava/lang/String;
    iget-object v5, p0, Lorg/cwb/cwb_forecast_week;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "travel="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 284
    .local v1, near:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/16 v5, -0x8000

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    const/high16 v5, 0x41a0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 287
    new-instance v5, Lorg/cwb/cwb_forecast_week$1;

    invoke-direct {v5, p0, v3}, Lorg/cwb/cwb_forecast_week$1;-><init>(Lorg/cwb/cwb_forecast_week;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v5, p0, Lorg/cwb/cwb_forecast_week;->travels:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method private ShowToday(Ljava/lang/String;)[Ljava/lang/String;
    .registers 37
    .parameter "area"

    .prologue
    .line 113
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 115
    .local v7, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_4
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 116
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_week;->auth36:Ljava/io/InputStream;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 117
    .local v5, dom:Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v17

    .line 119
    .local v17, root:Lorg/w3c/dom/Element;
    const-string v32, "ForecastTime"

    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 120
    .local v16, publish:Lorg/w3c/dom/NodeList;
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 121
    .local v15, pub:Lorg/w3c/dom/Node;
    const v32, 0x7f080110

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 124
    .local v23, textPubTime:Landroid/widget/TextView;
    const-string v32, "ForecastPer1"

    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 125
    .local v24, time1:Lorg/w3c/dom/NodeList;
    const/16 v32, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    check-cast v32, Lorg/w3c/dom/Element;

    const-string v33, "Type"

    invoke-interface/range {v32 .. v33}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 126
    .local v27, type1:Ljava/lang/String;
    const v32, 0x7f080113

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 127
    .local v20, text1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/cwb/cwb_forecast_week;->getTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const-string v32, "ForecastPer2"

    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 129
    .local v25, time2:Lorg/w3c/dom/NodeList;
    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    check-cast v32, Lorg/w3c/dom/Element;

    const-string v33, "Type"

    invoke-interface/range {v32 .. v33}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 130
    .local v28, type2:Ljava/lang/String;
    const v32, 0x7f080119

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 131
    .local v21, text2:Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/cwb/cwb_forecast_week;->getTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const-string v32, "ForecastPer3"

    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 133
    .local v26, time3:Lorg/w3c/dom/NodeList;
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    check-cast v32, Lorg/w3c/dom/Element;

    const-string v33, "Type"

    invoke-interface/range {v32 .. v33}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 134
    .local v29, type3:Ljava/lang/String;
    const v32, 0x7f08011f

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 135
    .local v22, text3:Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/cwb/cwb_forecast_week;->getTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v32, "Area"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 139
    .local v12, nl:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_e4
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-lt v8, v0, :cond_ef

    .line 213
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #dom:Lorg/w3c/dom/Document;
    .end local v8           #i:I
    .end local v12           #nl:Lorg/w3c/dom/NodeList;
    .end local v15           #pub:Lorg/w3c/dom/Node;
    .end local v16           #publish:Lorg/w3c/dom/NodeList;
    .end local v17           #root:Lorg/w3c/dom/Element;
    .end local v20           #text1:Landroid/widget/TextView;
    .end local v21           #text2:Landroid/widget/TextView;
    .end local v22           #text3:Landroid/widget/TextView;
    .end local v23           #textPubTime:Landroid/widget/TextView;
    .end local v24           #time1:Lorg/w3c/dom/NodeList;
    .end local v25           #time2:Lorg/w3c/dom/NodeList;
    .end local v26           #time3:Lorg/w3c/dom/NodeList;
    .end local v27           #type1:Ljava/lang/String;
    .end local v28           #type2:Ljava/lang/String;
    .end local v29           #type3:Ljava/lang/String;
    :goto_ec
    const/16 v32, 0x0

    :goto_ee
    return-object v32

    .line 140
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #dom:Lorg/w3c/dom/Document;
    .restart local v8       #i:I
    .restart local v12       #nl:Lorg/w3c/dom/NodeList;
    .restart local v15       #pub:Lorg/w3c/dom/Node;
    .restart local v16       #publish:Lorg/w3c/dom/NodeList;
    .restart local v17       #root:Lorg/w3c/dom/Element;
    .restart local v20       #text1:Landroid/widget/TextView;
    .restart local v21       #text2:Landroid/widget/TextView;
    .restart local v22       #text3:Landroid/widget/TextView;
    .restart local v23       #textPubTime:Landroid/widget/TextView;
    .restart local v24       #time1:Lorg/w3c/dom/NodeList;
    .restart local v25       #time2:Lorg/w3c/dom/NodeList;
    .restart local v26       #time3:Lorg/w3c/dom/NodeList;
    .restart local v27       #type1:Ljava/lang/String;
    .restart local v28       #type2:Ljava/lang/String;
    .restart local v29       #type3:Ljava/lang/String;
    :cond_ef
    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 141
    .local v13, node:Lorg/w3c/dom/Node;
    instance-of v0, v13, Lorg/w3c/dom/Element;

    move/from16 v32, v0

    if-eqz v32, :cond_188

    .line 142
    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 143
    .local v3, child:Lorg/w3c/dom/Element;
    const-string v32, "name"

    move-object/from16 v0, v32

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 144
    .local v30, value:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_188

    .line 145
    const-string v32, "Data"

    move-object/from16 v0, v32

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 146
    .local v4, data:Lorg/w3c/dom/NodeList;
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 147
    .local v11, n:Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v19

    .line 148
    .local v19, tempL:Lorg/w3c/dom/Node;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v18

    .line 149
    .local v18, tempH:Lorg/w3c/dom/Node;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v31

    .line 150
    .local v31, weather:Lorg/w3c/dom/Node;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 151
    .local v9, image:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v14

    .line 152
    .local v14, pop:Lorg/w3c/dom/Node;
    const v32, 0x7f080112

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 206
    .local v10, iv_icon:Landroid/widget/ImageView;
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string v34, "FWeek_area"

    move-object/from16 v0, v34

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const-string v34, "FTravel_area"

    move-object/from16 v0, v34

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_174} :catch_176

    goto/16 :goto_ee

    .line 210
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #child:Lorg/w3c/dom/Element;
    .end local v4           #data:Lorg/w3c/dom/NodeList;
    .end local v5           #dom:Lorg/w3c/dom/Document;
    .end local v8           #i:I
    .end local v9           #image:Lorg/w3c/dom/Node;
    .end local v10           #iv_icon:Landroid/widget/ImageView;
    .end local v11           #n:Lorg/w3c/dom/Node;
    .end local v12           #nl:Lorg/w3c/dom/NodeList;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v14           #pop:Lorg/w3c/dom/Node;
    .end local v15           #pub:Lorg/w3c/dom/Node;
    .end local v16           #publish:Lorg/w3c/dom/NodeList;
    .end local v17           #root:Lorg/w3c/dom/Element;
    .end local v18           #tempH:Lorg/w3c/dom/Node;
    .end local v19           #tempL:Lorg/w3c/dom/Node;
    .end local v20           #text1:Landroid/widget/TextView;
    .end local v21           #text2:Landroid/widget/TextView;
    .end local v22           #text3:Landroid/widget/TextView;
    .end local v23           #textPubTime:Landroid/widget/TextView;
    .end local v24           #time1:Lorg/w3c/dom/NodeList;
    .end local v25           #time2:Lorg/w3c/dom/NodeList;
    .end local v26           #time3:Lorg/w3c/dom/NodeList;
    .end local v27           #type1:Ljava/lang/String;
    .end local v28           #type2:Ljava/lang/String;
    .end local v29           #type3:Ljava/lang/String;
    .end local v30           #value:Ljava/lang/String;
    .end local v31           #weather:Lorg/w3c/dom/Node;
    :catch_176
    move-exception v6

    .line 211
    .local v6, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_week;->TAG:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "ShowToday"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ec

    .line 139
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #dom:Lorg/w3c/dom/Document;
    .restart local v8       #i:I
    .restart local v12       #nl:Lorg/w3c/dom/NodeList;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v15       #pub:Lorg/w3c/dom/Node;
    .restart local v16       #publish:Lorg/w3c/dom/NodeList;
    .restart local v17       #root:Lorg/w3c/dom/Element;
    .restart local v20       #text1:Landroid/widget/TextView;
    .restart local v21       #text2:Landroid/widget/TextView;
    .restart local v22       #text3:Landroid/widget/TextView;
    .restart local v23       #textPubTime:Landroid/widget/TextView;
    .restart local v24       #time1:Lorg/w3c/dom/NodeList;
    .restart local v25       #time2:Lorg/w3c/dom/NodeList;
    .restart local v26       #time3:Lorg/w3c/dom/NodeList;
    .restart local v27       #type1:Ljava/lang/String;
    .restart local v28       #type2:Ljava/lang/String;
    .restart local v29       #type3:Ljava/lang/String;
    :cond_188
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e4
.end method

.method private ShowWeek(Ljava/lang/String;)V
    .registers 30
    .parameter "weekArea"

    .prologue
    .line 217
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 219
    .local v10, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_4
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 220
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_week;->authWeek:Ljava/io/InputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 221
    .local v7, dom:Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v20

    .line 223
    .local v20, root:Lorg/w3c/dom/Element;
    const-string v26, "ForecastTime"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 224
    .local v19, publish:Lorg/w3c/dom/NodeList;
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 225
    .local v18, pub:Lorg/w3c/dom/Node;
    const v26, 0x7f080123

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 228
    .local v23, textPubTime:Landroid/widget/TextView;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v5, date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v17

    .line 230
    .local v17, periods:Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 231
    .local v9, element:Lorg/w3c/dom/Element;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 232
    .local v6, days:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4b
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-lt v11, v0, :cond_67

    .line 238
    const-string v26, "Area"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 239
    .local v15, nl:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    :goto_5e
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-lt v11, v0, :cond_6d

    .line 272
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #days:Lorg/w3c/dom/NodeList;
    .end local v7           #dom:Lorg/w3c/dom/Document;
    .end local v9           #element:Lorg/w3c/dom/Element;
    .end local v11           #i:I
    .end local v15           #nl:Lorg/w3c/dom/NodeList;
    .end local v17           #periods:Lorg/w3c/dom/Node;
    .end local v18           #pub:Lorg/w3c/dom/Node;
    .end local v19           #publish:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v23           #textPubTime:Landroid/widget/TextView;
    :cond_66
    :goto_66
    return-void

    .line 233
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #days:Lorg/w3c/dom/NodeList;
    .restart local v7       #dom:Lorg/w3c/dom/Document;
    .restart local v9       #element:Lorg/w3c/dom/Element;
    .restart local v11       #i:I
    .restart local v17       #periods:Lorg/w3c/dom/Node;
    .restart local v18       #pub:Lorg/w3c/dom/Node;
    .restart local v19       #publish:Lorg/w3c/dom/NodeList;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v23       #textPubTime:Landroid/widget/TextView;
    :cond_67
    invoke-interface {v6, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 232
    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 240
    .restart local v15       #nl:Lorg/w3c/dom/NodeList;
    :cond_6d
    invoke-interface {v15, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 241
    .local v16, node:Lorg/w3c/dom/Node;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/w3c/dom/Element;

    move/from16 v26, v0

    if-eqz v26, :cond_e9

    .line 242
    move-object/from16 v0, v16

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 243
    .local v3, child:Lorg/w3c/dom/Element;
    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 244
    .local v24, value:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e9

    .line 245
    const-string v26, "Data"

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 246
    .local v4, data:Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_99
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_66

    .line 247
    invoke-interface {v4, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    .line 248
    .local v14, n:Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v22

    .line 249
    .local v22, tempL:Lorg/w3c/dom/Node;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v21

    .line 250
    .local v21, tempH:Lorg/w3c/dom/Node;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v25

    .line 251
    .local v25, weather:Lorg/w3c/dom/Node;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v12

    .line 252
    .local v12, image:Lorg/w3c/dom/Node;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "f_week_icon"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v27, v13, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "id"

    invoke-static/range {v26 .. v27}, Lorg/cwb/cwb_forecast_week;->GetId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_week;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e6} :catch_ed

    .line 246
    add-int/lit8 v13, v13, 0x1

    goto :goto_99

    .line 239
    .end local v3           #child:Lorg/w3c/dom/Element;
    .end local v4           #data:Lorg/w3c/dom/NodeList;
    .end local v12           #image:Lorg/w3c/dom/Node;
    .end local v13           #j:I
    .end local v14           #n:Lorg/w3c/dom/Node;
    .end local v21           #tempH:Lorg/w3c/dom/Node;
    .end local v22           #tempL:Lorg/w3c/dom/Node;
    .end local v24           #value:Ljava/lang/String;
    .end local v25           #weather:Lorg/w3c/dom/Node;
    :cond_e9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5e

    .line 269
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #days:Lorg/w3c/dom/NodeList;
    .end local v7           #dom:Lorg/w3c/dom/Document;
    .end local v9           #element:Lorg/w3c/dom/Element;
    .end local v11           #i:I
    .end local v15           #nl:Lorg/w3c/dom/NodeList;
    .end local v16           #node:Lorg/w3c/dom/Node;
    .end local v17           #periods:Lorg/w3c/dom/Node;
    .end local v18           #pub:Lorg/w3c/dom/Node;
    .end local v19           #publish:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v23           #textPubTime:Landroid/widget/TextView;
    :catch_ed
    move-exception v8

    .line 270
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_week;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "ShowWeek"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_week;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lorg/cwb/cwb_forecast_week;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_forecast_week;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cwb/cwb_forecast_week;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_forecast_week;)Ljava/io/InputStream;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lorg/cwb/cwb_forecast_week;->auth36:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_forecast_week;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lorg/cwb/cwb_forecast_week;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/cwb/cwb_forecast_week;Ljava/io/InputStream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lorg/cwb/cwb_forecast_week;->auth36:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$5(Lorg/cwb/cwb_forecast_week;)Ljava/io/InputStream;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cwb/cwb_forecast_week;->authWeek:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$6(Lorg/cwb/cwb_forecast_week;Ljava/io/InputStream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lorg/cwb/cwb_forecast_week;->authWeek:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$7(Lorg/cwb/cwb_forecast_week;)V
    .registers 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_week;->InitialDisplay()V

    return-void
.end method

.method private getTimeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 347
    const-string v0, ""

    .line 348
    .local v0, ret:Ljava/lang/String;
    const-string v1, "TD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_forecast_week;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_11
    const-string v1, "TN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_forecast_week;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_20
    const-string v1, "TM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_forecast_week;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_2f
    const-string v1, "TMN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_forecast_week;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_3e
    return-object v0
.end method

.method public static refreshData()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    sget-object v0, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    check-cast v0, Lorg/cwb/cwb_forecast_week;

    .line 92
    .local v0, x:Lorg/cwb/cwb_forecast_week;
    iput-object v1, v0, Lorg/cwb/cwb_forecast_week;->auth36:Ljava/io/InputStream;

    .line 93
    iput-object v1, v0, Lorg/cwb/cwb_forecast_week;->authWeek:Ljava/io/InputStream;

    .line 94
    new-instance v1, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;-><init>(Lorg/cwb/cwb_forecast_week;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method

.method public static updateData()V
    .registers 12

    .prologue
    .line 73
    :try_start_0
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f080115

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    .local v3, tv_temp_day:Landroid/widget/TextView;
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    invoke-static {v6}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_eb

    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f090047

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :goto_1d
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    sget-object v6, Lorg/cwb/cwb_forecast_week;->daylistL:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    sget-object v6, Lorg/cwb/cwb_forecast_week;->daylistH:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f08011b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 76
    .local v4, tv_temp_night:Landroid/widget/TextView;
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    invoke-static {v6}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f7

    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f090047

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :goto_68
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    sget-object v6, Lorg/cwb/cwb_forecast_week;->daylistL:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    sget-object v6, Lorg/cwb/cwb_forecast_week;->daylistH:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f080121

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 78
    .local v5, tv_temp_tomorrow:Landroid/widget/TextView;
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    invoke-static {v6}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_103

    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f090047

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :goto_b3
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    sget-object v6, Lorg/cwb/cwb_forecast_week;->daylistL:Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    sget-object v6, Lorg/cwb/cwb_forecast_week;->daylistH:Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v1, 0x0

    .local v1, j:I
    :goto_e2
    sget-object v6, Lorg/cwb/cwb_forecast_week;->listL:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_10e

    .line 88
    .end local v1           #j:I
    .end local v4           #tv_temp_night:Landroid/widget/TextView;
    .end local v5           #tv_temp_tomorrow:Landroid/widget/TextView;
    :goto_ea
    return-void

    .line 74
    :cond_eb
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f090048

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto/16 :goto_1d

    .line 76
    .restart local v4       #tv_temp_night:Landroid/widget/TextView;
    :cond_f7
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f090048

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto/16 :goto_68

    .line 78
    .restart local v5       #tv_temp_tomorrow:Landroid/widget/TextView;
    :cond_103
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f090048

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto :goto_b3

    .line 80
    .restart local v1       #j:I
    :cond_10e
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "f_week_temp"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-static {v7, v8}, Lorg/cwb/cwb_forecast_week;->GetId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, tv_temp:Landroid/widget/TextView;
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    invoke-static {v6}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_16f

    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f090047

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :goto_13f
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 82
    sget-object v10, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    sget-object v6, Lorg/cwb/cwb_forecast_week;->listL:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    sget-object v6, Lorg/cwb/cwb_forecast_week;->listH:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    .line 81
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e2

    .line 81
    :cond_16f
    sget-object v6, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    const v7, 0x7f090048

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_177} :catch_17a

    move-result-object v6

    move-object v7, v6

    goto :goto_13f

    .line 84
    .end local v1           #j:I
    .end local v2           #tv_temp:Landroid/widget/TextView;
    .end local v4           #tv_temp_night:Landroid/widget/TextView;
    .end local v5           #tv_temp_tomorrow:Landroid/widget/TextView;
    :catch_17a
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "cwb_forecast_week"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateData:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ea
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v4, p0, Lorg/cwb/cwb_forecast_week;->TAG:Ljava/lang/String;

    const-string v5, "oncreate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sput-object p0, Lorg/cwb/cwb_forecast_week;->act:Landroid/app/Activity;

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/cwb/cwb_forecast_week;->daylistL:Ljava/util/ArrayList;

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/cwb/cwb_forecast_week;->daylistH:Ljava/util/ArrayList;

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/cwb/cwb_forecast_week;->listL:Ljava/util/ArrayList;

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/cwb/cwb_forecast_week;->listH:Ljava/util/ArrayList;

    .line 57
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_week;->HasNetwork()Z

    move-result v4

    if-nez v4, :cond_47

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_forecast_week;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 61
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 69
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    :goto_46
    return-void

    .line 64
    :cond_47
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_week;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 65
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 66
    .local v2, mContentView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_week;->setContentView(Landroid/view/View;)V

    .line 67
    new-instance v4, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;-><init>(Lorg/cwb/cwb_forecast_week;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    const/4 v4, 0x1

    sput v4, Lorg/cwb/cwb_forecast;->screen:I

    goto :goto_46
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 308
    const/4 v2, 0x4

    if-ne p1, v2, :cond_49

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_week;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_week;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_forecast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v2, "group_index"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_week;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "in cwb_forecast_week dispatchkey"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    .end local v0           #intent:Landroid/content/Intent;
    :goto_48
    return v1

    :cond_49
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_48
.end method
