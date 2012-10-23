.class Lorg/cwb/cwb_parserdatathread$EventHandler$1;
.super Ljava/lang/Object;
.source "cwb_parserdatathread.java"

# interfaces
.implements Lorg/cwb/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_parserdatathread$EventHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_parserdatathread$EventHandler;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_parserdatathread$EventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_parserdatathread$EventHandler$1;->this$1:Lorg/cwb/cwb_parserdatathread$EventHandler;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 98
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lorg/cwb/cwb_parserdatathread$EventHandler$1;->this$1:Lorg/cwb/cwb_parserdatathread$EventHandler;

    #getter for: Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;
    invoke-static {v1}, Lorg/cwb/cwb_parserdatathread$EventHandler;->access$0(Lorg/cwb/cwb_parserdatathread$EventHandler;)Lorg/cwb/cwb_parserdatathread;

    move-result-object v1

    iget-object v1, v1, Lorg/cwb/cwb_parserdatathread;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v1, v0}, Lorg/cwb/cwb_stationlist;->setUpStationListClass(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lorg/cwb/cwb_parserdatathread$EventHandler$1;->this$1:Lorg/cwb/cwb_parserdatathread$EventHandler;

    #getter for: Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;
    invoke-static {v1}, Lorg/cwb/cwb_parserdatathread$EventHandler;->access$0(Lorg/cwb/cwb_parserdatathread$EventHandler;)Lorg/cwb/cwb_parserdatathread;

    move-result-object v1

    iget-object v1, v1, Lorg/cwb/cwb_parserdatathread;->mCallback:Lorg/cwb/RequestCallback;

    iget-object v2, p0, Lorg/cwb/cwb_parserdatathread$EventHandler$1;->this$1:Lorg/cwb/cwb_parserdatathread$EventHandler;

    #getter for: Lorg/cwb/cwb_parserdatathread$EventHandler;->this$0:Lorg/cwb/cwb_parserdatathread;
    invoke-static {v2}, Lorg/cwb/cwb_parserdatathread$EventHandler;->access$0(Lorg/cwb/cwb_parserdatathread$EventHandler;)Lorg/cwb/cwb_parserdatathread;

    move-result-object v2

    iget-object v2, v2, Lorg/cwb/cwb_parserdatathread;->mCwbData:Lorg/cwb/cwb_stationlist;

    invoke-interface {v1, v2}, Lorg/cwb/RequestCallback;->onComplete(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
