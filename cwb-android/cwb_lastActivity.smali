.class public Lorg/cwb/cwb_lastActivity;
.super Landroid/app/Activity;
.source "cwb_lastActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_lastActivity$LastListAdaptr;,
        Lorg/cwb/cwb_lastActivity$ParserDataTask;,
        Lorg/cwb/cwb_lastActivity$period_check_Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cwb_lastActivity"

.field static adapter:Lorg/cwb/cwb_lastActivity$LastListAdaptr;

.field static last24list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listview:Landroid/widget/ListView;

.field static mContext:Landroid/content/Context;

.field static mCurrentStation:Ljava/lang/String;

.field static mDocument:Lorg/w3c/dom/Document;

.field static mTotalStationList:Ljava/util/ArrayList;
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
.field favorTitle:Landroid/widget/TextView;

.field favor_left_arrow_btn:Landroid/widget/ImageButton;

.field favor_right_arrow_btn:Landroid/widget/ImageButton;

.field private in:Ljava/io/InputStream;

.field mCwbPreference:Landroid/content/SharedPreferences;

.field mFavor_add_btn:Landroid/widget/ImageButton;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mReceiver:Lorg/cwb/cwb_lastActivity$period_check_Receiver;

.field searchbtn:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_lastActivity;->last24list:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_lastActivity;->mTotalStationList:Ljava/util/ArrayList;

    .line 48
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "dURL"

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 123
    .local v2, ucon:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 127
    .end local v2           #ucon:Ljava/net/URLConnection;
    .end local v3           #url:Ljava/net/URL;
    :goto_e
    return-object v1

    .line 124
    :catch_f
    move-exception v0

    .line 125
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "cwb_lastActivity"

    const-string v5, "DownloadFromUrl"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method static synthetic access$0(Lorg/cwb/cwb_lastActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/cwb/cwb_lastActivity;->parserxmlData()V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_lastActivity;Ljava/io/InputStream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lorg/cwb/cwb_lastActivity;->in:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_lastActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 381
    invoke-direct {p0}, Lorg/cwb/cwb_lastActivity;->setFavorTitleText()V

    return-void
.end method

.method static synthetic access$3()V
    .registers 0

    .prologue
    .line 249
    invoke-static {}, Lorg/cwb/cwb_lastActivity;->parserLast24Data()V

    return-void
.end method

.method private addFavorStation(Ljava/lang/String;)V
    .registers 8
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 225
    const/4 v0, 0x0

    .line 228
    .local v0, bDuplicated:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_4d

    .line 232
    if-nez v0, :cond_4c

    .line 233
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v2, ""

    .line 236
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_19
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_5f

    .line 242
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lorg/cwb/cwb_lastActivity;->mCwbPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "favor_station_list"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 246
    .end local v2           #result:Ljava/lang/String;
    :cond_4c
    return-void

    .line 229
    :cond_4d
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 230
    const/4 v0, 0x1

    .line 228
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 237
    .restart local v2       #result:Ljava/lang/String;
    :cond_5f
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

    .line 238
    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    .line 239
    sget-object v4, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    sget-object v3, Lorg/cwb/cwb_main;->mFavorStationList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_19
.end method

.method private static parserLast24Data()V
    .registers 9

    .prologue
    .line 251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lorg/cwb/cwb_lastActivity;->last24list:Ljava/util/ArrayList;

    .line 252
    const/4 v4, 0x0

    .line 253
    .local v4, stationNode:Lorg/w3c/dom/NodeList;
    sget-object v6, Lorg/cwb/cwb_lastActivity;->mDocument:Lorg/w3c/dom/Document;

    const-string v7, "Station"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 255
    sget-object v6, Lorg/cwb/cwb_lastActivity;->last24list:Ljava/util/ArrayList;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-nez v6, :cond_1e

    .line 291
    :goto_1d
    return-void

    .line 259
    :cond_1e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v0, v6, :cond_3d

    .line 263
    const/4 v0, 0x0

    :goto_26
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v0, v6, :cond_51

    .line 286
    :cond_2c
    sget-object v6, Lorg/cwb/cwb_lastActivity;->adapter:Lorg/cwb/cwb_lastActivity$LastListAdaptr;

    if-eqz v6, :cond_11b

    .line 287
    sget-object v6, Lorg/cwb/cwb_lastActivity;->adapter:Lorg/cwb/cwb_lastActivity$LastListAdaptr;

    invoke-virtual {v6}, Lorg/cwb/cwb_lastActivity$LastListAdaptr;->notifyDataSetChanged()V

    .line 290
    :goto_35
    sget-object v6, Lorg/cwb/cwb_lastActivity;->listview:Landroid/widget/ListView;

    sget-object v7, Lorg/cwb/cwb_lastActivity;->adapter:Lorg/cwb/cwb_lastActivity$LastListAdaptr;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1d

    .line 260
    :cond_3d
    sget-object v7, Lorg/cwb/cwb_lastActivity;->mTotalStationList:Ljava/util/ArrayList;

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v8, "name"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 264
    :cond_51
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 265
    .local v3, sElement:Lorg/w3c/dom/Element;
    sget-object v6, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    const-string v7, "name"

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 266
    const/4 v1, 0x0

    .local v1, j:I
    :goto_66
    const-string v6, "temp"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_2c

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v2, msbuilder:Ljava/lang/StringBuilder;
    const-string v6, "obstime"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v7, "value"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, time:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v6, "temp"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v7, "status"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_101

    .line 274
    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :goto_c0
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v6, "weather"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v6, "rain"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    sget-object v6, Lorg/cwb/cwb_lastActivity;->last24list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_66

    .line 276
    :cond_101
    const-string v6, "temp"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c0

    .line 263
    .end local v1           #j:I
    .end local v2           #msbuilder:Ljava/lang/StringBuilder;
    .end local v5           #time:Ljava/lang/String;
    :cond_117
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    .line 289
    .end local v3           #sElement:Lorg/w3c/dom/Element;
    :cond_11b
    new-instance v6, Lorg/cwb/cwb_lastActivity$LastListAdaptr;

    sget-object v7, Lorg/cwb/cwb_lastActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lorg/cwb/cwb_lastActivity$LastListAdaptr;-><init>(Landroid/content/Context;)V

    sput-object v6, Lorg/cwb/cwb_lastActivity;->adapter:Lorg/cwb/cwb_lastActivity$LastListAdaptr;

    goto/16 :goto_35
.end method

.method private parserxmlData()V
    .registers 4

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    iget-object v2, p0, Lorg/cwb/cwb_lastActivity;->in:Ljava/io/InputStream;

    if-nez v2, :cond_d

    .line 132
    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/auth_obs24hr.xml"

    invoke-direct {p0, v2}, Lorg/cwb/cwb_lastActivity;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/cwb/cwb_lastActivity;->in:Ljava/io/InputStream;

    .line 134
    :cond_d
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lorg/cwb/cwb_lastActivity;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    sput-object v2, Lorg/cwb/cwb_lastActivity;->mDocument:Lorg/w3c/dom/Document;

    .line 136
    sget-object v2, Lorg/cwb/cwb_lastActivity;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_27

    .line 140
    :goto_26
    return-void

    .line 137
    :catch_27
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method private setFavorTitleText()V
    .registers 5

    .prologue
    .line 382
    sget-object v0, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    if-eqz v0, :cond_38

    sget-object v0, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    sget-object v1, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 383
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->favorTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_37
    return-void

    .line 385
    :cond_38
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->favorTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method

.method private setupBroadCast()V
    .registers 3

    .prologue
    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "cwb.PERIOD_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    new-instance v1, Lorg/cwb/cwb_lastActivity$period_check_Receiver;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_lastActivity$period_check_Receiver;-><init>(Lorg/cwb/cwb_lastActivity;)V

    iput-object v1, p0, Lorg/cwb/cwb_lastActivity;->mReceiver:Lorg/cwb/cwb_lastActivity$period_check_Receiver;

    .line 391
    iget-object v1, p0, Lorg/cwb/cwb_lastActivity;->mReceiver:Lorg/cwb/cwb_lastActivity$period_check_Receiver;

    invoke-virtual {p0, v1, v0}, Lorg/cwb/cwb_lastActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    return-void
.end method

.method public static updateTempView()V
    .registers 1

    .prologue
    .line 293
    sget-object v0, Lorg/cwb/cwb_lastActivity;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_c

    .line 294
    invoke-static {}, Lorg/cwb/cwb_lastActivity;->parserLast24Data()V

    .line 295
    sget-object v0, Lorg/cwb/cwb_lastActivity;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 297
    :cond_c
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_fc

    .line 223
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 165
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_searchlist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "group_index"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v2, "view_layer_id"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v2, "activity name"

    const-string v3, "cwb_lastActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "stationlist"

    sget-object v3, Lorg/cwb/cwb_lastActivity;->mTotalStationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 172
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v1}, Lorg/cwb/cwb_lastActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 176
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_55
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_71

    .line 177
    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 179
    :cond_71
    sget-object v2, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/cwb/cwb_lastActivity;->addFavorStation(Ljava/lang/String;)V

    goto :goto_9

    .line 183
    :pswitch_77
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 185
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 186
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    sget-object v3, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 187
    .local v0, i:I
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_ab

    .line 188
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    .line 192
    :goto_a3
    invoke-direct {p0}, Lorg/cwb/cwb_lastActivity;->setFavorTitleText()V

    .line 194
    invoke-static {}, Lorg/cwb/cwb_lastActivity;->parserLast24Data()V

    goto/16 :goto_9

    .line 190
    :cond_ab
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    goto :goto_a3

    .line 201
    .end local v0           #i:I
    :pswitch_b8
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 203
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 204
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    sget-object v3, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 205
    .restart local v0       #i:I
    add-int/lit8 v2, v0, -0x1

    if-gez v2, :cond_ee

    .line 206
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    sget-object v3, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    .line 210
    :goto_e6
    invoke-direct {p0}, Lorg/cwb/cwb_lastActivity;->setFavorTitleText()V

    .line 213
    invoke-static {}, Lorg/cwb/cwb_lastActivity;->parserLast24Data()V

    goto/16 :goto_9

    .line 208
    :cond_ee
    sget-object v2, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    goto :goto_e6

    .line 163
    nop

    :pswitch_data_fc
    .packed-switch 0x7f080006
        :pswitch_b8
        :pswitch_77
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_55
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/cwb/cwb_lastActivity;->mContext:Landroid/content/Context;

    .line 64
    sput v3, Lorg/cwb/cwb_main;->screen:I

    .line 65
    const-string v0, "cwb_preference"

    invoke-virtual {p0, v0, v2}, Lorg/cwb/cwb_lastActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity;->mCwbPreference:Landroid/content/SharedPreferences;

    .line 67
    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 68
    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    .line 69
    :cond_34
    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 70
    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    .line 72
    :cond_4c
    const v0, 0x7f0801b0

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lorg/cwb/cwb_lastActivity;->listview:Landroid/widget/ListView;

    .line 73
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity;->favorTitle:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity;->searchbtn:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->searchbtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity;->mFavor_add_btn:Landroid/widget/ImageButton;

    .line 79
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->mFavor_add_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity;->favor_right_arrow_btn:Landroid/widget/ImageButton;

    .line 83
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->favor_right_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity;->favor_left_arrow_btn:Landroid/widget/ImageButton;

    .line 87
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->favor_left_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget-object v0, Lorg/cwb/cwb_main;->mStationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_cf

    .line 90
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->favor_right_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->favor_left_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 97
    :goto_b4
    sget-object v0, Lorg/cwb/cwb_lastActivity;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_da

    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_da

    .line 98
    sget-object v0, Lorg/cwb/cwb_lastActivity;->listview:Landroid/widget/ListView;

    sget-object v1, Lorg/cwb/cwb_lastActivity;->adapter:Lorg/cwb/cwb_lastActivity$LastListAdaptr;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    :goto_cb
    invoke-direct {p0}, Lorg/cwb/cwb_lastActivity;->setupBroadCast()V

    .line 108
    return-void

    .line 93
    :cond_cf
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->favor_right_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->favor_left_arrow_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_b4

    .line 99
    :cond_da
    sget-object v0, Lorg/cwb/cwb_lastActivity;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_f1

    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f1

    .line 100
    invoke-direct {p0}, Lorg/cwb/cwb_lastActivity;->setFavorTitleText()V

    .line 101
    invoke-static {}, Lorg/cwb/cwb_lastActivity;->parserLast24Data()V

    goto :goto_cb

    .line 104
    :cond_f1
    new-instance v0, Lorg/cwb/cwb_lastActivity$ParserDataTask;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_lastActivity$ParserDataTask;-><init>(Lorg/cwb/cwb_lastActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lastActivity$ParserDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_cb
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity;->mReceiver:Lorg/cwb/cwb_lastActivity$period_check_Receiver;

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 145
    const/4 v2, 0x4

    if-ne p1, v2, :cond_50

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_main"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "group_index"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v2, "NAME"

    sget-object v3, Lorg/cwb/cwb_lastActivity;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "in cwb_lastActivity dispatchkey"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    .end local v0           #intent:Landroid/content/Intent;
    :goto_4f
    return v1

    :cond_50
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_4f
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    return-void
.end method
