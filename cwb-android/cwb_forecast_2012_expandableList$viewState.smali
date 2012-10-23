.class Lorg/cwb/cwb_forecast_2012_expandableList$viewState;
.super Ljava/lang/Object;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "viewState"
.end annotation


# instance fields
.field private bExpanded:Z

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

.field private viewIndex:I


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 2
    .parameter

    .prologue
    .line 1257
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewBExpanded()Z
    .registers 2

    .prologue
    .line 1274
    iget-boolean v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->bExpanded:Z

    return v0
.end method

.method public getViewIndex()I
    .registers 2

    .prologue
    .line 1270
    iget v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->viewIndex:I

    return v0
.end method

.method public setViewBExpanded(Z)V
    .registers 2
    .parameter "bExpan"

    .prologue
    .line 1266
    iput-boolean p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->bExpanded:Z

    .line 1267
    return-void
.end method

.method public setViewIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 1262
    iput p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->viewIndex:I

    .line 1263
    return-void
.end method
