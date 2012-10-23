.class Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "weatherInfoAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method private constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 2
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    return-void
.end method

.method private getWeekDay(I)Ljava/lang/String;
    .registers 3
    .parameter "number"

    .prologue
    .line 1204
    packed-switch p1, :pswitch_data_1c

    .line 1221
    const-string v0, ""

    :goto_5
    return-object v0

    .line 1206
    :pswitch_6
    const-string v0, "\u65e5"

    goto :goto_5

    .line 1208
    :pswitch_9
    const-string v0, "\u4e00"

    goto :goto_5

    .line 1210
    :pswitch_c
    const-string v0, "\u4e8c"

    goto :goto_5

    .line 1212
    :pswitch_f
    const-string v0, "\u4e09"

    goto :goto_5

    .line 1214
    :pswitch_12
    const-string v0, "\u56db"

    goto :goto_5

    .line 1216
    :pswitch_15
    const-string v0, "\u4e94"

    goto :goto_5

    .line 1218
    :pswitch_18
    const-string v0, "\u516d"

    goto :goto_5

    .line 1204
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 5
    .parameter "groupPosition"
    .parameter "arg1"

    .prologue
    .line 839
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v0

    sub-int v0, p1, v0

    if-nez v0, :cond_11

    .line 840
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 843
    :goto_10
    return-object v0

    .line 841
    :cond_11
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 842
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 843
    :cond_23
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 849
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v0

    sub-int v0, p1, v0

    if-nez v0, :cond_a

    .line 850
    int-to-long v0, p2

    .line 853
    :goto_9
    return-wide v0

    .line 851
    :cond_a
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 852
    int-to-long v0, p2

    goto :goto_9

    .line 853
    :cond_15
    const-wide/16 v0, 0x0

    goto :goto_9
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    .line 862
    const/4 v3, 0x0

    .line 864
    .local v3, viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    if-eqz p4, :cond_e

    :try_start_4
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;

    iget v5, v5, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->position:I

    if-eq v5, p2, :cond_17c

    .line 866
    :cond_e
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 867
    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 868
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getLayoutRES()I

    move-result v5

    const/4 v7, 0x0

    .line 867
    invoke-virtual {v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 870
    new-instance v4, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;

    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {v4, v5}, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_1bc

    .line 871
    .end local v3           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    .local v4, viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    :try_start_2e
    iput p2, v4, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->position:I

    .line 872
    const v5, 0x7f080092

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->dateText:Landroid/widget/TextView;

    .line 873
    const v5, 0x7f080093

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 874
    const v5, 0x7f080094

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->tempText:Landroid/widget/TextView;

    .line 875
    const v5, 0x7f080095

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->rainText:Landroid/widget/TextView;

    .line 876
    rem-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_171

    .line 877
    const v5, 0x7f0200cd

    iput v5, v4, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->backgroundRES:I

    .line 880
    :goto_65
    invoke-virtual {p4, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_68} :catch_178

    move-object v3, v4

    .line 884
    .end local v4           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    .restart local v3       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    :goto_69
    :try_start_69
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v5

    sub-int v5, p1, v5

    if-nez v5, :cond_1be

    .line 885
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->dateText:Landroid/widget/TextView;

    .line 886
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090074

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 887
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    .line 885
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, time:Ljava/lang/String;
    const-string v5, "00:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 891
    const-string v5, "03:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 892
    const-string v5, "18:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 893
    const-string v5, "21:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_186

    .line 894
    :cond_c9
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->iconImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 895
    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "night_wea"

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getWxicon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "drawable"

    .line 896
    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v9}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 895
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 894
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 903
    :goto_fd
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->tempText:Landroid/widget/TextView;

    .line 904
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090074

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 905
    sget-object v10, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getMinT()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    .line 903
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->rainText:Landroid/widget/TextView;

    .line 908
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090077

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 909
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getPoP()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    .line 907
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    .end local v2           #time:Ljava/lang/String;
    :cond_16a
    :goto_16a
    iget v5, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->backgroundRES:I

    invoke-virtual {p4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_16f} :catch_1bc

    move-object v1, p4

    .line 946
    .end local p4
    .local v1, convertView:Landroid/view/View;
    :goto_170
    return-object v1

    .line 879
    .end local v1           #convertView:Landroid/view/View;
    .end local v3           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    .restart local v4       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    .restart local p4
    :cond_171
    const v5, 0x7f0200ce

    :try_start_174
    iput v5, v4, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->backgroundRES:I
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_176} :catch_178

    goto/16 :goto_65

    .line 943
    :catch_178
    move-exception v5

    move-object v3, v4

    .end local v4           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    .restart local v3       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;
    :goto_17a
    move-object v1, p4

    .line 946
    .end local p4
    .restart local v1       #convertView:Landroid/view/View;
    goto :goto_170

    .line 882
    .end local v1           #convertView:Landroid/view/View;
    .restart local p4
    :cond_17c
    :try_start_17c
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;

    move-object v3, v0

    goto/16 :goto_69

    .line 898
    .restart local v2       #time:Ljava/lang/String;
    :cond_186
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->iconImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 899
    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "day_wea"

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getWxicon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "drawable"

    .line 900
    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v9}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 899
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 898
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_fd

    .line 943
    .end local v2           #time:Ljava/lang/String;
    :catch_1bc
    move-exception v5

    goto :goto_17a

    .line 910
    :cond_1be
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v5

    sub-int v5, p1, v5

    if-ne v5, v8, :cond_16a

    .line 911
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->dateText:Landroid/widget/TextView;

    .line 912
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090074

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 913
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    .line 911
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v2

    .line 917
    .restart local v2       #time:Ljava/lang/String;
    const-string v5, "00:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21e

    .line 918
    const-string v5, "03:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21e

    .line 919
    const-string v5, "18:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21e

    .line 920
    const-string v5, "21:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c1

    .line 921
    :cond_21e
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->iconImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 922
    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "night_wea"

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getWxicon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "drawable"

    .line 923
    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v9}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 922
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 921
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 930
    :goto_252
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->tempText:Landroid/widget/TextView;

    .line 931
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090074

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 932
    sget-object v10, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getMinT()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    .line 930
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->rainText:Landroid/widget/TextView;

    .line 935
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090077

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 936
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getPoP()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    .line 934
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16a

    .line 925
    :cond_2c1
    iget-object v6, v3, Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;->iconImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 926
    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "day_wea"

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v5}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getWxicon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "drawable"

    .line 927
    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v9}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 926
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 925
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2f5
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_2f5} :catch_1bc

    goto/16 :goto_252
.end method

.method public getChildrenCount(I)I
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 952
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v0

    sub-int v0, p1, v0

    if-nez v0, :cond_11

    .line 953
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 956
    :goto_10
    return v0

    .line 954
    :cond_11
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 955
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_10

    .line 956
    :cond_23
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 962
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$29(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 968
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$29(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 974
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 984
    const/4 v6, 0x0

    .line 986
    .local v6, viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    if-eqz p2, :cond_11e

    :try_start_3
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v8

    sub-int v8, p1, v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_11e

    .line 987
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v8

    sub-int v8, p1, v8

    if-ltz v8, :cond_11e

    .line 989
    if-eqz p3, :cond_32

    .line 990
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;

    iget-object v8, v8, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->getViewBExpanded()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;

    iget-object v8, v8, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->getViewIndex()I

    move-result v8

    if-eq v8, p1, :cond_10a

    .line 992
    :cond_32
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 993
    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 994
    const v9, 0x7f03000e

    const/4 v10, 0x0

    .line 993
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 996
    new-instance v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {v7, v8}, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_11c

    .line 997
    .end local v6           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .local v7, viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :try_start_47
    iget-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->setViewBExpanded(Z)V

    .line 998
    iget-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    invoke-virtual {v8, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->setViewIndex(I)V

    .line 999
    move-object/from16 v0, p3

    iput-object v0, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style3:Landroid/view/View;

    .line 1000
    const v8, 0x7f0800a4

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_dateText:Landroid/widget/TextView;

    .line 1001
    const v8, 0x7f0800a1

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_tempText:Landroid/widget/TextView;

    .line 1003
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v8

    sub-int v8, p1, v8

    if-nez v8, :cond_cb

    .line 1004
    iget-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_dateText:Landroid/widget/TextView;

    .line 1006
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090074

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 1007
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$17()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1009
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$18()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1007
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1005
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1004
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    :goto_b2
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_b7} :catch_105

    move-object v6, v7

    .line 1026
    .end local v7           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v6       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :goto_b8
    :try_start_b8
    sget-object v8, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v8}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 1027
    iget-object v8, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_tempText:Landroid/widget/TextView;

    const v9, 0x7f090071

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1032
    :goto_c8
    iget-object v8, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style3:Landroid/view/View;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ca} :catch_11c

    .line 1188
    :goto_ca
    return-object v8

    .line 1012
    .end local v6           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v7       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :cond_cb
    :try_start_cb
    iget-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_dateText:Landroid/widget/TextView;

    .line 1014
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090074

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 1015
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$20()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1017
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$21()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1015
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1013
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1012
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_104} :catch_105

    goto :goto_b2

    .line 1186
    :catch_105
    move-exception v8

    move-object v6, v7

    .end local v7           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v6       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :goto_107
    move-object/from16 v8, p3

    .line 1188
    goto :goto_ca

    .line 1023
    :cond_10a
    :try_start_10a
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;

    move-object v6, v0

    goto :goto_b8

    .line 1029
    :cond_113
    iget-object v8, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_tempText:Landroid/widget/TextView;

    const v9, 0x7f090072

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c8

    .line 1186
    :catch_11c
    move-exception v8

    goto :goto_107

    .line 1034
    :cond_11e
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$29(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1036
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    if-eqz p3, :cond_148

    .line 1037
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;

    iget-object v8, v8, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->getViewBExpanded()Z

    move-result v8

    if-nez v8, :cond_148

    .line 1038
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;

    iget-object v8, v8, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->getViewIndex()I

    move-result v8

    if-eq v8, p1, :cond_62a

    .line 1039
    :cond_148
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 1040
    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getLayoutRES()I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 1042
    new-instance v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {v7, v8}, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_165} :catch_11c

    .line 1043
    .end local v6           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v7       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :try_start_165
    iget-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->setViewBExpanded(Z)V

    .line 1044
    iget-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->state:Lorg/cwb/cwb_forecast_2012_expandableList$viewState;

    invoke-virtual {v8, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$viewState;->setViewIndex(I)V

    .line 1046
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2b2

    .line 1047
    move-object/from16 v0, p3

    iput-object v0, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style1:Landroid/view/View;

    .line 1048
    const v8, 0x7f080092

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_dateText:Landroid/widget/TextView;

    .line 1049
    const v8, 0x7f080093

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_iconImage:Landroid/widget/ImageView;

    .line 1050
    const v8, 0x7f080094

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_tempText:Landroid/widget/TextView;

    .line 1051
    const v8, 0x7f080095

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_rainText:Landroid/widget/TextView;

    .line 1052
    rem-int/lit8 v8, p1, 0x2

    if-nez v8, :cond_2ab

    .line 1053
    const v8, 0x7f0200cd

    iput v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->backgroundRES:I

    .line 1084
    :goto_1b9
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_395

    .line 1089
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_dateText:Landroid/widget/TextView;

    .line 1090
    const-string v10, "%s"

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1091
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    .line 1090
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1089
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v5

    .line 1095
    .local v5, time:Ljava/lang/String;
    const-string v8, "00:00"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20c

    .line 1096
    const-string v8, "03:00"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20c

    .line 1097
    const-string v8, "18:00"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20c

    .line 1098
    const-string v8, "21:00"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_362

    .line 1099
    :cond_20c
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_iconImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 1100
    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v8, "night_wea"

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getWxicon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "drawable"

    .line 1101
    iget-object v12, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v12}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1100
    invoke-virtual {v10, v8, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1099
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1108
    :goto_23d
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_tempText:Landroid/widget/TextView;

    .line 1109
    const-string v10, "%s"

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1110
    sget-object v13, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getMinT()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    .line 1109
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1108
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_rainText:Landroid/widget/TextView;

    .line 1113
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f090077

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1114
    new-instance v13, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getPoP()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "%"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    .line 1112
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_29b
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_29b} :catch_105

    move-object v6, v7

    .line 1177
    .end local v5           #time:Ljava/lang/String;
    .end local v7           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v6       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :goto_29c
    :try_start_29c
    iget-object v8, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style1:Landroid/view/View;

    if-eqz v8, :cond_634

    .line 1178
    iget-object v8, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style1:Landroid/view/View;

    iget v9, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->backgroundRES:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1179
    iget-object v8, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style1:Landroid/view/View;
    :try_end_2a9
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2a9} :catch_11c

    goto/16 :goto_ca

    .line 1055
    .end local v6           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v7       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :cond_2ab
    const v8, 0x7f0200ce

    :try_start_2ae
    iput v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->backgroundRES:I

    goto/16 :goto_1b9

    .line 1057
    :cond_2b2
    move-object/from16 v0, p3

    iput-object v0, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style2:Landroid/view/View;

    .line 1058
    const v8, 0x7f080087

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_dateText:Landroid/widget/TextView;

    .line 1059
    const v8, 0x7f080088

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_iconImage:Landroid/widget/ImageView;

    .line 1060
    const v8, 0x7f080089

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_tempText:Landroid/widget/TextView;

    .line 1061
    const v8, 0x7f08008a

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_rainText:Landroid/widget/TextView;

    .line 1062
    const v8, 0x7f08008c

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_dateText:Landroid/widget/TextView;

    .line 1063
    const v8, 0x7f08008d

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_iconImage:Landroid/widget/ImageView;

    .line 1064
    const v8, 0x7f08008e

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_tempText:Landroid/widget/TextView;

    .line 1065
    const v8, 0x7f08008f

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_rainText:Landroid/widget/TextView;

    .line 1068
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$30()I

    move-result v8

    if-ge p1, v8, :cond_343

    .line 1069
    const v8, 0x7f080090

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1070
    .local v1, dropDownBtn:Landroid/widget/ImageView;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v8

    sub-int v8, p1, v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_354

    .line 1072
    const v8, 0x7f02013c

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1078
    .end local v1           #dropDownBtn:Landroid/widget/ImageView;
    :cond_343
    :goto_343
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v8

    sub-int v8, p1, v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_35b

    .line 1079
    const v8, 0x7f02013b

    iput v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->backgroundRES:I

    goto/16 :goto_1b9

    .line 1074
    .restart local v1       #dropDownBtn:Landroid/widget/ImageView;
    :cond_354
    const v8, 0x7f02013f

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_343

    .line 1081
    .end local v1           #dropDownBtn:Landroid/widget/ImageView;
    :cond_35b
    const v8, 0x7f020140

    iput v8, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->backgroundRES:I

    goto/16 :goto_1b9

    .line 1103
    .restart local v5       #time:Ljava/lang/String;
    :cond_362
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_iconImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 1104
    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v8, "day_wea"

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getWxicon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "drawable"

    .line 1105
    iget-object v12, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v12}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1104
    invoke-virtual {v10, v8, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1103
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_23d

    .line 1117
    .end local v5           #time:Ljava/lang/String;
    :cond_395
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_dateText:Landroid/widget/TextView;

    .line 1118
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f090075

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1119
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDataDate()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v12, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    .line 1118
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1117
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_iconImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 1122
    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v8, "day_wea"

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getWxicon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "drawable"

    .line 1123
    iget-object v12, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v12}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1122
    invoke-virtual {v10, v8, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1121
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1125
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_tempText:Landroid/widget/TextView;

    .line 1126
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f090076

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1127
    sget-object v13, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getMinT()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v12, 0x1

    .line 1128
    sget-object v13, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getMaxT()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    .line 1125
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->first_rainText:Landroid/widget/TextView;

    .line 1131
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getPoP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5d4

    .line 1132
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1133
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v8

    const v11, 0x7f090077

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 1134
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getPoP()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "%"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1130
    :goto_486
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    const-string v2, "<font size=\"16\" color=\"red\">%s&nbsp;</font><font size=\"16\">%s</font>"

    .line 1137
    .local v2, htmlTextWithHoliday:Ljava/lang/String;
    const-string v3, "<font size=\"16\">%s&nbsp;</font><font size=\"16\">%s</font>"

    .line 1138
    .local v3, htmlTextWithoutHoliday:Ljava/lang/String;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getDay()I

    move-result v8

    .line 1139
    add-int/2addr v8, p1

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v8, v8, 0x7

    .line 1138
    invoke-direct {p0, v8}, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->getWeekDay(I)Ljava/lang/String;

    move-result-object v8

    .line 1139
    const-string v9, "\u516d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4cb

    .line 1140
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getDay()I

    move-result v8

    .line 1141
    add-int/2addr v8, p1

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v8, v8, 0x7

    .line 1140
    invoke-direct {p0, v8}, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->getWeekDay(I)Ljava/lang/String;

    move-result-object v8

    .line 1141
    const-string v9, "\u65e5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d8

    .line 1142
    :cond_4cb
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_dateText:Landroid/widget/TextView;

    .line 1143
    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1144
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getDay()I

    move-result v12

    add-int/2addr v12, p1

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x7

    .line 1145
    invoke-direct {p0, v12}, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->getWeekDay(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1147
    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1144
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v11, 0x1

    .line 1147
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    .line 1143
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1142
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    :goto_518
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_iconImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 1158
    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v8, "night_wea"

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getWxicon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "drawable"

    .line 1159
    iget-object v12, p0, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-virtual {v12}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1158
    invoke-virtual {v10, v8, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1157
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1161
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_tempText:Landroid/widget/TextView;

    .line 1162
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v8

    const v10, 0x7f090076

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1163
    sget-object v13, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getMinT()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v12, 0x1

    .line 1164
    sget-object v13, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getMaxT()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    .line 1162
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1161
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_rainText:Landroid/widget/TextView;

    .line 1167
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getPoP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_627

    .line 1168
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$0()Landroid/app/Activity;

    move-result-object v8

    const v11, 0x7f090077

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 1169
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getPoP()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "%"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1168
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1166
    :goto_5ce
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v6, v7

    .end local v7           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v6       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    goto/16 :goto_29c

    .line 1134
    .end local v2           #htmlTextWithHoliday:Ljava/lang/String;
    .end local v3           #htmlTextWithoutHoliday:Ljava/lang/String;
    .end local v6           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v7       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :cond_5d4
    const-string v8, ""

    goto/16 :goto_486

    .line 1149
    .restart local v2       #htmlTextWithHoliday:Ljava/lang/String;
    .restart local v3       #htmlTextWithoutHoliday:Ljava/lang/String;
    :cond_5d8
    iget-object v9, v7, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->second_dateText:Landroid/widget/TextView;

    .line 1150
    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1151
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1153
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getDay()I

    move-result v12

    add-int/2addr v12, p1

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$28()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x7

    .line 1152
    invoke-direct {p0, v12}, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;->getWeekDay(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1154
    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1151
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v11, 0x1

    .line 1154
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->getDayNight()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    .line 1150
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1149
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_518

    .line 1169
    :cond_627
    const-string v8, ""
    :try_end_629
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_629} :catch_105

    goto :goto_5ce

    .line 1173
    .end local v2           #htmlTextWithHoliday:Ljava/lang/String;
    .end local v3           #htmlTextWithoutHoliday:Ljava/lang/String;
    .end local v7           #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    .restart local v6       #viewHolder:Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;
    :cond_62a
    :try_start_62a
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;

    move-object v6, v0

    goto/16 :goto_29c

    .line 1181
    :cond_634
    iget-object v8, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style2:Landroid/view/View;

    iget v9, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->backgroundRES:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1182
    iget-object v8, v6, Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;->style2:Landroid/view/View;
    :try_end_63d
    .catch Ljava/lang/Exception; {:try_start_62a .. :try_end_63d} :catch_11c

    goto/16 :goto_ca
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 1194
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1200
    const/4 v0, 0x1

    return v0
.end method
