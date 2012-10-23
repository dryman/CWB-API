.class Lorg/cwb/cwb_main$getXMLDataAndFindLoc$1;
.super Ljava/lang/Object;
.source "cwb_main.java"

# interfaces
.implements Lorg/cwb/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_main$getXMLDataAndFindLoc;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main$getXMLDataAndFindLoc;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc$1;->this$1:Lorg/cwb/cwb_main$getXMLDataAndFindLoc;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 585
    check-cast p1, Ljava/lang/String;

    .end local p1
    sput-object p1, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    .line 586
    invoke-static {}, Lorg/cwb/cwb_main;->access$1()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 587
    sget-object v0, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 588
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc$1;->this$1:Lorg/cwb/cwb_main$getXMLDataAndFindLoc;

    #getter for: Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;
    invoke-static {v0}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->access$2(Lorg/cwb/cwb_main$getXMLDataAndFindLoc;)Lorg/cwb/cwb_main;

    move-result-object v0

    sget-object v1, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    #setter for: Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/cwb/cwb_main;->access$2(Lorg/cwb/cwb_main;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc$1;->this$1:Lorg/cwb/cwb_main$getXMLDataAndFindLoc;

    #getter for: Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;
    invoke-static {v0}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->access$2(Lorg/cwb/cwb_main$getXMLDataAndFindLoc;)Lorg/cwb/cwb_main;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;
    invoke-static {v0}, Lorg/cwb/cwb_main;->access$3(Lorg/cwb/cwb_main;)Lorg/cwb/cwb_stationlist;

    move-result-object v0

    iget-object v1, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc$1;->this$1:Lorg/cwb/cwb_main$getXMLDataAndFindLoc;

    #getter for: Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;
    invoke-static {v1}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->access$2(Lorg/cwb/cwb_main$getXMLDataAndFindLoc;)Lorg/cwb/cwb_main;

    move-result-object v1

    #getter for: Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;
    invoke-static {v1}, Lorg/cwb/cwb_main;->access$4(Lorg/cwb/cwb_main;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setUpStationListClass(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc$1;->this$1:Lorg/cwb/cwb_main$getXMLDataAndFindLoc;

    #getter for: Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;
    invoke-static {v0}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->access$2(Lorg/cwb/cwb_main$getXMLDataAndFindLoc;)Lorg/cwb/cwb_main;

    move-result-object v0

    #calls: Lorg/cwb/cwb_main;->showMainPageData()V
    invoke-static {v0}, Lorg/cwb/cwb_main;->access$5(Lorg/cwb/cwb_main;)V

    .line 593
    :cond_3f
    return-void
.end method
