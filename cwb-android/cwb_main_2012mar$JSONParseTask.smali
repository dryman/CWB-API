.class Lorg/cwb/cwb_main_2012mar$JSONParseTask;
.super Landroid/os/AsyncTask;
.source "cwb_main_2012mar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_main_2012mar;
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
.field final synthetic this$0:Lorg/cwb/cwb_main_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->this$0:Lorg/cwb/cwb_main_2012mar;

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

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 460
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->this$0:Lorg/cwb/cwb_main_2012mar;

    #calls: Lorg/cwb/cwb_main_2012mar;->getHttpData()V
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$3(Lorg/cwb/cwb_main_2012mar;)V

    .line 461
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->this$0:Lorg/cwb/cwb_main_2012mar;

    #calls: Lorg/cwb/cwb_main_2012mar;->getCityData()V
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$4(Lorg/cwb/cwb_main_2012mar;)V

    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 468
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->this$0:Lorg/cwb/cwb_main_2012mar;

    #calls: Lorg/cwb/cwb_main_2012mar;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$5(Lorg/cwb/cwb_main_2012mar;)V

    .line 472
    invoke-static {}, Lorg/cwb/cwb_main_group;->dismissDialog()V

    .line 473
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 478
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 484
    invoke-static {}, Lorg/cwb/cwb_main_group;->showDialog()V

    .line 485
    return-void
.end method
