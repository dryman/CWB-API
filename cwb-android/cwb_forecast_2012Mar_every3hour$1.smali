.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$1;
.super Landroid/os/Handler;
.source "cwb_forecast_2012Mar_every3hour.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    .line 312
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 319
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->loadCurrentLocationData()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    .line 320
    return-void
.end method
