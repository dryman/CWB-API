.class Lorg/cwb/cwb_forecast_2012Mar_group$1;
.super Landroid/os/Handler;
.source "cwb_forecast_2012Mar_group.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_group;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_group;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_group$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_group;

    .line 385
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 390
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_group$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_group;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lorg/cwb/cwb_forecast_2012Mar_group;->updateData(II)V
    invoke-static {v0, v1, v2}, Lorg/cwb/cwb_forecast_2012Mar_group;->access$0(Lorg/cwb/cwb_forecast_2012Mar_group;II)V

    .line 391
    return-void
.end method
