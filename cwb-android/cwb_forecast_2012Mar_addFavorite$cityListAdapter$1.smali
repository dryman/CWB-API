.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter$1;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_addFavorite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

.field private final synthetic val$arg0:I


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter$1;->this$1:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

    iput p2, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter$1;->val$arg0:I

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 385
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter$1;->this$1:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;)Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    move-result-object v0

    iget v1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter$1;->val$arg0:I

    #calls: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->deleteSelf(I)V
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$1(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;I)V

    .line 386
    return-void
.end method
