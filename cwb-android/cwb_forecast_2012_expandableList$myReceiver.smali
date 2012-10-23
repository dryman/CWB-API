.class Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;
.super Landroid/content/BroadcastReceiver;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 274
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    .local v0, tempUnitText:Landroid/widget/TextView;
    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 276
    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    :goto_1b
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$1()Landroid/widget/ExpandableListView;

    move-result-object v1

    new-instance v2, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;

    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 281
    return-void

    .line 278
    :cond_2b
    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1b
.end method
