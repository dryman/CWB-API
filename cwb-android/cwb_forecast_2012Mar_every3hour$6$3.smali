.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$3;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_every3hour.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$3;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 257
    const/4 v0, 0x4

    if-ne p2, v0, :cond_23

    .line 258
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 259
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$3;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$16(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$3;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    move-result-object v1

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$16(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_23
    const/4 v0, 0x0

    return v0
.end method
