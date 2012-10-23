.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$5;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_every3hour.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

.field private final synthetic val$addFavorite:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Landroid/widget/ImageButton;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$5;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    iput-object p2, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$5;->val$addFavorite:Landroid/widget/ImageButton;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 206
    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 207
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$5;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$5;->val$addFavorite:Landroid/widget/ImageButton;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->checkAddButtonVisibility(Landroid/widget/ImageButton;)V
    invoke-static {v1, v2}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$15(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Landroid/widget/ImageButton;)V

    .line 218
    :goto_f
    return-void

    .line 209
    :cond_10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "Please Check Network"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 211
    const-string v2, "OK"

    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_every3hour$5$1;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$5$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_f
.end method
