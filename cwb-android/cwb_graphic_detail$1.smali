.class Lorg/cwb/cwb_graphic_detail$1;
.super Landroid/webkit/WebViewClient;
.source "cwb_graphic_detail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_graphic_detail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field d:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lorg/cwb/cwb_graphic_detail;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_graphic_detail;)V
    .registers 4
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_graphic_detail$1;->this$0:Lorg/cwb/cwb_graphic_detail;

    .line 30
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 32
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cwb/cwb_graphic_detail$1;->d:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lorg/cwb/cwb_graphic_detail$1;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 39
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 45
    iget-object v0, p0, Lorg/cwb/cwb_graphic_detail$1;->d:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lorg/cwb/cwb_graphic_detail$1;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 47
    return-void
.end method
