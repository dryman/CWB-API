.class Lorg/cwb/cwb_main_2012mar$3;
.super Ljava/lang/Object;
.source "cwb_main_2012mar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_main_2012mar;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lorg/cwb/cwb_main_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$3;->this$0:Lorg/cwb/cwb_main_2012mar;

    .line 88
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
    .line 92
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar$3;->this$0:Lorg/cwb/cwb_main_2012mar;

    sget-object v0, Lorg/cwb/cwb_constants;->cityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lorg/cwb/cwb_main_2012mar;->selectedTownName:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/cwb/cwb_main_2012mar;->access$11(Lorg/cwb/cwb_main_2012mar;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar$3;->this$0:Lorg/cwb/cwb_main_2012mar;

    sget-object v0, Lorg/cwb/cwb_constants;->stidList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lorg/cwb/cwb_main_2012mar;->selectedID:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/cwb/cwb_main_2012mar;->access$12(Lorg/cwb/cwb_main_2012mar;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$3;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->selectedID:Ljava/lang/String;
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$13(Lorg/cwb/cwb_main_2012mar;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cwb/cwb_constants;->selectedStid:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar$3;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;
    invoke-static {v1}, Lorg/cwb/cwb_main_2012mar;->access$14(Lorg/cwb/cwb_main_2012mar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar$3;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->selectedTownName:Ljava/lang/String;
    invoke-static {v1}, Lorg/cwb/cwb_main_2012mar;->access$15(Lorg/cwb/cwb_main_2012mar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cwb/cwb_constants;->observeStationName:Ljava/lang/String;

    .line 96
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
    .line 97
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
