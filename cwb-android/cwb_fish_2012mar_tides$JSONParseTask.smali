.class Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;
.super Landroid/os/AsyncTask;
.source "cwb_fish_2012mar_tides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_fish_2012mar_tides;
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
.field final synthetic this$0:Lorg/cwb/cwb_fish_2012mar_tides;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_fish_2012mar_tides;I)V
    .registers 8
    .parameter
    .parameter "whichDay"

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    iput-object p1, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_tides;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->url:Ljava/lang/String;

    .line 202
    packed-switch p2, :pswitch_data_5c

    .line 213
    :goto_f
    return-void

    .line 204
    :pswitch_10
    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$0()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$1()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$2()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->url:Ljava/lang/String;

    goto :goto_f

    .line 207
    :pswitch_29
    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$0()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$1()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$3()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->url:Ljava/lang/String;

    goto :goto_f

    .line 210
    :pswitch_42
    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$0()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$1()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Lorg/cwb/cwb_fish_2012mar_tides;->access$4()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->url:Ljava/lang/String;

    goto :goto_f

    .line 202
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_29
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_tides;

    #getter for: Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_tides;->access$5(Lorg/cwb/cwb_fish_2012mar_tides;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_tides;

    iget-object v1, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->url:Ljava/lang/String;

    #calls: Lorg/cwb/cwb_fish_2012mar_tides;->getHttpData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->access$6(Lorg/cwb/cwb_fish_2012mar_tides;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_tides;

    #calls: Lorg/cwb/cwb_fish_2012mar_tides;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_tides;->access$7(Lorg/cwb/cwb_fish_2012mar_tides;)V

    .line 231
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 237
    return-void
.end method
