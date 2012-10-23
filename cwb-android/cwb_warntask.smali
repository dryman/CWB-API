.class public Lorg/cwb/cwb_warntask;
.super Landroid/os/Handler;
.source "cwb_warntask.java"


# static fields
.field public static final PARSER_WARNING_SUCCESS:I = 0x0

.field public static final PERIOD_CHECK:I = 0x1


# instance fields
.field private bHasWarnNow:Z

.field mContext:Landroid/content/Context;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "cxt"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cwb/cwb_warntask;->bHasWarnNow:Z

    .line 29
    iput-object p1, p0, Lorg/cwb/cwb_warntask;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lorg/cwb/cwb_warntask$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_warntask$1;-><init>(Lorg/cwb/cwb_warntask;)V

    iput-object v0, p0, Lorg/cwb/cwb_warntask;->runnable:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method private notifyHasWarn()V
    .registers 4

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cwb.SET_WARNICON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "warn"

    iget-boolean v2, p0, Lorg/cwb/cwb_warntask;->bHasWarnNow:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lorg/cwb/cwb_warntask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private notifyPeriodCheck()V
    .registers 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cwb.PERIOD_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lorg/cwb/cwb_warntask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method private paserURL()Lorg/w3c/dom/Document;
    .registers 6

    .prologue
    .line 76
    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/warning_data.xml"

    .line 77
    .local v2, parser_url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    .line 80
    .local v0, document:Lorg/w3c/dom/Document;
    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, url:Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    .line 87
    .end local v3           #url:Ljava/net/URL;
    :goto_20
    return-object v0

    .line 85
    :catch_21
    move-exception v4

    goto :goto_20
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 73
    :goto_5
    return-void

    .line 66
    :pswitch_6
    invoke-direct {p0}, Lorg/cwb/cwb_warntask;->notifyHasWarn()V

    goto :goto_5

    .line 69
    :pswitch_a
    invoke-direct {p0}, Lorg/cwb/cwb_warntask;->notifyPeriodCheck()V

    goto :goto_5

    .line 63
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public parserWarnData()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Lorg/cwb/cwb_warntask;->paserURL()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 95
    .local v0, document:Lorg/w3c/dom/Document;
    if-nez v0, :cond_8

    .line 104
    :cond_7
    :goto_7
    return v2

    .line 97
    :cond_8
    const-string v3, "item"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 98
    .local v1, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_7

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cwb/cwb_warntask;->bHasWarnNow:Z

    .line 101
    iget-boolean v2, p0, Lorg/cwb/cwb_warntask;->bHasWarnNow:Z

    goto :goto_7
.end method

.method public removeSelf()V
    .registers 3

    .prologue
    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "remove self"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lorg/cwb/cwb_warntask;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_warntask;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public setupWarnNotifyTask()V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lorg/cwb/cwb_warntask;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lorg/cwb/cwb_warntask;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
.end method

.method public setupWarnNotifyTaskNow()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cwb/cwb_warntask;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/cwb/cwb_warntask;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method
