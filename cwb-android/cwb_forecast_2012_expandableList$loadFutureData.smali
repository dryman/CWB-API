.class Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadFutureData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private myList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 473
    iput-object p2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->myList:Ljava/util/ArrayList;

    .line 474
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .parameter "list"

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 482
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->myList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lorg/cwb/cwb_forecast_2012_expandableList;->getFutrueDate(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$10(Lorg/cwb/cwb_forecast_2012_expandableList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    return-object v0
.end method
