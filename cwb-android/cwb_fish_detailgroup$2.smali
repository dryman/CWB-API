.class Lorg/cwb/cwb_fish_detailgroup$2;
.super Ljava/lang/Object;
.source "cwb_fish_detailgroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_fish_detailgroup;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_fish_detailgroup;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_detailgroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_fish_detailgroup$2;->this$0:Lorg/cwb/cwb_fish_detailgroup;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 210
    sget-object v0, Lorg/cwb/cwb_constants;->fishDetailGroup:Landroid/app/ActivityGroup;

    if-eqz v0, :cond_d

    .line 215
    iget-object v0, p0, Lorg/cwb/cwb_fish_detailgroup$2;->this$0:Lorg/cwb/cwb_fish_detailgroup;

    #getter for: Lorg/cwb/cwb_fish_detailgroup;->viewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lorg/cwb/cwb_fish_detailgroup;->access$0(Lorg/cwb/cwb_fish_detailgroup;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 217
    :cond_d
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 218
    return-void
.end method
