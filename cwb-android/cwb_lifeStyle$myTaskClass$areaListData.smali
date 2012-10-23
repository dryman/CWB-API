.class Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;
.super Ljava/lang/Object;
.source "cwb_lifeStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_lifeStyle$myTaskClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "areaListData"
.end annotation


# instance fields
.field public CountyID:Ljava/lang/String;

.field public cname:Ljava/lang/String;

.field final synthetic this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeStyle$myTaskClass;)V
    .registers 3
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->CountyID:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->cname:Ljava/lang/String;

    return-void
.end method
