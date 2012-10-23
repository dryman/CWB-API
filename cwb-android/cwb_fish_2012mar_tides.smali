.class public Lorg/cwb/cwb_fish_2012mar_tides;
.super Landroid/app/Activity;
.source "cwb_fish_2012mar_tides.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;,
        Lorg/cwb/cwb_fish_2012mar_tides$tideData;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;

.field private static area:Ljava/lang/String;

.field private static day1:Ljava/lang/String;

.field private static day2:Ljava/lang/String;

.field private static day3:Ljava/lang/String;


# instance fields
.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_fish_2012mar_tides$tideData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 241
    const-string v0, "1"

    sput-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->day1:Ljava/lang/String;

    .line 242
    const-string v0, "2"

    sput-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->day2:Ljava/lang/String;

    .line 243
    const-string v0, "3"

    sput-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->day3:Ljava/lang/String;

    .line 244
    const-string v0, "01"

    sput-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->area:Ljava/lang/String;

    .line 245
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=B&area=%1$s&day=%2$s"

    sput-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->DATA_URL:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method private InitialDisplay()V
    .registers 24

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_d

    .line 195
    :goto_c
    return-void

    .line 121
    :cond_d
    const v18, 0x7f080035

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    .local v2, currentPosTitle:Landroid/widget/TextView;
    const v18, 0x7f090085

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 124
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_2012mar_tides;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 125
    const-string v22, "graphic_cityname"

    .line 124
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_177

    .line 126
    const-string v18, ""

    :goto_45
    aput-object v18, v20, v21

    .line 123
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 122
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v18, 0x7f080046

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 132
    .local v16, timeLabel:Landroid/widget/TextView;
    const v18, 0x7f090086

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->FcstDate:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v20, v21

    .line 131
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 130
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v18, 0x7f080047

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 138
    .local v11, moonDate:Landroid/widget/TextView;
    const v18, 0x7f090087

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->MoonDate:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v20, v21

    .line 137
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 136
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v18, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 144
    .local v3, dataLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 145
    const/4 v7, 0x1

    .local v7, i:I
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_187

    .line 175
    const v18, 0x7f08004c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 177
    .local v4, hline1:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    .local v8, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2d

    move/from16 v0, v18

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 179
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    const v18, 0x7f08004d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 184
    .local v5, hline2:Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .local v9, lp2:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2d

    move/from16 v0, v18

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 186
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    const v18, 0x7f08004e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 192
    .local v6, hline3:Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    .local v10, lp3:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2d

    move/from16 v0, v18

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 194
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    .line 126
    .end local v3           #dataLayout:Landroid/widget/LinearLayout;
    .end local v4           #hline1:Landroid/widget/ImageView;
    .end local v5           #hline2:Landroid/widget/ImageView;
    .end local v6           #hline3:Landroid/widget/ImageView;
    .end local v7           #i:I
    .end local v8           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #lp2:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #lp3:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #moonDate:Landroid/widget/TextView;
    .end local v16           #timeLabel:Landroid/widget/TextView;
    :cond_177
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_2012mar_tides;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 127
    const-string v22, "graphic_cityname"

    .line 126
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_45

    .line 146
    .restart local v3       #dataLayout:Landroid/widget/LinearLayout;
    .restart local v7       #i:I
    .restart local v11       #moonDate:Landroid/widget/TextView;
    .restart local v16       #timeLabel:Landroid/widget/TextView;
    :cond_187
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_fish_2012mar_tides;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    .line 147
    const v19, 0x7f030005

    const/16 v20, 0x0

    .line 146
    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 149
    .local v17, view:Landroid/view/View;
    const v18, 0x7f080050

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 150
    .local v13, tidePos:Landroid/widget/TextView;
    const v18, 0x7f080051

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 151
    .local v14, tideTime:Landroid/widget/TextView;
    const v18, 0x7f080052

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 152
    .local v15, tideType:Landroid/widget/TextView;
    const v18, 0x7f080053

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 154
    .local v12, tideHeight:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Station:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v20, v7, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Station:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_207

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Station:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Style:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\u4e7e\u6f6e"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24f

    .line 158
    const-string v18, "#ffff61"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    const-string v18, "#ffff61"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    const-string v18, "#ffff61"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    const-string v18, "#ffff61"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    :cond_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Time:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Style:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Height:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f5
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 245
    sget-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->DATA_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 244
    sget-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->area:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 241
    sget-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->day1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .registers 1

    .prologue
    .line 242
    sget-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->day2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .registers 1

    .prologue
    .line 243
    sget-object v0, Lorg/cwb/cwb_fish_2012mar_tides;->day3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cwb/cwb_fish_2012mar_tides;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lorg/cwb/cwb_fish_2012mar_tides;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lorg/cwb/cwb_fish_2012mar_tides;->getHttpData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lorg/cwb/cwb_fish_2012mar_tides;)V
    .registers 1
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/cwb/cwb_fish_2012mar_tides;->InitialDisplay()V

    return-void
.end method

.method private getHttpData(Ljava/lang/String;)V
    .registers 14
    .parameter "url"

    .prologue
    .line 248
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 249
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 250
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 252
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 253
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4c

    .line 254
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 257
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 258
    .local v7, line:Ljava/lang/String;
    const-string v2, ""

    .line 259
    .local v2, content:Ljava/lang/String;
    :goto_31
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4d

    .line 263
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v8, object:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3d
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_5f

    .line 308
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 314
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_4c
    :goto_4c
    return-void

    .line 260
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_4d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    .line 269
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_5f
    new-instance v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_fish_2012mar_tides$tideData;-><init>(Lorg/cwb/cwb_fish_2012mar_tides;)V

    .line 270
    .local v0, areaData:Lorg/cwb/cwb_fish_2012mar_tides$tideData;
    if-nez v5, :cond_b9

    .line 273
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 274
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 275
    const-string v11, "dayinfo"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "FcstDate"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 272
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->FcstDate:Ljava/lang/String;

    .line 277
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 278
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 279
    const-string v11, "dayinfo"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Week"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 276
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Week:Ljava/lang/String;

    .line 281
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 282
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 283
    const-string v11, "dayinfo"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MoonDate"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 280
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->MoonDate:Ljava/lang/String;

    .line 305
    :goto_b1
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 288
    :cond_b9
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 289
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 290
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Station"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 287
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Station:Ljava/lang/String;

    .line 292
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 293
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 294
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Style"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 291
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Style:Ljava/lang/String;

    .line 296
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 297
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 298
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Time"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 295
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Time:Ljava/lang/String;

    .line 300
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 301
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 302
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Height"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 299
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Height:Ljava/lang/String;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_119} :catch_11a

    goto :goto_b1

    .line 311
    .end local v0           #areaData:Lorg/cwb/cwb_fish_2012mar_tides$tideData;
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_11a
    move-exception v3

    .line 312
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4c
.end method


# virtual methods
.method public getDataSize()I
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0200be

    const/4 v6, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_fish_2012mar_tides;->setContentView(I)V

    .line 34
    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 35
    .local v1, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->setDrawingCacheEnabled(Z)V

    .line 36
    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->setPersistentDrawingCache(I)V

    .line 38
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_2012mar_tides;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "graphic_cityid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 39
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_2012mar_tides;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "graphic_cityid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/cwb/cwb_fish_2012mar_tides;->area:Ljava/lang/String;

    .line 42
    :cond_34
    new-instance v4, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;-><init>(Lorg/cwb/cwb_fish_2012mar_tides;I)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    const v4, 0x7f080041

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    .local v0, firstDayData:Landroid/widget/Button;
    const v4, 0x7f080042

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 46
    .local v2, secondDayData:Landroid/widget/Button;
    const v4, 0x7f080043

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_fish_2012mar_tides;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 49
    .local v3, tomoDayData:Landroid/widget/Button;
    const v4, 0x7f0200bf

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 50
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 51
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 52
    new-instance v4, Lorg/cwb/cwb_fish_2012mar_tides$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lorg/cwb/cwb_fish_2012mar_tides$1;-><init>(Lorg/cwb/cwb_fish_2012mar_tides;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v4, Lorg/cwb/cwb_fish_2012mar_tides$2;

    invoke-direct {v4, p0, v0, v2, v3}, Lorg/cwb/cwb_fish_2012mar_tides$2;-><init>(Lorg/cwb/cwb_fish_2012mar_tides;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v4, Lorg/cwb/cwb_fish_2012mar_tides$3;

    invoke-direct {v4, p0, v0, v2, v3}, Lorg/cwb/cwb_fish_2012mar_tides$3;-><init>(Lorg/cwb/cwb_fish_2012mar_tides;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 325
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 331
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 91
    new-instance v1, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;-><init>(Lorg/cwb/cwb_fish_2012mar_tides;I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/cwb/cwb_fish_2012mar_tides$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    :goto_17
    return-void

    .line 93
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 95
    const-string v2, "OK"

    new-instance v3, Lorg/cwb/cwb_fish_2012mar_tides$4;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_fish_2012mar_tides$4;-><init>(Lorg/cwb/cwb_fish_2012mar_tides;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_17
.end method
