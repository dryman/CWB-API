.class Lorg/cwb/cwb_fish_2012mar_tides$4;
.super Ljava/lang/Object;
.source "cwb_fish_2012mar_tides.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_fish_2012mar_tides;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_fish_2012mar_tides;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_2012mar_tides;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_fish_2012mar_tides$4;->this$0:Lorg/cwb/cwb_fish_2012mar_tides;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 99
    return-void
.end method
