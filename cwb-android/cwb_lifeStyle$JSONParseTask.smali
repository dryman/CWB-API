.class Lorg/cwb/cwb_lifeStyle$JSONParseTask;
.super Landroid/os/AsyncTask;
.source "cwb_lifeStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_lifeStyle;
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
.field final synthetic this$0:Lorg/cwb/cwb_lifeStyle;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeStyle;)V
    .registers 2
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

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

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 512
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    #calls: Lorg/cwb/cwb_lifeStyle;->getHttpData()V
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$2(Lorg/cwb/cwb_lifeStyle;)V

    .line 513
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    #calls: Lorg/cwb/cwb_lifeStyle;->InitDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$3(Lorg/cwb/cwb_lifeStyle;)V

    .line 521
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 522
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 523
    :cond_19
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    const/4 v1, 0x0

    #setter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_lifeStyle;->access$1(Lorg/cwb/cwb_lifeStyle;Landroid/app/ProgressDialog;)V

    .line 524
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 529
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 540
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_lifeStyle;->access$1(Lorg/cwb/cwb_lifeStyle;Landroid/app/ProgressDialog;)V

    .line 541
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 543
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 544
    return-void
.end method
