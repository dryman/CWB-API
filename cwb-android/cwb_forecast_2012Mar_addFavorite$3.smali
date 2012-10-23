.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$3;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_addFavorite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$3;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 98
    new-instance v0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$3;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$10()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$3;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->showAddSelection()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$11(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V

    .line 100
    return-void
.end method
