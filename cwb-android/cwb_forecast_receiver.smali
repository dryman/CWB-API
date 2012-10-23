.class public Lorg/cwb/cwb_forecast_receiver;
.super Landroid/content/BroadcastReceiver;
.source "cwb_forecast_receiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "data"

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cwb.PERIOD_CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 15
    sget-boolean v0, Lorg/cwb/cwb_forecast;->bLoading:Z

    if-nez v0, :cond_20

    .line 16
    sget v0, Lorg/cwb/cwb_forecast;->screen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    invoke-static {}, Lorg/cwb/cwb_forecast_week;->refreshData()V

    .line 17
    :cond_18
    sget v0, Lorg/cwb/cwb_forecast;->screen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    invoke-static {}, Lorg/cwb/cwb_forecast_travel;->refreshData()V

    .line 20
    :cond_20
    return-void
.end method
