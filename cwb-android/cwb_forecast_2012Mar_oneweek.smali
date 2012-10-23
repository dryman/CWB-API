.class public Lorg/cwb/cwb_forecast_2012Mar_oneweek;
.super Landroid/app/Activity;
.source "cwb_forecast_2012Mar_oneweek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast_2012Mar_oneweek$JSONParseTask;,
        Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;


# instance fields
.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 181
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=7&townid="

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->DATA_URL:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private InitialDisplay()V
    .registers 23

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_35

    .line 63
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v18, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f09006d

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 65
    const-string v19, "OK"

    new-instance v20, Lorg/cwb/cwb_forecast_2012Mar_oneweek$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_oneweek$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_oneweek;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 70
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    .line 146
    .end local v4           #builder:Landroid/app/AlertDialog$Builder;
    :goto_34
    return-void

    .line 75
    :cond_35
    const v18, 0x7f0800d6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 77
    .local v5, dataLayout:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_98

    .line 138
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    const v18, 0x7f0800ce

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 141
    .local v15, unit:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0900a3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, label:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_350

    .line 144
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v19, 0x7f090096

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 142
    :goto_92
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 79
    .end local v10           #label:Ljava/lang/String;
    .end local v15           #unit:Landroid/widget/TextView;
    :cond_98
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 86
    .local v16, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 87
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "dateLabel"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v20, v7, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 86
    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 85
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 88
    .local v6, dateText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Day:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 92
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "weekday"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v20, v7, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 91
    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 90
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 93
    .local v17, weekDay:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Week:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Week:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\u65e5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_156

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Week:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\u516d"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15f

    .line 95
    :cond_156
    const-string v18, "#ffff61"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_15f
    const v18, 0x7f0800d7

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 100
    .local v8, iconDay:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 101
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v18, "b_day_wea"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Wx_Icon1:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 102
    const-string v20, "drawable"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 100
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 99
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    const v18, 0x7f0800da

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 106
    .local v9, iconNight:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 107
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v18, "b_night_wea"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Wx_Icon2:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 108
    const-string v20, "drawable"

    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 106
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 105
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    const v18, 0x7f0800d9

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 112
    .local v13, minT1:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2d9

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MinT1:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 111
    :goto_234
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v18, 0x7f0800dc

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 118
    .local v14, minT2:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2f7

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MinT2:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 117
    :goto_268
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v18, 0x7f0800d8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 124
    .local v11, maxT1:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_315

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MaxT1:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 123
    :goto_29c
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v18, 0x7f0800db

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 130
    .local v12, maxT2:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_333

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MaxT2:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 129
    :goto_2d0
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_43

    .line 114
    .end local v11           #maxT1:Landroid/widget/TextView;
    .end local v12           #maxT2:Landroid/widget/TextView;
    .end local v14           #minT2:Landroid/widget/TextView;
    :cond_2d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MinT1:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_234

    .line 120
    .restart local v14       #minT2:Landroid/widget/TextView;
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MinT1:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_268

    .line 126
    .restart local v11       #maxT1:Landroid/widget/TextView;
    :cond_315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MaxT1:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_29c

    .line 132
    .restart local v12       #maxT2:Landroid/widget/TextView;
    :cond_333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MaxT2:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_2d0

    .line 145
    .end local v6           #dateText:Landroid/widget/TextView;
    .end local v8           #iconDay:Landroid/widget/ImageView;
    .end local v9           #iconNight:Landroid/widget/ImageView;
    .end local v11           #maxT1:Landroid/widget/TextView;
    .end local v12           #maxT2:Landroid/widget/TextView;
    .end local v13           #minT1:Landroid/widget/TextView;
    .end local v14           #minT2:Landroid/widget/TextView;
    .end local v16           #view:Landroid/view/View;
    .end local v17           #weekDay:Landroid/widget/TextView;
    .restart local v10       #label:Ljava/lang/String;
    .restart local v15       #unit:Landroid/widget/TextView;
    :cond_350
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v19, 0x7f090097

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_92
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_2012Mar_oneweek;)V
    .registers 1
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->getHttpData()V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_forecast_2012Mar_oneweek;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->InitialDisplay()V

    return-void
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 184
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 185
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->DATA_URL:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 186
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 188
    .local v8, rp:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 189
    .local v5, in:Ljava/io/BufferedReader;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_68

    .line 190
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    .restart local v5       #in:Ljava/io/BufferedReader;
    const-string v6, ""

    .line 194
    .local v6, line:Ljava/lang/String;
    const-string v1, ""

    .line 195
    .local v1, content:Ljava/lang/String;
    :goto_46
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_69

    .line 199
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v7, object:Lorg/json/JSONObject;
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 201
    const/4 v4, 0x0

    .local v4, i:I
    :goto_57
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-lt v4, v10, :cond_7b

    .line 256
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 262
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #rp:Lorg/apache/http/HttpResponse;
    :cond_68
    :goto_68
    return-void

    .line 196
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #rp:Lorg/apache/http/HttpResponse;
    :cond_69
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 202
    .restart local v4       #i:I
    .restart local v7       #object:Lorg/json/JSONObject;
    :cond_7b
    new-instance v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;

    invoke-direct {v9, p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;-><init>(Lorg/cwb/cwb_forecast_2012Mar_oneweek;)V

    .line 204
    .local v9, weekData:Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 205
    mul-int/lit8 v11, v4, 0x2

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 206
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Day"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 203
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Day:Ljava/lang/String;

    .line 209
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 210
    mul-int/lit8 v11, v4, 0x2

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 211
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "DN"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 208
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->DN1:Ljava/lang/String;

    .line 214
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 215
    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 216
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "DN"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 213
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->DN2:Ljava/lang/String;

    .line 219
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 220
    mul-int/lit8 v11, v4, 0x2

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 221
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Week"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 218
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Week:Ljava/lang/String;

    .line 224
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 225
    mul-int/lit8 v11, v4, 0x2

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 226
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Wx_Icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 223
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Wx_Icon1:Ljava/lang/String;

    .line 229
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 230
    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 231
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Wx_Icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 228
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->Wx_Icon2:Ljava/lang/String;

    .line 234
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 235
    mul-int/lit8 v11, v4, 0x2

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 236
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MinT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 233
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MinT1:Ljava/lang/String;

    .line 239
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 240
    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 241
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MinT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 238
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MinT2:Ljava/lang/String;

    .line 244
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 245
    mul-int/lit8 v11, v4, 0x2

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 246
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MaxT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 243
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MaxT1:Ljava/lang/String;

    .line 249
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 250
    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 251
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MaxT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 248
    iput-object v10, v9, Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;->MaxT2:Ljava/lang/String;

    .line 253
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_191} :catch_195

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_57

    .line 259
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #rp:Lorg/apache/http/HttpResponse;
    .end local v9           #weekData:Lorg/cwb/cwb_forecast_2012Mar_oneweek$oneWeekData;
    :catch_195
    move-exception v2

    .line 260
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_68
.end method


# virtual methods
.method public getData(Z)V
    .registers 6
    .parameter "hasFocus"

    .prologue
    .line 37
    if-eqz p1, :cond_28

    .line 38
    const v2, 0x7f0800a8

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, title:Landroid/widget/TextView;
    sget-object v2, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v2, 0x7f0800d6

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 41
    .local v0, dataLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    new-instance v2, Lorg/cwb/cwb_forecast_2012Mar_oneweek$JSONParseTask;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek$JSONParseTask;-><init>(Lorg/cwb/cwb_forecast_2012Mar_oneweek;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lorg/cwb/cwb_forecast_2012Mar_oneweek$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    .end local v0           #dataLayout:Landroid/widget/LinearLayout;
    .end local v1           #title:Landroid/widget/TextView;
    :cond_28
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_2012Mar_oneweek;->setContentView(I)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 274
    return-void
.end method
