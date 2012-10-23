.class Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData$1;
.super Ljava/lang/Object;
.source "cwb_forecast_2012_expandableList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 382
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 383
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$4(Z)V

    .line 384
    return-void
.end method
