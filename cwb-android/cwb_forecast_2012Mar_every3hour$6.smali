.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;
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
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    iput-object p2, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->val$addFavorite:Landroid/widget/ImageButton;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)Lorg/cwb/cwb_forecast_2012Mar_every3hour;
    .registers 2
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 225
    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "Please Check Network"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 228
    const-string v2, "OK"

    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$1;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 264
    :goto_27
    return-void

    .line 239
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_28
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->val$addFavorite:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->contentView:Landroid/view/View;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$16(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 245
    const-string v2, "OK"

    new-instance v3, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$2;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$2;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 254
    new-instance v2, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$3;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$6$3;-><init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour$6;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_27
.end method
