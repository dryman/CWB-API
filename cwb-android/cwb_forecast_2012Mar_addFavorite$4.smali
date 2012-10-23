.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$4;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_addFavorite.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
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
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$4;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 114
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$4;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->listView:Lorg/cwb/view/DraggableListView;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$12(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Lorg/cwb/view/DraggableListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cwb/view/DraggableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, data:[Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    sput-object v1, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    .line 117
    sput-boolean v3, Lorg/cwb/cwb_constants;->bNeedChangeDefaultWeatherBackground:Z

    .line 118
    sget-object v1, Lorg/cwb/cwb_constants;->forecast_group:Landroid/app/Activity;

    check-cast v1, Lorg/cwb/cwb_forecast_2012Mar_group;

    invoke-virtual {v1}, Lorg/cwb/cwb_forecast_2012Mar_group;->goNext()V

    .line 119
    return-void
.end method
