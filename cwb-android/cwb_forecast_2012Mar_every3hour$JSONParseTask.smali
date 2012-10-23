.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012Mar_every3hour.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour;
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
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 741
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getHttpData()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$8(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V

    .line 742
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "g"

    .prologue
    .line 748
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 750
    :try_start_3
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->InitialDisplay()V
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$9(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_c

    .line 756
    :goto_8
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->dismissDialog()V

    .line 757
    return-void

    .line 751
    :catch_c
    move-exception v0

    .line 752
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 762
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 767
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->showDialog()V

    .line 768
    return-void
.end method
