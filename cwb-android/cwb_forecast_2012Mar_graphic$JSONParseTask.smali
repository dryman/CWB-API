.class Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012Mar_graphic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_graphic;
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
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_graphic;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_graphic;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_graphic;

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

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 111
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_graphic;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_graphic;->getHttpData()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->access$0(Lorg/cwb/cwb_forecast_2012Mar_graphic;)V

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "g"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_graphic;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_graphic;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->access$1(Lorg/cwb/cwb_forecast_2012Mar_graphic;)V

    .line 122
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->dismissDialog()V

    .line 123
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 133
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->showDialog()V

    .line 134
    return-void
.end method
