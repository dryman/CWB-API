.class Lorg/cwb/cwb_fish_2012mar_nearsea$3;
.super Ljava/lang/Object;
.source "cwb_fish_2012mar_nearsea.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_fish_2012mar_nearsea;->InitialDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$3;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    return-void
.end method
