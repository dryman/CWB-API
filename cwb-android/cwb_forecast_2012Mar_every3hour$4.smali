.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_every3hour.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    .line 186
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
    .line 190
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$6(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownName:Ljava/lang/String;

    #setter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$12(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$6(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownshipID:Ljava/lang/String;

    sput-object v0, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedCityName:Ljava/lang/String;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$13(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$4;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->selectedTownName:Ljava/lang/String;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$14(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    .line 193
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
    .line 194
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
