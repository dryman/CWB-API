.class public Lorg/cwb/cwb_graphic;
.super Landroid/app/Activity;
.source "cwb_graphic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_graphic$graphicAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setDataButtonAction()V
    .registers 15

    .prologue
    .line 37
    const v13, 0x7f080143

    invoke-virtual {p0, v13}, Lorg/cwb/cwb_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 38
    .local v3, newfishLayout:Landroid/widget/LinearLayout;
    new-instance v13, Lorg/cwb/cwb_graphic$1;

    invoke-direct {v13, p0}, Lorg/cwb/cwb_graphic$1;-><init>(Lorg/cwb/cwb_graphic;)V

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const/4 v13, 0x3

    new-array v12, v13, [I

    fill-array-data v12, :array_a8

    .line 81
    .local v12, satteliteName:[I
    const/4 v13, 0x3

    new-array v10, v13, [I

    fill-array-data v10, :array_b2

    .line 83
    .local v10, satteliteImage:[I
    const v13, 0x7f080146

    invoke-virtual {p0, v13}, Lorg/cwb/cwb_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 84
    .local v11, satteliteList:Landroid/widget/ListView;
    new-instance v13, Lorg/cwb/cwb_graphic$graphicAdapter;

    invoke-direct {v13, p0, p0, v12, v10}, Lorg/cwb/cwb_graphic$graphicAdapter;-><init>(Lorg/cwb/cwb_graphic;Landroid/content/Context;[I[I)V

    invoke-virtual {v11, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    new-instance v13, Lorg/cwb/cwb_graphic$2;

    invoke-direct {v13, p0}, Lorg/cwb/cwb_graphic$2;-><init>(Lorg/cwb/cwb_graphic;)V

    invoke-virtual {v11, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    const/4 v13, 0x3

    new-array v8, v13, [I

    fill-array-data v8, :array_bc

    .line 112
    .local v8, raindetectionName:[I
    const/4 v13, 0x3

    new-array v7, v13, [I

    fill-array-data v7, :array_c6

    .line 114
    .local v7, raindetectionImage:[I
    const v13, 0x7f080148

    invoke-virtual {p0, v13}, Lorg/cwb/cwb_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 115
    .local v9, raindetectionlist:Landroid/widget/ListView;
    new-instance v13, Lorg/cwb/cwb_graphic$graphicAdapter;

    invoke-direct {v13, p0, p0, v8, v7}, Lorg/cwb/cwb_graphic$graphicAdapter;-><init>(Lorg/cwb/cwb_graphic;Landroid/content/Context;[I[I)V

    invoke-virtual {v9, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    new-instance v13, Lorg/cwb/cwb_graphic$3;

    invoke-direct {v13, p0}, Lorg/cwb/cwb_graphic$3;-><init>(Lorg/cwb/cwb_graphic;)V

    invoke-virtual {v9, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    const/4 v13, 0x3

    new-array v5, v13, [I

    fill-array-data v5, :array_d0

    .line 143
    .local v5, radarName:[I
    const/4 v13, 0x3

    new-array v4, v13, [I

    fill-array-data v4, :array_da

    .line 145
    .local v4, radarImage:[I
    const v13, 0x7f08014a

    invoke-virtual {p0, v13}, Lorg/cwb/cwb_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 146
    .local v6, radarlist:Landroid/widget/ListView;
    new-instance v13, Lorg/cwb/cwb_graphic$graphicAdapter;

    invoke-direct {v13, p0, p0, v5, v4}, Lorg/cwb/cwb_graphic$graphicAdapter;-><init>(Lorg/cwb/cwb_graphic;Landroid/content/Context;[I[I)V

    invoke-virtual {v6, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    new-instance v13, Lorg/cwb/cwb_graphic$4;

    invoke-direct {v13, p0}, Lorg/cwb/cwb_graphic$4;-><init>(Lorg/cwb/cwb_graphic;)V

    invoke-virtual {v6, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    const/16 v13, 0xa

    new-array v1, v13, [I

    fill-array-data v1, :array_e4

    .line 177
    .local v1, analysisName:[I
    const/16 v13, 0xa

    new-array v0, v13, [I

    fill-array-data v0, :array_fc

    .line 182
    .local v0, analysisImage:[I
    const v13, 0x7f08014c

    invoke-virtual {p0, v13}, Lorg/cwb/cwb_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 183
    .local v2, analysislist:Landroid/widget/ListView;
    new-instance v13, Lorg/cwb/cwb_graphic$graphicAdapter;

    invoke-direct {v13, p0, p0, v1, v0}, Lorg/cwb/cwb_graphic$graphicAdapter;-><init>(Lorg/cwb/cwb_graphic;Landroid/content/Context;[I[I)V

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    new-instance v13, Lorg/cwb/cwb_graphic$5;

    invoke-direct {v13, p0}, Lorg/cwb/cwb_graphic$5;-><init>(Lorg/cwb/cwb_graphic;)V

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    return-void

    .line 80
    :array_a8
    .array-data 0x4
        0x1ct 0x0t 0x9t 0x7ft
        0x1dt 0x0t 0x9t 0x7ft
        0x1et 0x0t 0x9t 0x7ft
    .end array-data

    .line 81
    :array_b2
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
    .end array-data

    .line 111
    :array_bc
    .array-data 0x4
        0x20t 0x0t 0x9t 0x7ft
        0x21t 0x0t 0x9t 0x7ft
        0x22t 0x0t 0x9t 0x7ft
    .end array-data

    .line 112
    :array_c6
    .array-data 0x4
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data

    .line 142
    :array_d0
    .array-data 0x4
        0x24t 0x0t 0x9t 0x7ft
        0x25t 0x0t 0x9t 0x7ft
        0x26t 0x0t 0x9t 0x7ft
    .end array-data

    .line 143
    :array_da
    .array-data 0x4
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
    .end array-data

    .line 173
    :array_e4
    .array-data 0x4
        0x28t 0x0t 0x9t 0x7ft
        0x29t 0x0t 0x9t 0x7ft
        0x2at 0x0t 0x9t 0x7ft
        0x2bt 0x0t 0x9t 0x7ft
        0x2ct 0x0t 0x9t 0x7ft
        0x2dt 0x0t 0x9t 0x7ft
        0x2et 0x0t 0x9t 0x7ft
        0x2ft 0x0t 0x9t 0x7ft
        0x30t 0x0t 0x9t 0x7ft
        0x31t 0x0t 0x9t 0x7ft
    .end array-data

    .line 177
    :array_fc
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_graphic;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lorg/cwb/cwb_graphic;->setDataButtonAction()V

    .line 26
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 32
    return-void
.end method
