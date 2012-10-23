.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012Mar_addFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_addFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSONParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

.field private whichToLoad:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "url"

    .prologue
    .line 447
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 448
    iput-object p2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->whichToLoad:Ljava/lang/String;

    .line 449
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 454
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->whichToLoad:Ljava/lang/String;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->getHttpData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$2(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$3(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    .line 465
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->dismissDialog()V

    .line 466
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 471
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 476
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->showDialog()V

    .line 477
    return-void
.end method
