.class Lorg/cwb/cwb_lifeCityList$areaListData;
.super Ljava/lang/Object;
.source "cwb_lifeCityList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_lifeCityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "areaListData"
.end annotation


# instance fields
.field private CountyID:Ljava/lang/String;

.field private cname:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_lifeCityList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeCityList;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lorg/cwb/cwb_lifeCityList$areaListData;->this$0:Lorg/cwb/cwb_lifeCityList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lifeCityList$areaListData;->CountyID:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_lifeCityList$areaListData;->cname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountyID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/cwb/cwb_lifeCityList$areaListData;->CountyID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/cwb/cwb_lifeCityList$areaListData;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public setCountyID(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 97
    iput-object p1, p0, Lorg/cwb/cwb_lifeCityList$areaListData;->CountyID:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 93
    iput-object p1, p0, Lorg/cwb/cwb_lifeCityList$areaListData;->cname:Ljava/lang/String;

    .line 94
    return-void
.end method
