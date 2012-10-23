.class Lorg/cwb/cwb_warningActivity$period_check_Receiver;
.super Landroid/content/BroadcastReceiver;
.source "cwb_warningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_warningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "period_check_Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_warningActivity;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_warningActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$period_check_Receiver;->this$0:Lorg/cwb/cwb_warningActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 459
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cwb.PERIOD_CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 476
    new-instance v0, Lorg/cwb/cwb_warningActivity$JSONParseTask;

    iget-object v1, p0, Lorg/cwb/cwb_warningActivity$period_check_Receiver;->this$0:Lorg/cwb/cwb_warningActivity;

    invoke-direct {v0, v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask;-><init>(Lorg/cwb/cwb_warningActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 478
    :cond_19
    return-void
.end method
