.class Lorg/cwb/cwb_main_group$1;
.super Landroid/os/Handler;
.source "cwb_main_group.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_main_group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_main_group;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_group;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    .line 305
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const v4, 0x7f0200b1

    const v3, 0x7f0200b0

    .line 310
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_6c

    .line 328
    :goto_b
    return-void

    .line 313
    :pswitch_c
    iget-object v0, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    invoke-virtual {v0}, Lorg/cwb/cwb_main_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 314
    iget-object v0, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    #getter for: Lorg/cwb/cwb_main_group;->activityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_main_group;->access$0(Lorg/cwb/cwb_main_group;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 312
    check-cast v0, Lorg/cwb/cwb_main_2012mar;

    .line 314
    invoke-virtual {v0}, Lorg/cwb/cwb_main_2012mar;->onResume()V

    .line 316
    iget-object v0, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    #getter for: Lorg/cwb/cwb_main_group;->page1:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/cwb/cwb_main_group;->access$1(Lorg/cwb/cwb_main_group;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v0, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    #getter for: Lorg/cwb/cwb_main_group;->page2:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/cwb/cwb_main_group;->access$2(Lorg/cwb/cwb_main_group;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 321
    :pswitch_3c
    iget-object v0, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    invoke-virtual {v0}, Lorg/cwb/cwb_main_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 322
    iget-object v0, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    #getter for: Lorg/cwb/cwb_main_group;->activityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_main_group;->access$0(Lorg/cwb/cwb_main_group;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 320
    check-cast v0, Lorg/cwb/cwb_lastActivity_2012mar;

    .line 322
    invoke-virtual {v0}, Lorg/cwb/cwb_lastActivity_2012mar;->getData()V

    .line 324
    iget-object v0, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    #getter for: Lorg/cwb/cwb_main_group;->page1:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/cwb/cwb_main_group;->access$1(Lorg/cwb/cwb_main_group;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    iget-object v0, p0, Lorg/cwb/cwb_main_group$1;->this$0:Lorg/cwb/cwb_main_group;

    #getter for: Lorg/cwb/cwb_main_group;->page2:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/cwb/cwb_main_group;->access$2(Lorg/cwb/cwb_main_group;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 310
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_3c
    .end packed-switch
.end method
