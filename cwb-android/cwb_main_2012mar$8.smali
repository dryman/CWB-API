.class Lorg/cwb/cwb_main_2012mar$8;
.super Ljava/lang/Object;
.source "cwb_main_2012mar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_main_2012mar;->showSelectionFirst()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_main_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$8;->this$0:Lorg/cwb/cwb_main_2012mar;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 272
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1b

    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 274
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$8;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$18(Lorg/cwb/cwb_main_2012mar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar$8;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;
    invoke-static {v1}, Lorg/cwb/cwb_main_2012mar;->access$18(Lorg/cwb/cwb_main_2012mar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 276
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
