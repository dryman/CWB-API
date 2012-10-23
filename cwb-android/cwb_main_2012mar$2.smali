.class Lorg/cwb/cwb_main_2012mar$2;
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
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$2;->this$0:Lorg/cwb/cwb_main_2012mar;

    .line 64
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
    .line 67
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$2;->this$0:Lorg/cwb/cwb_main_2012mar;

    invoke-static {}, Lorg/cwb/cwb_main_2012mar;->access$7()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    #setter for: Lorg/cwb/cwb_main_2012mar;->selectedAreaE:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/cwb/cwb_main_2012mar;->access$8(Lorg/cwb/cwb_main_2012mar;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$2;->this$0:Lorg/cwb/cwb_main_2012mar;

    invoke-static {}, Lorg/cwb/cwb_main_2012mar;->access$9()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    #setter for: Lorg/cwb/cwb_main_2012mar;->selectedArea:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/cwb/cwb_main_2012mar;->access$10(Lorg/cwb/cwb_main_2012mar;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lorg/cwb/cwb_main_2012mar$setTownNameTask;

    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar$2;->this$0:Lorg/cwb/cwb_main_2012mar;

    invoke-direct {v0, v1}, Lorg/cwb/cwb_main_2012mar$setTownNameTask;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar$setTownNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
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
    .line 71
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
