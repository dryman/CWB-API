.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;
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
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 75
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$4(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->CountyName:Ljava/lang/String;

    #setter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedCityName:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$5(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result2:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$6(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    new-instance v1, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;

    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$7()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->result:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$4(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->CountyID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
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
    .line 79
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
