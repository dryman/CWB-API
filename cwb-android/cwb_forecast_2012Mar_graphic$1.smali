.class Lorg/cwb/cwb_forecast_2012Mar_graphic$1;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_graphic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_graphic;->InitialDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_graphic;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_graphic;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$1;->this$0:Lorg/cwb/cwb_forecast_2012Mar_graphic;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    return-void
.end method
