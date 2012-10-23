.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$2;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_every3hour.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$2;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 248
    sput-boolean v0, Lorg/cwb/cwb_constants;->nowFirstTimeInitial:Z

    .line 249
    sput-boolean v0, Lorg/cwb/cwb_constants;->lifeFirstTimeInitial:Z

    .line 250
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$2;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getData(Z)V

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$2;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$16(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$2;->this$1:Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    move-result-object v1

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$16(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 253
    return-void
.end method
