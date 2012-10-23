.class Lorg/cwb/cwb_lastActivity_2012mar$last24Data;
.super Ljava/lang/Object;
.source "cwb_lastActivity_2012mar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_lastActivity_2012mar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "last24Data"
.end annotation


# instance fields
.field public Obstime:Ljava/lang/String;

.field public Rain:Ljava/lang/String;

.field public Stid:Ljava/lang/String;

.field public Temperature:Ljava/lang/String;

.field public Weather:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_lastActivity_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lastActivity_2012mar;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->this$0:Lorg/cwb/cwb_lastActivity_2012mar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Stid:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Obstime:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Weather:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Temperature:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Rain:Ljava/lang/String;

    return-void
.end method
