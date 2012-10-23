.class Lorg/cwb/cwb_fish_arealist$areaListData;
.super Ljava/lang/Object;
.source "cwb_fish_arealist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_fish_arealist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "areaListData"
.end annotation


# instance fields
.field private cname:Ljava/lang/String;

.field private subtype:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_fish_arealist;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_arealist;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lorg/cwb/cwb_fish_arealist$areaListData;->this$0:Lorg/cwb/cwb_fish_arealist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_arealist$areaListData;->cname:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_arealist$areaListData;->subtype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/cwb/cwb_fish_arealist$areaListData;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/cwb/cwb_fish_arealist$areaListData;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/cwb/cwb_fish_arealist$areaListData;->cname:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 106
    iput-object p1, p0, Lorg/cwb/cwb_fish_arealist$areaListData;->subtype:Ljava/lang/String;

    .line 107
    return-void
.end method
