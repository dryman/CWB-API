.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$2;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_addFavorite.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$2;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$2;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$2;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$6(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->TownName:Ljava/lang/String;

    #setter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedTownName:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$8(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$2;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$2;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$6(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->TownshipID:Ljava/lang/String;

    #setter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedID:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$9(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
