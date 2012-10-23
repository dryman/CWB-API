.class Lorg/cwb/cwb_fish_2012mar_tides$3;
.super Ljava/lang/Object;
.source "cwb_fish_2012mar_tides.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_fish_2012mar_tides;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_fish_2012mar_tides;

.field private final synthetic val$firstDayData:Landroid/widget/Button;

.field private final synthetic val$secondDayData:Landroid/widget/Button;

.field private final synthetic val$tomoDayData:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_2012mar_tides;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_fish_2012mar_tides$3;->this$0:Lorg/cwb/cwb_fish_2012mar_tides;

    iput-object p2, p0, Lorg/cwb/cwb_fish_2012mar_tides$3;->val$firstDayData:Landroid/widget/Button;

    iput-object p3, p0, Lorg/cwb/cwb_fish_2012mar_tides$3;->val$secondDayData:Landroid/widget/Button;

    iput-object p4, p0, Lorg/cwb/cwb_fish_2012mar_tides$3;->val$tomoDayData:Landroid/widget/Button;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const v1, 0x7f0200be

    .line 75
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$3;->val$firstDayData:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$3;->val$secondDayData:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$3;->val$tomoDayData:Landroid/widget/Button;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 78
    new-instance v0, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;

    iget-object v1, p0, Lorg/cwb/cwb_fish_2012mar_tides$3;->this$0:Lorg/cwb/cwb_fish_2012mar_tides;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;-><init>(Lorg/cwb/cwb_fish_2012mar_tides;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method
