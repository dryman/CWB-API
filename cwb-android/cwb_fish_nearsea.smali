.class public Lorg/cwb/cwb_fish_nearsea;
.super Landroid/app/Activity;
.source "cwb_fish_nearsea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;
    }
.end annotation


# static fields
.field public static final LOCAL:Ljava/lang/String; = "http://www.cwb.gov.tw/wwwgis/kml/auth_nearsea.xml"

.field private static act:Landroid/app/Activity;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field private in:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lorg/cwb/cwb_fish_nearsea;->act:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_fish_nearsea;->TAG:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/cwb/cwb_fish_nearsea;->in:Ljava/io/InputStream;

    .line 36
    iput-object v1, p0, Lorg/cwb/cwb_fish_nearsea;->dialog:Landroid/app/ProgressDialog;

    .line 32
    return-void
.end method

.method private DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "dURL"

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 173
    .local v2, ucon:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 177
    .end local v2           #ucon:Ljava/net/URLConnection;
    .end local v3           #url:Ljava/net/URL;
    :goto_e
    return-object v1

    .line 174
    :catch_f
    move-exception v0

    .line 175
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/cwb/cwb_fish_nearsea;->TAG:Ljava/lang/String;

    const-string v5, "DownloadFromUrl"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private HasNetwork()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_fish_nearsea;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 182
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 183
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 184
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 185
    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method private InitialDisplay()V
    .registers 5

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_nearsea;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "area"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, area:Ljava/lang/String;
    const v2, 0x7f080059

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_fish_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, location:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0, v0}, Lorg/cwb/cwb_fish_nearsea;->setData(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lorg/cwb/cwb_fish_nearsea;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_25

    .line 72
    iget-object v2, p0, Lorg/cwb/cwb_fish_nearsea;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cwb/cwb_fish_nearsea;->dialog:Landroid/app/ProgressDialog;

    .line 75
    :cond_25
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_fish_nearsea;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lorg/cwb/cwb_fish_nearsea;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_fish_nearsea;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cwb/cwb_fish_nearsea;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_fish_nearsea;Ljava/io/InputStream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lorg/cwb/cwb_fish_nearsea;->in:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$3(Lorg/cwb/cwb_fish_nearsea;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/cwb/cwb_fish_nearsea;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/cwb/cwb_fish_nearsea;)V
    .registers 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/cwb/cwb_fish_nearsea;->InitialDisplay()V

    return-void
.end method

.method public static refreshData()V
    .registers 2

    .prologue
    .line 61
    new-instance v1, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;

    sget-object v0, Lorg/cwb/cwb_fish_nearsea;->act:Landroid/app/Activity;

    check-cast v0, Lorg/cwb/cwb_fish_nearsea;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;-><init>(Lorg/cwb/cwb_fish_nearsea;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method private setData(Ljava/lang/String;)V
    .registers 37
    .parameter "area"

    .prologue
    .line 78
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    .line 80
    .local v11, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_4
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 81
    .local v4, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_nearsea;->in:Ljava/io/InputStream;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 83
    .local v9, dom:Lorg/w3c/dom/Document;
    const-string v30, "ForecastTime"

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 84
    .local v17, publish:Lorg/w3c/dom/NodeList;
    const-string v30, "From"

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 85
    .local v20, validFrom:Lorg/w3c/dom/NodeList;
    const-string v30, "To"

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 86
    .local v22, validTo:Lorg/w3c/dom/NodeList;
    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 87
    .local v16, pub:Lorg/w3c/dom/Node;
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 88
    .local v19, validF:Lorg/w3c/dom/Node;
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 90
    .local v21, validT:Lorg/w3c/dom/Node;
    const v30, 0x7f08005a

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 98
    .local v18, textPubTime:Landroid/widget/TextView;
    const-string v30, "Area"

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 99
    .local v14, location:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_60
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v30

    if-lt v12, v0, :cond_69

    .line 145
    .end local v4           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dom:Lorg/w3c/dom/Document;
    .end local v12           #i:I
    .end local v14           #location:Lorg/w3c/dom/NodeList;
    .end local v16           #pub:Lorg/w3c/dom/Node;
    .end local v17           #publish:Lorg/w3c/dom/NodeList;
    .end local v18           #textPubTime:Landroid/widget/TextView;
    .end local v19           #validF:Lorg/w3c/dom/Node;
    .end local v20           #validFrom:Lorg/w3c/dom/NodeList;
    .end local v21           #validT:Lorg/w3c/dom/Node;
    .end local v22           #validTo:Lorg/w3c/dom/NodeList;
    :goto_68
    return-void

    .line 100
    .restart local v4       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #dom:Lorg/w3c/dom/Document;
    .restart local v12       #i:I
    .restart local v14       #location:Lorg/w3c/dom/NodeList;
    .restart local v16       #pub:Lorg/w3c/dom/Node;
    .restart local v17       #publish:Lorg/w3c/dom/NodeList;
    .restart local v18       #textPubTime:Landroid/widget/TextView;
    .restart local v19       #validF:Lorg/w3c/dom/Node;
    .restart local v20       #validFrom:Lorg/w3c/dom/NodeList;
    .restart local v21       #validT:Lorg/w3c/dom/Node;
    .restart local v22       #validTo:Lorg/w3c/dom/NodeList;
    :cond_69
    invoke-interface {v14, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 101
    .local v15, node:Lorg/w3c/dom/Node;
    instance-of v0, v15, Lorg/w3c/dom/Element;

    move/from16 v30, v0

    if-eqz v30, :cond_1c7

    .line 102
    move-object v0, v15

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    .line 103
    .local v5, child:Lorg/w3c/dom/Element;
    const-string v30, "name"

    move-object/from16 v0, v30

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 104
    .local v23, value:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c7

    .line 105
    const-string v30, "Data"

    move-object/from16 v0, v30

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 106
    .local v7, data:Lorg/w3c/dom/NodeList;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 108
    .local v6, childlist:Lorg/w3c/dom/NodeList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v8, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, j:I
    :goto_a3
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v30

    if-lt v13, v0, :cond_1b3

    .line 114
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(I)V

    .line 116
    const v30, 0x7f08005c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 117
    .local v27, weatherText:Landroid/widget/TextView;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v30, 0x7f08005b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 121
    .local v26, weatherImage:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_nearsea;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v30, "b_day_"

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    const-string v33, ".gif"

    const-string v34, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v32, "drawable"

    .line 123
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_nearsea;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 121
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 120
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    const v30, 0x7f08003c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 126
    .local v28, winddir:Landroid/widget/TextView;
    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v30, 0x7f08003f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 129
    .local v29, windlevel:Landroid/widget/TextView;
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v30, 0x7f08003d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 132
    .local v25, wavetype:Landroid/widget/TextView;
    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v30, 0x7f08003e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 135
    .local v24, waveheight:Landroid/widget/TextView;
    const/16 v30, 0x5

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19f} :catch_1a1

    goto/16 :goto_68

    .line 142
    .end local v4           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #child:Lorg/w3c/dom/Element;
    .end local v6           #childlist:Lorg/w3c/dom/NodeList;
    .end local v7           #data:Lorg/w3c/dom/NodeList;
    .end local v8           #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #dom:Lorg/w3c/dom/Document;
    .end local v12           #i:I
    .end local v13           #j:I
    .end local v14           #location:Lorg/w3c/dom/NodeList;
    .end local v15           #node:Lorg/w3c/dom/Node;
    .end local v16           #pub:Lorg/w3c/dom/Node;
    .end local v17           #publish:Lorg/w3c/dom/NodeList;
    .end local v18           #textPubTime:Landroid/widget/TextView;
    .end local v19           #validF:Lorg/w3c/dom/Node;
    .end local v20           #validFrom:Lorg/w3c/dom/NodeList;
    .end local v21           #validT:Lorg/w3c/dom/Node;
    .end local v22           #validTo:Lorg/w3c/dom/NodeList;
    .end local v23           #value:Ljava/lang/String;
    .end local v24           #waveheight:Landroid/widget/TextView;
    .end local v25           #wavetype:Landroid/widget/TextView;
    .end local v26           #weatherImage:Landroid/widget/ImageView;
    .end local v27           #weatherText:Landroid/widget/TextView;
    .end local v28           #winddir:Landroid/widget/TextView;
    .end local v29           #windlevel:Landroid/widget/TextView;
    :catch_1a1
    move-exception v10

    .line 143
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_nearsea;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "setData"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_68

    .line 110
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v4       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #child:Lorg/w3c/dom/Element;
    .restart local v6       #childlist:Lorg/w3c/dom/NodeList;
    .restart local v7       #data:Lorg/w3c/dom/NodeList;
    .restart local v8       #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #dom:Lorg/w3c/dom/Document;
    .restart local v12       #i:I
    .restart local v13       #j:I
    .restart local v14       #location:Lorg/w3c/dom/NodeList;
    .restart local v15       #node:Lorg/w3c/dom/Node;
    .restart local v16       #pub:Lorg/w3c/dom/Node;
    .restart local v17       #publish:Lorg/w3c/dom/NodeList;
    .restart local v18       #textPubTime:Landroid/widget/TextView;
    .restart local v19       #validF:Lorg/w3c/dom/Node;
    .restart local v20       #validFrom:Lorg/w3c/dom/NodeList;
    .restart local v21       #validT:Lorg/w3c/dom/Node;
    .restart local v22       #validTo:Lorg/w3c/dom/NodeList;
    .restart local v23       #value:Ljava/lang/String;
    :cond_1b3
    :try_start_1b3
    invoke-interface {v6, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1ba} :catch_1a1

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c3

    .line 109
    :cond_1c3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a3

    .line 99
    .end local v5           #child:Lorg/w3c/dom/Element;
    .end local v6           #childlist:Lorg/w3c/dom/NodeList;
    .end local v7           #data:Lorg/w3c/dom/NodeList;
    .end local v8           #datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #j:I
    .end local v23           #value:Ljava/lang/String;
    :cond_1c7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_60
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lorg/cwb/cwb_fish_nearsea;->HasNetwork()Z

    move-result v4

    if-nez v4, :cond_20

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_fish_nearsea;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 46
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 58
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    :goto_1f
    return-void

    .line 50
    :cond_20
    iget-object v4, p0, Lorg/cwb/cwb_fish_nearsea;->in:Ljava/io/InputStream;

    if-nez v4, :cond_2c

    const-string v4, "http://www.cwb.gov.tw/wwwgis/kml/auth_nearsea.xml"

    invoke-direct {p0, v4}, Lorg/cwb/cwb_fish_nearsea;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/cwb/cwb_fish_nearsea;->in:Ljava/io/InputStream;

    .line 51
    :cond_2c
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_nearsea;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 52
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 53
    .local v2, mContentView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_fish_nearsea;->setContentView(Landroid/view/View;)V

    .line 55
    new-instance v4, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;-><init>(Lorg/cwb/cwb_fish_nearsea;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    const/4 v4, 0x1

    sput v4, Lorg/cwb/cwb_fish;->screen:I

    .line 57
    sput-object p0, Lorg/cwb/cwb_fish_nearsea;->act:Landroid/app/Activity;

    goto :goto_1f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    .line 151
    if-ne p1, v4, :cond_57

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_nearsea;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "class_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_nearsea;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cwb_fish_arealist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "CWB_URL"

    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/auth_nearsea.xml"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "cwb_fish"

    const-string v2, "nearsea"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "group_index"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v1, "view_layer_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_fish_nearsea;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "in cwb_fish_nearsea dispatchkey"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x1

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    :goto_56
    return v1

    :cond_57
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_56
.end method
