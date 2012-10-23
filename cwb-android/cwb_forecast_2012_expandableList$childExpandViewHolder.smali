.class Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
.super Ljava/lang/Object;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "childExpandViewHolder"
.end annotation


# instance fields
.field public backgroundRES:I

.field public dateText:Landroid/widget/TextView;

.field public iconImage:Landroid/widget/ImageView;

.field public position:I

.field public rainText:Landroid/widget/TextView;

.field public tempText:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 2
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
