.class Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
.super Ljava/lang/Object;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "groupExpandViewHolder"
.end annotation


# instance fields
.field public backgroundRES:I

.field public first_dateText:Landroid/widget/TextView;

.field public first_iconImage:Landroid/widget/ImageView;

.field public first_rainText:Landroid/widget/TextView;

.field public first_tempText:Landroid/widget/TextView;

.field public second_dateText:Landroid/widget/TextView;

.field public second_iconImage:Landroid/widget/ImageView;

.field public second_rainText:Landroid/widget/TextView;

.field public second_tempText:Landroid/widget/TextView;

.field public state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

.field public style1:Landroid/view/View;

.field public style2:Landroid/view/View;

.field public style3:Landroid/view/View;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 3
    .parameter

    .prologue
    .line 1252
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    new-instance v0, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    invoke-direct {v0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    .line 1254
    return-void
.end method
