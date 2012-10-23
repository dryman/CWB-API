.class Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;
.super Landroid/os/AsyncTask;
.source "cwb_fish_tides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_fish_tides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FishTideAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_fish_tides;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_tides;)V
    .registers 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->this$0:Lorg/cwb/cwb_fish_tides;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->this$0:Lorg/cwb/cwb_fish_tides;

    #setter for: Lorg/cwb/cwb_fish_tides;->in:Ljava/io/InputStream;
    invoke-static {v0, v3}, Lorg/cwb/cwb_fish_tides;->access$2(Lorg/cwb/cwb_fish_tides;Ljava/io/InputStream;)V

    .line 223
    iget-object v0, p0, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->this$0:Lorg/cwb/cwb_fish_tides;

    iget-object v1, p0, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->this$0:Lorg/cwb/cwb_fish_tides;

    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/auth_tides.xml"

    #calls: Lorg/cwb/cwb_fish_tides;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    invoke-static {v1, v2}, Lorg/cwb/cwb_fish_tides;->access$3(Lorg/cwb/cwb_fish_tides;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_fish_tides;->in:Ljava/io/InputStream;
    invoke-static {v0, v1}, Lorg/cwb/cwb_fish_tides;->access$2(Lorg/cwb/cwb_fish_tides;Ljava/io/InputStream;)V

    .line 224
    return-object v3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 227
    iget-object v0, p0, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->this$0:Lorg/cwb/cwb_fish_tides;

    #calls: Lorg/cwb/cwb_fish_tides;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_fish_tides;->access$4(Lorg/cwb/cwb_fish_tides;)V

    .line 228
    return-void
.end method

.method protected onPreExecute()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 218
    iget-object v0, p0, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->this$0:Lorg/cwb/cwb_fish_tides;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->this$0:Lorg/cwb/cwb_fish_tides;

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Lorg/cwb/cwb_fish_tides;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_fish_tides;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_fish_tides;->access$0(Lorg/cwb/cwb_fish_tides;Landroid/app/ProgressDialog;)V

    .line 219
    iget-object v0, p0, Lorg/cwb/cwb_fish_tides$FishTideAsyncTask;->this$0:Lorg/cwb/cwb_fish_tides;

    #getter for: Lorg/cwb/cwb_fish_tides;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_fish_tides;->access$1(Lorg/cwb/cwb_fish_tides;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 220
    return-void
.end method
