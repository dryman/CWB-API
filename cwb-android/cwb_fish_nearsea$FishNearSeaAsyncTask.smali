.class Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;
.super Landroid/os/AsyncTask;
.source "cwb_fish_nearsea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_fish_nearsea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FishNearSeaAsyncTask"
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
.field final synthetic this$0:Lorg/cwb/cwb_fish_nearsea;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_nearsea;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->this$0:Lorg/cwb/cwb_fish_nearsea;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->this$0:Lorg/cwb/cwb_fish_nearsea;

    #setter for: Lorg/cwb/cwb_fish_nearsea;->in:Ljava/io/InputStream;
    invoke-static {v0, v3}, Lorg/cwb/cwb_fish_nearsea;->access$2(Lorg/cwb/cwb_fish_nearsea;Ljava/io/InputStream;)V

    .line 196
    iget-object v0, p0, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->this$0:Lorg/cwb/cwb_fish_nearsea;

    iget-object v1, p0, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->this$0:Lorg/cwb/cwb_fish_nearsea;

    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/auth_nearsea.xml"

    #calls: Lorg/cwb/cwb_fish_nearsea;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    invoke-static {v1, v2}, Lorg/cwb/cwb_fish_nearsea;->access$3(Lorg/cwb/cwb_fish_nearsea;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_fish_nearsea;->in:Ljava/io/InputStream;
    invoke-static {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->access$2(Lorg/cwb/cwb_fish_nearsea;Ljava/io/InputStream;)V

    .line 197
    return-object v3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 200
    iget-object v0, p0, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->this$0:Lorg/cwb/cwb_fish_nearsea;

    #calls: Lorg/cwb/cwb_fish_nearsea;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_fish_nearsea;->access$4(Lorg/cwb/cwb_fish_nearsea;)V

    .line 201
    return-void
.end method

.method protected onPreExecute()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 191
    iget-object v0, p0, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->this$0:Lorg/cwb/cwb_fish_nearsea;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->this$0:Lorg/cwb/cwb_fish_nearsea;

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Lorg/cwb/cwb_fish_nearsea;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_fish_nearsea;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_fish_nearsea;->access$0(Lorg/cwb/cwb_fish_nearsea;Landroid/app/ProgressDialog;)V

    .line 192
    iget-object v0, p0, Lorg/cwb/cwb_fish_nearsea$FishNearSeaAsyncTask;->this$0:Lorg/cwb/cwb_fish_nearsea;

    #getter for: Lorg/cwb/cwb_fish_nearsea;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_fish_nearsea;->access$1(Lorg/cwb/cwb_fish_nearsea;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 193
    return-void
.end method
