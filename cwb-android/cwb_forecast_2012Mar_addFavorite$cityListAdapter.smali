.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;
.super Landroid/widget/BaseAdapter;
.source "cwb_forecast_2012Mar_addFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_addFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cityListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;)Lorg/cwb/cwb_forecast_2012Mar_addFavorite;
    .registers 2
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 348
    const/4 v0, 0x0

    .line 349
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 355
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 361
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v8, 0x0

    .line 369
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 370
    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 373
    .local v3, myView:Landroid/view/View;
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, data:[Ljava/lang/String;
    const v5, 0x7f0800e1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 375
    .local v4, townName:Landroid/widget/TextView;
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const v5, 0x7f0800e0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 378
    .local v0, cityName:Landroid/widget/TextView;
    aget-object v5, v1, v8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const v5, 0x7f0800e2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 382
    .local v2, deleteBtn:Landroid/widget/ImageButton;
    new-instance v5, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter$1;

    invoke-direct {v5, p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 390
    return-object v3
.end method
