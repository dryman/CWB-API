.class Lorg/cwb/cwb_lifeStyle$5;
.super Ljava/lang/Object;
.source "cwb_lifeStyle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_lifeStyle;->InitDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_lifeStyle;

.field private final synthetic val$firstDayData:Landroid/widget/Button;

.field private final synthetic val$secondDayData:Landroid/widget/Button;

.field private final synthetic val$tomoDayData:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeStyle;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle$5;->this$0:Lorg/cwb/cwb_lifeStyle;

    iput-object p2, p0, Lorg/cwb/cwb_lifeStyle$5;->val$firstDayData:Landroid/widget/Button;

    iput-object p3, p0, Lorg/cwb/cwb_lifeStyle$5;->val$secondDayData:Landroid/widget/Button;

    iput-object p4, p0, Lorg/cwb/cwb_lifeStyle$5;->val$tomoDayData:Landroid/widget/Button;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const v2, 0x7f0200be

    .line 306
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$5;->this$0:Lorg/cwb/cwb_lifeStyle;

    const/4 v1, 0x0

    #calls: Lorg/cwb/cwb_lifeStyle;->setViewData(I)V
    invoke-static {v0, v1}, Lorg/cwb/cwb_lifeStyle;->access$6(Lorg/cwb/cwb_lifeStyle;I)V

    .line 307
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$5;->val$firstDayData:Landroid/widget/Button;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 308
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$5;->val$secondDayData:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 309
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$5;->val$tomoDayData:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 310
    return-void
.end method
