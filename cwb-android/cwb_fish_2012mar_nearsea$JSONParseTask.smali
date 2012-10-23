.class Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;
.super Landroid/os/AsyncTask;
.source "cwb_fish_2012mar_nearsea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_fish_2012mar_nearsea;
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
.field final synthetic this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

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

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 158
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    #calls: Lorg/cwb/cwb_fish_2012mar_nearsea;->getHttpData()V
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->access$0(Lorg/cwb/cwb_fish_2012mar_nearsea;)V

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    #calls: Lorg/cwb/cwb_fish_2012mar_nearsea;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->access$1(Lorg/cwb/cwb_fish_2012mar_nearsea;)V

    .line 167
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    #getter for: Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->access$2(Lorg/cwb/cwb_fish_2012mar_nearsea;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 168
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    #getter for: Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->access$2(Lorg/cwb/cwb_fish_2012mar_nearsea;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 169
    :cond_19
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 175
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_fish_2012mar_nearsea;->access$3(Lorg/cwb/cwb_fish_2012mar_nearsea;Landroid/app/ProgressDialog;)V

    .line 176
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    #getter for: Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->access$2(Lorg/cwb/cwb_fish_2012mar_nearsea;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    #getter for: Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->access$2(Lorg/cwb/cwb_fish_2012mar_nearsea;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 178
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    #getter for: Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->access$2(Lorg/cwb/cwb_fish_2012mar_nearsea;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 179
    return-void
.end method
