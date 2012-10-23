.class Lorg/cwb/cwb_parserdatathread$EventHandler;
.super Landroid/os/Handler;
.source "cwb_parserdatathread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_parserdatathread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_parserdatathread;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_parserdatathread;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 83
    iput-object p1, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_parserdatathread$EventHandler;)Lorg/cwb/cwb_parserdatathread;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3a

    .line 107
    :goto_5
    iget-object v1, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    iget-object v1, v1, Lorg/cwb/cwb_parserdatathread;->handler:Lorg/cwb/cwb_parserdatathread$EventHandler;

    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    invoke-virtual {v1, v2}, Lorg/cwb/cwb_parserdatathread$EventHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    return-void

    .line 90
    :pswitch_12
    new-instance v0, Lorg/cwb/cwb_warningdata;

    iget-object v1, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    iget-object v1, v1, Lorg/cwb/cwb_parserdatathread;->warnlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    iget-object v2, v2, Lorg/cwb/cwb_parserdatathread;->warnlinklist:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/cwb/cwb_warningdata;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 91
    .local v0, warndata:Lorg/cwb/cwb_warningdata;
    iget-object v1, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    iget-object v1, v1, Lorg/cwb/cwb_parserdatathread;->mCallback:Lorg/cwb/RequestCallback;

    invoke-interface {v1, v0}, Lorg/cwb/RequestCallback;->onComplete(Ljava/lang/Object;)V

    goto :goto_5

    .line 95
    .end local v0           #warndata:Lorg/cwb/cwb_warningdata;
    :pswitch_27
    new-instance v1, Lorg/cwb/cwb_findlocation;

    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    iget-object v2, v2, Lorg/cwb/cwb_parserdatathread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;

    iget-object v3, v3, Lorg/cwb/cwb_parserdatathread;->mCwbData:Lorg/cwb/cwb_stationlist;

    new-instance v4, Lorg/cwb/cwb_parserdatathread$EventHandler$1;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_parserdatathread$EventHandler$1;-><init>(Lorg/cwb/cwb_parserdatathread$EventHandler;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/cwb/cwb_findlocation;-><init>(Landroid/content/Context;Lorg/cwb/cwb_stationlist;Lorg/cwb/RequestCallback;)V

    goto :goto_5

    .line 88
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_27
    .end packed-switch
.end method
