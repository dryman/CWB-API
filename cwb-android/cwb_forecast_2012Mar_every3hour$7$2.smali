.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$7$2;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_every3hour.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$7$2;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$7$2;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;->access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour$7;)Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->locationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$18(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    return-void
.end method
