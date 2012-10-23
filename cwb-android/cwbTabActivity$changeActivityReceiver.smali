.class Lorg/cwb/cwbTabActivity$changeActivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "cwbTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwbTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "changeActivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwbTabActivity;


# direct methods
.method constructor <init>(Lorg/cwb/cwbTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lorg/cwb/cwbTabActivity$changeActivityReceiver;->this$0:Lorg/cwb/cwbTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cwb.SET_WARNICON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 82
    iget-object v7, p0, Lorg/cwb/cwbTabActivity$changeActivityReceiver;->this$0:Lorg/cwb/cwbTabActivity;

    const-string v8, "warn"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    #setter for: Lorg/cwb/cwbTabActivity;->bHasWarn:Z
    invoke-static {v7, v8}, Lorg/cwb/cwbTabActivity;->access$0(Lorg/cwb/cwbTabActivity;Z)V

    .line 83
    iget-object v7, p0, Lorg/cwb/cwbTabActivity$changeActivityReceiver;->this$0:Lorg/cwb/cwbTabActivity;

    const v8, 0x7f080029

    invoke-virtual {v7, v8}, Lorg/cwb/cwbTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 84
    .local v5, warnIcon:Landroid/widget/ImageView;
    iget-object v7, p0, Lorg/cwb/cwbTabActivity$changeActivityReceiver;->this$0:Lorg/cwb/cwbTabActivity;

    #getter for: Lorg/cwb/cwbTabActivity;->bHasWarn:Z
    invoke-static {v7}, Lorg/cwb/cwbTabActivity;->access$1(Lorg/cwb/cwbTabActivity;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 85
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    .end local v5           #warnIcon:Landroid/widget/ImageView;
    :cond_2f
    :goto_2f
    return-void

    .line 87
    .restart local v5       #warnIcon:Landroid/widget/ImageView;
    :cond_30
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2f

    .line 89
    .end local v5           #warnIcon:Landroid/widget/ImageView;
    :cond_36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cwb.REMOVE_SELF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 90
    iget-object v7, p0, Lorg/cwb/cwbTabActivity$changeActivityReceiver;->this$0:Lorg/cwb/cwbTabActivity;

    invoke-virtual {v7}, Lorg/cwb/cwbTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    .line 91
    .local v3, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v7

    packed-switch v7, :pswitch_data_240

    goto :goto_2f

    .line 98
    :pswitch_50
    sget-object v7, Lorg/cwb/cwb_forecast_2012Mar_group;->Group:Lorg/cwb/cwb_forecast_2012Mar_group;

    .line 99
    sget-object v8, Lorg/cwb/cwb_forecast_2012Mar_group;->Group:Lorg/cwb/cwb_forecast_2012Mar_group;

    invoke-virtual {v8}, Lorg/cwb/cwb_forecast_2012Mar_group;->removeLastChild()Landroid/view/View;

    move-result-object v8

    .line 98
    invoke-virtual {v7, v8}, Lorg/cwb/cwb_forecast_2012Mar_group;->setContentView(Landroid/view/View;)V

    goto :goto_2f

    .line 94
    :pswitch_5c
    sget-object v7, Lorg/cwb/cwb_main_group;->Group:Lorg/cwb/cwb_main_group;

    .line 95
    sget-object v8, Lorg/cwb/cwb_main_group;->Group:Lorg/cwb/cwb_main_group;

    invoke-virtual {v8}, Lorg/cwb/cwb_main_group;->removeLastChild()Landroid/view/View;

    move-result-object v8

    .line 94
    invoke-virtual {v7, v8}, Lorg/cwb/cwb_main_group;->setContentView(Landroid/view/View;)V

    goto :goto_2f

    .line 102
    :pswitch_68
    sget-object v7, Lorg/cwb/cwb_fish_group;->Group:Lorg/cwb/cwb_fish_group;

    .line 103
    sget-object v8, Lorg/cwb/cwb_fish_group;->Group:Lorg/cwb/cwb_fish_group;

    invoke-virtual {v8}, Lorg/cwb/cwb_fish_group;->removeLastChild()Landroid/view/View;

    move-result-object v8

    .line 102
    invoke-virtual {v7, v8}, Lorg/cwb/cwb_fish_group;->setContentView(Landroid/view/View;)V

    goto :goto_2f

    .line 106
    :pswitch_74
    sget-object v7, Lorg/cwb/cwb_graphic_group;->Group:Lorg/cwb/cwb_graphic_group;

    .line 107
    sget-object v8, Lorg/cwb/cwb_graphic_group;->Group:Lorg/cwb/cwb_graphic_group;

    invoke-virtual {v8}, Lorg/cwb/cwb_graphic_group;->removeLastChild()Landroid/view/View;

    move-result-object v8

    .line 106
    invoke-virtual {v7, v8}, Lorg/cwb/cwb_graphic_group;->setContentView(Landroid/view/View;)V

    goto :goto_2f

    .line 110
    :pswitch_80
    sget-object v7, Lorg/cwb/cwb_more_group;->Group:Lorg/cwb/cwb_more_group;

    .line 111
    sget-object v8, Lorg/cwb/cwb_more_group;->Group:Lorg/cwb/cwb_more_group;

    invoke-virtual {v8}, Lorg/cwb/cwb_more_group;->removeLastChild()Landroid/view/View;

    move-result-object v8

    .line 110
    invoke-virtual {v7, v8}, Lorg/cwb/cwb_more_group;->setContentView(Landroid/view/View;)V

    goto :goto_2f

    .line 115
    .end local v3           #tabHost:Landroid/widget/TabHost;
    :cond_8c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v1, launchIntent:Landroid/content/Intent;
    const-string v7, "group_index"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, groupindex:I
    packed-switch v0, :pswitch_data_24e

    .line 166
    :cond_a6
    :goto_a6
    :pswitch_a6
    const-string v7, "warmDataTitle"

    .line 167
    const-string v8, "warmDataTitle"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v7, "warmDataTime"

    .line 169
    const-string v8, "warmDataTime"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v7, "warmDataContent"

    .line 171
    const-string v8, "warmDataContent"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v7, "CWB_URL"

    .line 175
    const-string v8, "CWB_URL"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v7, "current_tab"

    .line 177
    const-string v8, "current_tab"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 176
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v7, "package_name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    const-string v8, "class_name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 178
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v7, p0, Lorg/cwb/cwbTabActivity$changeActivityReceiver;->this$0:Lorg/cwb/cwbTabActivity;

    invoke-virtual {v7}, Lorg/cwb/cwbTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v7

    .line 184
    const-string v8, "class_name"

    .line 183
    invoke-virtual {v7, v8, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v4

    .line 185
    .local v4, w:Landroid/view/Window;
    if-eqz v4, :cond_221

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 186
    .local v6, wd:Landroid/view/View;
    :goto_fe
    const-string v7, "view_layer_id"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 188
    .local v2, layerindex:I
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 189
    invoke-virtual {v6, v2}, Landroid/view/View;->setId(I)V

    .line 191
    packed-switch v0, :pswitch_data_25c

    goto/16 :goto_2f

    .line 193
    :pswitch_110
    sget-object v7, Lorg/cwb/cwb_graphic_group;->Group:Lorg/cwb/cwb_graphic_group;

    invoke-virtual {v7, v6}, Lorg/cwb/cwb_graphic_group;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2f

    .line 125
    .end local v2           #layerindex:I
    .end local v4           #w:Landroid/view/Window;
    .end local v6           #wd:Landroid/view/View;
    :pswitch_117
    const-string v7, "graphic_cityid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12a

    .line 126
    const-string v7, "graphic_cityid"

    const-string v8, "graphic_cityid"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :cond_12a
    const-string v7, "graphic_cityname"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 128
    const-string v7, "graphic_cityname"

    const-string v8, "graphic_cityname"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a6

    .line 133
    :pswitch_13f
    const-string v7, "NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_152

    .line 134
    const-string v7, "NAME"

    const-string v8, "NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :cond_152
    const-string v7, "stationlist"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_165

    .line 136
    const-string v7, "stationlist"

    const-string v8, "stationlist"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 137
    :cond_165
    const-string v7, "NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_178

    .line 138
    const-string v7, "NAME"

    const-string v8, "NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_178
    const-string v7, "activity name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 140
    const-string v7, "activity name"

    const-string v8, "activity name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a6

    .line 143
    :pswitch_18d
    const-string v7, "area"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a0

    .line 144
    const-string v7, "area"

    const-string v8, "area"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :cond_1a0
    const-string v7, "travel"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b3

    .line 146
    const-string v7, "travel"

    const-string v8, "travel"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    :cond_1b3
    const-string v7, "countyNameIndex"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v9, :cond_1c6

    .line 148
    const-string v7, "countyNameIndex"

    const-string v8, "countyNameIndex"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    :cond_1c6
    const-string v7, "townShipIndex"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v9, :cond_1d9

    .line 150
    const-string v7, "townShipIndex"

    const-string v8, "townShipIndex"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    :cond_1d9
    const-string v7, "forecast_from_listpage"

    .line 153
    const-string v8, "forecast_from_listpage"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 152
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_a6

    .line 156
    :pswitch_1e6
    const-string v7, "cwb_fish"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f9

    .line 157
    const-string v7, "cwb_fish"

    const-string v8, "cwb_fish"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :cond_1f9
    const-string v7, "area"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_20c

    .line 159
    const-string v7, "area"

    const-string v8, "area"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :cond_20c
    const-string v7, "city_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 161
    const-string v7, "city_id"

    const-string v8, "city_id"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a6

    .line 185
    .restart local v4       #w:Landroid/view/Window;
    :cond_221
    const/4 v6, 0x0

    goto/16 :goto_fe

    .line 196
    .restart local v2       #layerindex:I
    .restart local v6       #wd:Landroid/view/View;
    :pswitch_224
    sget-object v7, Lorg/cwb/cwb_more_group;->Group:Lorg/cwb/cwb_more_group;

    invoke-virtual {v7, v6}, Lorg/cwb/cwb_more_group;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2f

    .line 199
    :pswitch_22b
    sget-object v7, Lorg/cwb/cwb_main_group;->Group:Lorg/cwb/cwb_main_group;

    invoke-virtual {v7, v6}, Lorg/cwb/cwb_main_group;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2f

    .line 202
    :pswitch_232
    sget-object v7, Lorg/cwb/cwb_forecast_2012Mar_group;->Group:Lorg/cwb/cwb_forecast_2012Mar_group;

    invoke-virtual {v7, v6}, Lorg/cwb/cwb_forecast_2012Mar_group;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2f

    .line 205
    :pswitch_239
    sget-object v7, Lorg/cwb/cwb_fish_group;->Group:Lorg/cwb/cwb_fish_group;

    invoke-virtual {v7, v6}, Lorg/cwb/cwb_fish_group;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2f

    .line 91
    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_50
        :pswitch_5c
        :pswitch_68
        :pswitch_74
        :pswitch_80
    .end packed-switch

    .line 123
    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_117
        :pswitch_a6
        :pswitch_13f
        :pswitch_18d
        :pswitch_1e6
    .end packed-switch

    .line 191
    :pswitch_data_25c
    .packed-switch 0x0
        :pswitch_110
        :pswitch_224
        :pswitch_22b
        :pswitch_232
        :pswitch_239
    .end packed-switch
.end method
