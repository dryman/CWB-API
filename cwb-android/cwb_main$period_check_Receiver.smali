.class Lorg/cwb/cwb_main$period_check_Receiver;
.super Landroid/content/BroadcastReceiver;
.source "cwb_main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "period_check_Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_main;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main;)V
    .registers 2
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lorg/cwb/cwb_main$period_check_Receiver;->this$0:Lorg/cwb/cwb_main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cwb.PERIOD_CHECK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 551
    sget-boolean v1, Lorg/cwb/cwb_main;->bLoading:Z

    if-nez v1, :cond_4f

    .line 556
    invoke-static {}, Lorg/cwb/cwb_findlocation;->getLastKnowLocation()Landroid/location/Location;

    move-result-object v0

    .line 557
    .local v0, location:Landroid/location/Location;
    if-eqz v0, :cond_24

    .line 559
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 558
    invoke-static {v1, v2, v3, v4}, Lorg/cwb/cwb_findlocation;->getCurrentLoacation(DD)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    .line 561
    :cond_24
    invoke-static {}, Lorg/cwb/cwb_main;->access$1()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 562
    sget-object v1, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 563
    iget-object v1, p0, Lorg/cwb/cwb_main$period_check_Receiver;->this$0:Lorg/cwb/cwb_main;

    sget-object v2, Lorg/cwb/cwb_main;->gpsStation:Ljava/lang/String;

    #setter for: Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/cwb/cwb_main;->access$2(Lorg/cwb/cwb_main;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lorg/cwb/cwb_main$period_check_Receiver;->this$0:Lorg/cwb/cwb_main;

    #getter for: Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;
    invoke-static {v1}, Lorg/cwb/cwb_main;->access$3(Lorg/cwb/cwb_main;)Lorg/cwb/cwb_stationlist;

    move-result-object v1

    iget-object v2, p0, Lorg/cwb/cwb_main$period_check_Receiver;->this$0:Lorg/cwb/cwb_main;

    #getter for: Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;
    invoke-static {v2}, Lorg/cwb/cwb_main;->access$4(Lorg/cwb/cwb_main;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cwb/cwb_stationlist;->setUpStationListClass(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lorg/cwb/cwb_main$period_check_Receiver;->this$0:Lorg/cwb/cwb_main;

    #calls: Lorg/cwb/cwb_main;->showMainPageData()V
    invoke-static {v1}, Lorg/cwb/cwb_main;->access$5(Lorg/cwb/cwb_main;)V

    .line 569
    .end local v0           #location:Landroid/location/Location;
    :cond_4f
    return-void
.end method
