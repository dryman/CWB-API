.class public Lorg/cwb/cwb_fish_tides;
.super Landroid/app/Activity;
.source "cwb_fish_tides.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;
    }
.end annotation


# static fields
.field public static final LOCAL:Ljava/lang/String; = "http://www.cwb.gov.tw/wwwgis/kml/auth_tides.xml"

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

    sput-object v0, Lorg/cwb/cwb_fish_tides;->act:Landroid/app/Activity;

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

    iput-object v0, p0, Lorg/cwb/cwb_fish_tides;->TAG:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/cwb/cwb_fish_tides;->in:Ljava/io/InputStream;

    .line 36
    iput-object v1, p0, Lorg/cwb/cwb_fish_tides;->dialog:Landroid/app/ProgressDialog;

    .line 32
    return-void
.end method

.method private DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "dURL"

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 199
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 200
    .local v2, ucon:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 204
    .end local v2           #ucon:Ljava/net/URLConnection;
    .end local v3           #url:Ljava/net/URL;
    :goto_e
    return-object v1

    .line 201
    :catch_f
    move-exception v0

    .line 202
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/cwb/cwb_fish_tides;->TAG:Ljava/lang/String;

    const-string v5, "DownloadFromUrl"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private HasNetwork()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_fish_tides;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 209
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 210
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 211
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 212
    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method private InitialDisplay()V
    .registers 5

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_tides;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "area"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, area:Ljava/lang/String;
    const v2, 0x7f08005d

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_fish_tides;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, location:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0, v0}, Lorg/cwb/cwb_fish_tides;->setData(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lorg/cwb/cwb_fish_tides;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_25

    .line 71
    iget-object v2, p0, Lorg/cwb/cwb_fish_tides;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 72
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cwb/cwb_fish_tides;->dialog:Landroid/app/ProgressDialog;

    .line 74
    :cond_25
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_fish_tides;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lorg/cwb/cwb_fish_tides;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_fish_tides;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cwb/cwb_fish_tides;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_fish_tides;Ljava/io/InputStream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lorg/cwb/cwb_fish_tides;->in:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$3(Lorg/cwb/cwb_fish_tides;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lorg/cwb/cwb_fish_tides;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/cwb/cwb_fish_tides;)V
    .registers 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/cwb/cwb_fish_tides;->InitialDisplay()V

    return-void
.end method

.method public static refreshData()V
    .registers 2

    .prologue
    .line 61
    new-instance v1, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;

    sget-object v0, Lorg/cwb/cwb_fish_tides;->act:Landroid/app/Activity;

    check-cast v0, Lorg/cwb/cwb_fish_tides;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;-><init>(Lorg/cwb/cwb_fish_tides;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method private setData(Ljava/lang/String;)V
    .registers 32
    .parameter "area"

    .prologue
    .line 77
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 79
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_4
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 80
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_tides;->in:Ljava/io/InputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 84
    .local v6, dom:Lorg/w3c/dom/Document;
    const-string v25, "Station"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 85
    .local v13, location:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1d
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-lt v9, v0, :cond_26

    .line 172
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v13           #location:Lorg/w3c/dom/NodeList;
    :cond_25
    :goto_25
    return-void

    .line 86
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #dom:Lorg/w3c/dom/Document;
    .restart local v9       #i:I
    .restart local v13       #location:Lorg/w3c/dom/NodeList;
    :cond_26
    invoke-interface {v13, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 87
    .local v15, node:Lorg/w3c/dom/Node;
    instance-of v0, v15, Lorg/w3c/dom/Element;

    move/from16 v25, v0

    if-eqz v25, :cond_301

    .line 88
    move-object v0, v15

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 89
    .local v3, child:Lorg/w3c/dom/Element;
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 90
    .local v24, value:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_301

    .line 91
    const-string v25, "Data"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 92
    .local v5, data:Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4f
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_25

    .line 93
    invoke-interface {v5, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 94
    .local v16, nodedata:Lorg/w3c/dom/Node;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/w3c/dom/Element;

    move/from16 v25, v0

    if-eqz v25, :cond_11a

    .line 95
    move-object/from16 v0, v16

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    .line 97
    .local v4, childdata:Lorg/w3c/dom/Element;
    const-string v14, ""

    .line 98
    .local v14, name:Ljava/lang/String;
    if-nez v10, :cond_11e

    .line 100
    const-string v14, "today"

    .line 109
    :cond_6e
    :goto_6e
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "tides_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 108
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_tides;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 111
    .local v23, today:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 112
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "fish_tides_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "string"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 111
    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_tides;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .line 112
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    .line 113
    const-string v28, "day"

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    .line 114
    const-string v28, "weekday"

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    .line 115
    const-string v28, "moonday"

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 110
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const-string v25, "Tide"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 119
    .local v17, subchild:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, k:I
    :goto_108
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-lt v11, v0, :cond_132

    .line 145
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .local v12, l:I
    :goto_114
    const/16 v25, 0x4

    move/from16 v0, v25

    if-lt v12, v0, :cond_243

    .line 92
    .end local v4           #childdata:Lorg/w3c/dom/Element;
    .end local v11           #k:I
    .end local v12           #l:I
    .end local v14           #name:Ljava/lang/String;
    .end local v17           #subchild:Lorg/w3c/dom/NodeList;
    .end local v23           #today:Landroid/widget/TextView;
    :cond_11a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4f

    .line 101
    .restart local v4       #childdata:Lorg/w3c/dom/Element;
    .restart local v14       #name:Ljava/lang/String;
    :cond_11e
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_128

    .line 103
    const-string v14, "tomorrow"

    goto/16 :goto_6e

    .line 104
    :cond_128
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v10, v0, :cond_6e

    .line 106
    const-string v14, "aftertomorrow"

    goto/16 :goto_6e

    .line 121
    .restart local v11       #k:I
    .restart local v17       #subchild:Lorg/w3c/dom/NodeList;
    .restart local v23       #today:Landroid/widget/TextView;
    :cond_132
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 122
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "tides_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_type"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v11, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 120
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_tides;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 123
    .local v22, tideType:Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/Element;

    const-string v26, "type"

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/Element;

    const-string v26, "type"

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "\u4e7e\u6f6e"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_226

    .line 125
    const v25, -0xffff01

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :goto_19c
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/Element;

    const-string v26, "time"

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 130
    .local v19, subchildtime:Lorg/w3c/dom/NodeList;
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/Element;

    const-string v26, "height"

    invoke-interface/range {v25 .. v26}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 133
    .local v18, subchildHeight:Lorg/w3c/dom/NodeList;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 134
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "tides_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_time"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v11, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 132
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_tides;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 138
    .local v21, tideTime:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 139
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "tides_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_height"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v11, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_tides;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 119
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_108

    .line 127
    .end local v18           #subchildHeight:Lorg/w3c/dom/NodeList;
    .end local v19           #subchildtime:Lorg/w3c/dom/NodeList;
    .end local v21           #tideTime:Landroid/widget/TextView;
    :cond_226
    const/high16 v25, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22f} :catch_231

    goto/16 :goto_19c

    .line 169
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #child:Lorg/w3c/dom/Element;
    .end local v4           #childdata:Lorg/w3c/dom/Element;
    .end local v5           #data:Lorg/w3c/dom/NodeList;
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v13           #location:Lorg/w3c/dom/NodeList;
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #node:Lorg/w3c/dom/Node;
    .end local v16           #nodedata:Lorg/w3c/dom/Node;
    .end local v17           #subchild:Lorg/w3c/dom/NodeList;
    .end local v22           #tideType:Landroid/widget/TextView;
    .end local v23           #today:Landroid/widget/TextView;
    .end local v24           #value:Ljava/lang/String;
    :catch_231
    move-exception v7

    .line 170
    .local v7, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_tides;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "setData"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 147
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #child:Lorg/w3c/dom/Element;
    .restart local v4       #childdata:Lorg/w3c/dom/Element;
    .restart local v5       #data:Lorg/w3c/dom/NodeList;
    .restart local v6       #dom:Lorg/w3c/dom/Document;
    .restart local v9       #i:I
    .restart local v10       #j:I
    .restart local v11       #k:I
    .restart local v12       #l:I
    .restart local v13       #location:Lorg/w3c/dom/NodeList;
    .restart local v14       #name:Ljava/lang/String;
    .restart local v15       #node:Lorg/w3c/dom/Node;
    .restart local v16       #nodedata:Lorg/w3c/dom/Node;
    .restart local v17       #subchild:Lorg/w3c/dom/NodeList;
    .restart local v23       #today:Landroid/widget/TextView;
    .restart local v24       #value:Ljava/lang/String;
    :cond_243
    :try_start_243
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 148
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "tides_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_type"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v12, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 146
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_tides;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 149
    .restart local v22       #tideType:Landroid/widget/TextView;
    const/16 v25, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 153
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "tides_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_time"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v12, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_tides;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 154
    .restart local v21       #tideTime:Landroid/widget/TextView;
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 158
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "tides_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_height"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v12, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 156
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_tides;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 159
    .local v20, tideHeight:Landroid/widget/TextView;
    const/16 v25, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2fd
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_2fd} :catch_231

    .line 145
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_114

    .line 85
    .end local v3           #child:Lorg/w3c/dom/Element;
    .end local v4           #childdata:Lorg/w3c/dom/Element;
    .end local v5           #data:Lorg/w3c/dom/NodeList;
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v12           #l:I
    .end local v14           #name:Ljava/lang/String;
    .end local v16           #nodedata:Lorg/w3c/dom/Node;
    .end local v17           #subchild:Lorg/w3c/dom/NodeList;
    .end local v20           #tideHeight:Landroid/widget/TextView;
    .end local v21           #tideTime:Landroid/widget/TextView;
    .end local v22           #tideType:Landroid/widget/TextView;
    .end local v23           #today:Landroid/widget/TextView;
    .end local v24           #value:Ljava/lang/String;
    :cond_301
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1d
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lorg/cwb/cwb_fish_tides;->HasNetwork()Z

    move-result v4

    if-nez v4, :cond_20

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_fish_tides;->getString(I)Ljava/lang/String;

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
    iget-object v4, p0, Lorg/cwb/cwb_fish_tides;->in:Ljava/io/InputStream;

    if-nez v4, :cond_2c

    const-string v4, "http://www.cwb.gov.tw/wwwgis/kml/auth_tides.xml"

    invoke-direct {p0, v4}, Lorg/cwb/cwb_fish_tides;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/cwb/cwb_fish_tides;->in:Ljava/io/InputStream;

    .line 51
    :cond_2c
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_tides;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 52
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 53
    .local v2, mContentView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_fish_tides;->setContentView(Landroid/view/View;)V

    .line 55
    new-instance v4, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;-><init>(Lorg/cwb/cwb_fish_tides;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    const/4 v4, 0x2

    sput v4, Lorg/cwb/cwb_fish;->screen:I

    .line 57
    sput-object p0, Lorg/cwb/cwb_fish_tides;->act:Landroid/app/Activity;

    goto :goto_1f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    .line 178
    if-ne p1, v4, :cond_57

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "class_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_tides;->getPackageName()Ljava/lang/String;

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

    .line 182
    const-string v1, "CWB_URL"

    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/auth_tides.xml"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "cwb_fish"

    const-string v2, "tides"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "group_index"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v1, "view_layer_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_fish_tides;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "in cwb_fish_tides dispatchkey"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x1

    .line 191
    .end local v0           #intent:Landroid/content/Intent;
    :goto_56
    return v1

    :cond_57
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_56
.end method
