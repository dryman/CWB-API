.class Lorg/cwb/cwb_main_2012mar$5;
.super Ljava/lang/Object;
.source "cwb_main_2012mar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_main_2012mar;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_main_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$5;->this$0:Lorg/cwb/cwb_main_2012mar;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_main_2012mar$5;)Lorg/cwb/cwb_main_2012mar;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$5;->this$0:Lorg/cwb/cwb_main_2012mar;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 128
    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Please Check Network"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 131
    const-string v3, "OK"

    new-instance v4, Lorg/cwb/cwb_main_2012mar$5$1;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_main_2012mar$5$1;-><init>(Lorg/cwb/cwb_main_2012mar$5;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 155
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_27
    :goto_27
    return-void

    .line 141
    :cond_28
    invoke-static {}, Lorg/cwb/cwb_utilities;->isGPSEnable()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 144
    iget-object v2, p0, Lorg/cwb/cwb_main_2012mar$5;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->mo:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lorg/cwb/cwb_main_2012mar;->access$16(Lorg/cwb/cwb_main_2012mar;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    new-instance v3, Lorg/cwb/cwb_main_2012mar$5$2;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_main_2012mar$5$2;-><init>(Lorg/cwb/cwb_main_2012mar$5;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MyLocationOverlay;->runOnFirstFix(Ljava/lang/Runnable;)Z

    move-result v1

    .line 153
    .local v1, hasFix:Z
    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 154
    const-string v3, "\u5b9a\u4f4d\u4e2d ..."

    const/4 v4, 0x1

    .line 153
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_27
.end method
