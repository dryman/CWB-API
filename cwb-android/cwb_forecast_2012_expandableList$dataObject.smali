.class Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
.super Ljava/lang/Object;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "dataObject"
.end annotation


# instance fields
.field private Data_date:Ljava/lang/String;

.field private Day_night:Ljava/lang/String;

.field private MaxT:Ljava/lang/String;

.field private MinT:Ljava/lang/String;

.field private PoP:Ljava/lang/String;

.field private Wx_icon:Ljava/lang/String;

.field private layout_resource:I

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 2
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1316
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->Data_date:Ljava/lang/String;

    return-object v0
.end method

.method public getDayNight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->Day_night:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutRES()I
    .registers 2

    .prologue
    .line 1340
    iget v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->layout_resource:I

    return v0
.end method

.method public getMaxT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1332
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->MaxT:Ljava/lang/String;

    return-object v0
.end method

.method public getMinT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1328
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->MinT:Ljava/lang/String;

    return-object v0
.end method

.method public getPoP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1336
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->PoP:Ljava/lang/String;

    return-object v0
.end method

.method public getWxicon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1324
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->Wx_icon:Ljava/lang/String;

    return-object v0
.end method

.method public setDataDate(Ljava/lang/String;)V
    .registers 2
    .parameter "date"

    .prologue
    .line 1288
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->Data_date:Ljava/lang/String;

    .line 1289
    return-void
.end method

.method public setDayNight(Ljava/lang/String;)V
    .registers 2
    .parameter "daynight"

    .prologue
    .line 1292
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->Day_night:Ljava/lang/String;

    .line 1293
    return-void
.end method

.method public setLayoutRES(I)V
    .registers 2
    .parameter "res"

    .prologue
    .line 1312
    iput p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->layout_resource:I

    .line 1313
    return-void
.end method

.method public setMaxT(Ljava/lang/String;)V
    .registers 2
    .parameter "maxT"

    .prologue
    .line 1304
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->MaxT:Ljava/lang/String;

    .line 1305
    return-void
.end method

.method public setMinT(Ljava/lang/String;)V
    .registers 2
    .parameter "minT"

    .prologue
    .line 1300
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->MinT:Ljava/lang/String;

    .line 1301
    return-void
.end method

.method public setPoP(Ljava/lang/String;)V
    .registers 2
    .parameter "pop"

    .prologue
    .line 1308
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->PoP:Ljava/lang/String;

    .line 1309
    return-void
.end method

.method public setWxicon(Ljava/lang/String;)V
    .registers 2
    .parameter "wxIcon"

    .prologue
    .line 1296
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->Wx_icon:Ljava/lang/String;

    .line 1297
    return-void
.end method
