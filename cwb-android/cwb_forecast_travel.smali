.class public Lorg/cwb/cwb_forecast_travel;
.super Landroid/app/Activity;
.source "cwb_forecast_travel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;
    }
.end annotation


# static fields
.field public static final AUTH_TRAVEL:Ljava/lang/String; = "http://www.cwb.gov.tw/wwwgis/kml/auth_travel.xml"

.field private static act:Landroid/app/Activity;

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

.field private authTravel:Ljava/io/InputStream;

.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lorg/cwb/cwb_forecast_travel;->listL:Ljava/util/ArrayList;

    .line 37
    sput-object v0, Lorg/cwb/cwb_forecast_travel;->listH:Ljava/util/ArrayList;

    .line 38
    sput-object v0, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

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

    iput-object v0, p0, Lorg/cwb/cwb_forecast_travel;->TAG:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/cwb/cwb_forecast_travel;->authTravel:Ljava/io/InputStream;

    .line 39
    iput-object v1, p0, Lorg/cwb/cwb_forecast_travel;->dialog:Landroid/app/ProgressDialog;

    .line 32
    return-void
.end method

.method private DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "dURL"

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 174
    .local v2, ucon:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 178
    .end local v2           #ucon:Ljava/net/URLConnection;
    .end local v3           #url:Ljava/net/URL;
    :goto_e
    return-object v1

    .line 175
    :catch_f
    move-exception v0

    .line 176
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/cwb/cwb_forecast_travel;->TAG:Ljava/lang/String;

    const-string v5, "DownloadFromUrl"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public static GetId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "str"
    .parameter "type"

    .prologue
    .line 154
    sget-object v0, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

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

    .line 182
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_travel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 183
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 184
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 185
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 186
    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method private InitialDisplay()V
    .registers 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_travel;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "travel"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, travel:Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/cwb/cwb_forecast_travel;->ShowTravel(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lorg/cwb/cwb_forecast_travel;->dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_19

    .line 70
    iget-object v1, p0, Lorg/cwb/cwb_forecast_travel;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cwb/cwb_forecast_travel;->dialog:Landroid/app/ProgressDialog;

    .line 73
    :cond_19
    return-void
.end method

.method private ShowTravel(Ljava/lang/String;)V
    .registers 30
    .parameter "travel"

    .prologue
    .line 76
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 78
    .local v10, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_4
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 79
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_travel;->authTravel:Ljava/io/InputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 80
    .local v7, dom:Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v19

    .line 82
    .local v19, root:Lorg/w3c/dom/Element;
    const-string v26, "ForecastTime"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 83
    .local v18, publish:Lorg/w3c/dom/NodeList;
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 84
    .local v17, pub:Lorg/w3c/dom/Node;
    const v26, 0x7f0800e8

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_travel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 87
    .local v23, textPubTime:Landroid/widget/TextView;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v5, date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v16

    .line 89
    .local v16, periods:Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 90
    .local v9, element:Lorg/w3c/dom/Element;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 91
    .local v6, days:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4b
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-lt v11, v0, :cond_67

    .line 97
    const-string v26, "Area"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 98
    .local v14, nl:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    :goto_5e
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-lt v11, v0, :cond_6d

    .line 133
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #days:Lorg/w3c/dom/NodeList;
    .end local v7           #dom:Lorg/w3c/dom/Document;
    .end local v9           #element:Lorg/w3c/dom/Element;
    .end local v11           #i:I
    .end local v14           #nl:Lorg/w3c/dom/NodeList;
    .end local v16           #periods:Lorg/w3c/dom/Node;
    .end local v17           #pub:Lorg/w3c/dom/Node;
    .end local v18           #publish:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v23           #textPubTime:Landroid/widget/TextView;
    :cond_66
    :goto_66
    return-void

    .line 92
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #days:Lorg/w3c/dom/NodeList;
    .restart local v7       #dom:Lorg/w3c/dom/Document;
    .restart local v9       #element:Lorg/w3c/dom/Element;
    .restart local v11       #i:I
    .restart local v16       #periods:Lorg/w3c/dom/Node;
    .restart local v17       #pub:Lorg/w3c/dom/Node;
    .restart local v18       #publish:Lorg/w3c/dom/NodeList;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v23       #textPubTime:Landroid/widget/TextView;
    :cond_67
    invoke-interface {v6, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 91
    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 99
    .restart local v14       #nl:Lorg/w3c/dom/NodeList;
    :cond_6d
    invoke-interface {v14, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 100
    .local v15, node:Lorg/w3c/dom/Node;
    instance-of v0, v15, Lorg/w3c/dom/Element;

    move/from16 v26, v0

    if-eqz v26, :cond_d8

    .line 101
    move-object v0, v15

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 102
    .local v3, child:Lorg/w3c/dom/Element;
    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 103
    .local v24, value:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_d8

    .line 104
    const v26, 0x7f0800e4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_travel;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 105
    .local v22, textArea:Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const-string v26, "Data"

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 107
    .local v4, data:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_aa
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_66

    .line 108
    invoke-interface {v4, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    .line 109
    .local v13, n:Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v21

    .line 110
    .local v21, tempL:Lorg/w3c/dom/Node;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v20

    .line 111
    .local v20, tempH:Lorg/w3c/dom/Node;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v25

    .line 112
    .local v25, weather:Lorg/w3c/dom/Node;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d5} :catch_db

    .line 107
    add-int/lit8 v12, v12, 0x1

    goto :goto_aa

    .line 98
    .end local v3           #child:Lorg/w3c/dom/Element;
    .end local v4           #data:Lorg/w3c/dom/NodeList;
    .end local v12           #j:I
    .end local v13           #n:Lorg/w3c/dom/Node;
    .end local v20           #tempH:Lorg/w3c/dom/Node;
    .end local v21           #tempL:Lorg/w3c/dom/Node;
    .end local v22           #textArea:Landroid/widget/TextView;
    .end local v24           #value:Ljava/lang/String;
    .end local v25           #weather:Lorg/w3c/dom/Node;
    :cond_d8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5e

    .line 130
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #days:Lorg/w3c/dom/NodeList;
    .end local v7           #dom:Lorg/w3c/dom/Document;
    .end local v9           #element:Lorg/w3c/dom/Element;
    .end local v11           #i:I
    .end local v14           #nl:Lorg/w3c/dom/NodeList;
    .end local v15           #node:Lorg/w3c/dom/Node;
    .end local v16           #periods:Lorg/w3c/dom/Node;
    .end local v17           #pub:Lorg/w3c/dom/Node;
    .end local v18           #publish:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v23           #textPubTime:Landroid/widget/TextView;
    :catch_db
    move-exception v8

    .line 131
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_travel;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "ShowTravel"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_travel;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lorg/cwb/cwb_forecast_travel;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_forecast_travel;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lorg/cwb/cwb_forecast_travel;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_forecast_travel;)Ljava/io/InputStream;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lorg/cwb/cwb_forecast_travel;->authTravel:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_forecast_travel;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lorg/cwb/cwb_forecast_travel;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/cwb/cwb_forecast_travel;Ljava/io/InputStream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lorg/cwb/cwb_forecast_travel;->authTravel:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$5(Lorg/cwb/cwb_forecast_travel;)V
    .registers 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_travel;->InitialDisplay()V

    return-void
.end method

.method public static refreshData()V
    .registers 3

    .prologue
    .line 61
    sget-object v0, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    check-cast v0, Lorg/cwb/cwb_forecast_travel;

    .line 62
    .local v0, x:Lorg/cwb/cwb_forecast_travel;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/cwb/cwb_forecast_travel;->authTravel:Ljava/io/InputStream;

    .line 63
    new-instance v1, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;-><init>(Lorg/cwb/cwb_forecast_travel;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method

.method public static updateData()V
    .registers 8

    .prologue
    .line 159
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    :try_start_1
    sget-object v3, Lorg/cwb/cwb_forecast_travel;->listL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 167
    :goto_9
    return-void

    .line 160
    :cond_a
    sget-object v3, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "f_travel_temp"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-static {v4, v5}, Lorg/cwb/cwb_forecast_travel;->GetId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 161
    .local v2, tv_temp:Landroid/widget/TextView;
    sget-object v3, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    invoke-static {v3}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6a

    sget-object v3, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    const v4, 0x7f090047

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_3b
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 162
    sget-object v7, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    sget-object v3, Lorg/cwb/cwb_forecast_travel;->listL:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v7, v3}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    sget-object v3, Lorg/cwb/cwb_forecast_travel;->listH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v7, v3}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 161
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_6a
    sget-object v3, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    const v4, 0x7f090048

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_72} :catch_75

    move-result-object v3

    move-object v4, v3

    goto :goto_3b

    .line 164
    .end local v2           #tv_temp:Landroid/widget/TextView;
    :catch_75
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "cwb_forecast_travel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateData:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v4, p0, Lorg/cwb/cwb_forecast_travel;->TAG:Ljava/lang/String;

    const-string v5, "oncreate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sput-object p0, Lorg/cwb/cwb_forecast_travel;->act:Landroid/app/Activity;

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/cwb/cwb_forecast_travel;->listL:Ljava/util/ArrayList;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/cwb/cwb_forecast_travel;->listH:Ljava/util/ArrayList;

    .line 46
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_travel;->HasNetwork()Z

    move-result v4

    if-nez v4, :cond_37

    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_forecast_travel;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 50
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 58
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    :goto_36
    return-void

    .line 53
    :cond_37
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_travel;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 54
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030019

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 55
    .local v2, mContentView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_travel;->setContentView(Landroid/view/View;)V

    .line 56
    new-instance v4, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;-><init>(Lorg/cwb/cwb_forecast_travel;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    const/4 v4, 0x2

    sput v4, Lorg/cwb/cwb_forecast;->screen:I

    goto :goto_36
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    const/4 v1, 0x4

    if-ne p1, v1, :cond_59

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "area"

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_travel;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "area"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_travel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "class_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_travel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cwb_forecast_week"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "group_index"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "view_layer_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_travel;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "in cwb_forecast_travel dispatchkey"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x1

    .line 150
    .end local v0           #intent:Landroid/content/Intent;
    :goto_58
    return v1

    :cond_59
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_58
.end method
