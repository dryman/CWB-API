.class public Lorg/cwb/cwb_parserdatathread;
.super Ljava/lang/Thread;
.source "cwb_parserdatathread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_parserdatathread$EventHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

.field last24list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallback:Lorg/cwb/RequestCallback;

.field mContext:Landroid/content/Context;

.field mCurrentStation:Ljava/lang/String;

.field mCwbData:Lorg/cwb/cwb_stationlist;

.field mDocument:Lorg/w3c/dom/Document;

.field mParserType:I

.field parser_url:Ljava/lang/String;

.field warnlinklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field warnlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILorg/cwb/RequestCallback;)V
    .registers 7
    .parameter "cxt"
    .parameter "currentstation"
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    invoke-virtual {p0}, Lorg/cwb/cwb_parserdatathread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_parserdatathread;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lorg/cwb/cwb_parserdatathread$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/cwb/cwb_parserdatathread$EventHandler;-><init>(Lorg/cwb/cwb_parserdatathread;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/cwb/cwb_parserdatathread;->mParserType:I

    .line 39
    iput-object p1, p0, Lorg/cwb/cwb_parserdatathread;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lorg/cwb/cwb_parserdatathread;->mCurrentStation:Ljava/lang/String;

    .line 41
    invoke-direct {p0, p3}, Lorg/cwb/cwb_parserdatathread;->getParserURL(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_parserdatathread;->parser_url:Ljava/lang/String;

    .line 42
    iput p3, p0, Lorg/cwb/cwb_parserdatathread;->mParserType:I

    .line 43
    iput-object p4, p0, Lorg/cwb/cwb_parserdatathread;->mCallback:Lorg/cwb/RequestCallback;

    .line 44
    return-void
.end method

.method private getParserURL(I)Ljava/lang/String;
    .registers 3
    .parameter "type"

    .prologue
    .line 180
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 181
    const-string v0, "http://www.cwb.gov.tw/wwwgis/kml/auth_obs.xml"

    .line 184
    :goto_5
    return-object v0

    .line 182
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 183
    const-string v0, "http://www.cwb.gov.tw/wwwgis/kml/warning_data.xml"

    goto :goto_5

    .line 184
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private parserWarnData()V
    .registers 11

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/cwb/cwb_parserdatathread;->paserURL()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 145
    .local v0, document:Lorg/w3c/dom/Document;
    if-nez v0, :cond_7

    .line 178
    :cond_6
    return-void

    .line 148
    :cond_7
    const/4 v6, 0x0

    .line 150
    .local v6, timeNode:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .line 151
    .local v7, titleNode:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 153
    .local v3, linkNode:Lorg/w3c/dom/NodeList;
    const-string v8, "PublishTime"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 155
    const-string v8, "title"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 156
    const-string v8, "link"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 158
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-eqz v8, :cond_6

    .line 161
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 164
    invoke-interface {v7, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 165
    .local v5, tilElement:Lorg/w3c/dom/Element;
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 167
    .local v2, lElement:Lorg/w3c/dom/Element;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v4, msbuilder:Ljava/lang/StringBuilder;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v8, p0, Lorg/cwb/cwb_parserdatathread;->warnlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v8, p0, Lorg/cwb/cwb_parserdatathread;->warnlinklist:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method private paserURL()Lorg/w3c/dom/Document;
    .registers 6

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    .line 127
    .local v0, document:Lorg/w3c/dom/Document;
    :try_start_2
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lorg/cwb/cwb_parserdatathread;->parser_url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, url:Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 134
    .end local v3           #url:Ljava/net/URL;
    :goto_20
    return-object v0

    .line 131
    :catch_21
    move-exception v2

    .line 132
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    if-eqz v0, :cond_13

    .line 118
    iget-object v0, p0, Lorg/cwb/cwb_parserdatathread;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    invoke-virtual {v0, p0}, Lorg/cwb/cwb_parserdatathread$EventHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    .line 122
    :cond_13
    return-void
.end method

.method public parserStationXML()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/cwb/cwb_parserdatathread;->paserURL()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 138
    .local v0, mDocument:Lorg/w3c/dom/Document;
    return-object v0
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 48
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 53
    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 81
    :cond_d
    :goto_d
    return-void

    .line 57
    :cond_e
    :try_start_e
    iget v2, p0, Lorg/cwb/cwb_parserdatathread;->mParserType:I

    if-ne v2, v5, :cond_48

    .line 58
    new-instance v2, Lorg/cwb/cwb_stationlist;

    iget-object v3, p0, Lorg/cwb/cwb_parserdatathread;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/cwb/cwb_stationlist;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/cwb/cwb_parserdatathread;->mCwbData:Lorg/cwb/cwb_stationlist;

    .line 59
    invoke-virtual {p0}, Lorg/cwb/cwb_parserdatathread;->parserStationXML()Lorg/w3c/dom/Document;

    move-result-object v2

    iput-object v2, p0, Lorg/cwb/cwb_parserdatathread;->mDocument:Lorg/w3c/dom/Document;

    .line 60
    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread;->mCwbData:Lorg/cwb/cwb_stationlist;

    iget-object v3, p0, Lorg/cwb/cwb_parserdatathread;->mDocument:Lorg/w3c/dom/Document;

    invoke-virtual {v2, v3}, Lorg/cwb/cwb_stationlist;->setDocument(Lorg/w3c/dom/Document;)V

    .line 67
    :cond_28
    :goto_28
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 68
    .local v1, m:Landroid/os/Message;
    iget v2, p0, Lorg/cwb/cwb_parserdatathread;->mParserType:I

    if-ne v2, v5, :cond_5e

    .line 69
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 73
    :cond_34
    :goto_34
    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    invoke-virtual {v2, v1}, Lorg/cwb/cwb_parserdatathread$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_39} :catch_3a

    goto :goto_d

    .line 75
    .end local v1           #m:Landroid/os/Message;
    :catch_3a
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    if-eqz v2, :cond_d

    .line 77
    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    invoke-virtual {v2, p0}, Lorg/cwb/cwb_parserdatathread$EventHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    goto :goto_d

    .line 61
    .end local v0           #e:Ljava/lang/Exception;
    :cond_48
    :try_start_48
    iget v2, p0, Lorg/cwb/cwb_parserdatathread;->mParserType:I

    if-ne v2, v4, :cond_28

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/cwb/cwb_parserdatathread;->warnlist:Ljava/util/ArrayList;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/cwb/cwb_parserdatathread;->warnlinklist:Ljava/util/ArrayList;

    .line 64
    invoke-direct {p0}, Lorg/cwb/cwb_parserdatathread;->parserWarnData()V

    goto :goto_28

    .line 70
    .restart local v1       #m:Landroid/os/Message;
    :cond_5e
    iget v2, p0, Lorg/cwb/cwb_parserdatathread;->mParserType:I

    if-ne v2, v4, :cond_34

    .line 71
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_65} :catch_3a

    goto :goto_34
.end method
