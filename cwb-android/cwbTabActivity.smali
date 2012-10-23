.class public Lorg/cwb/cwbTabActivity;
.super Landroid/app/TabActivity;
.source "cwbTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwbTabActivity$changeActivityReceiver;
    }
.end annotation


# static fields
.field private static cwbWarnLastIndex:I


# instance fields
.field private bHasWarn:Z

.field private builder:Landroid/app/AlertDialog$Builder;

.field private cwbReceiver:Lorg/cwb/cwbTabActivity$changeActivityReceiver;

.field private handler:Lorg/cwb/cwb_warntask;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lorg/cwb/cwbTabActivity;->cwbWarnLastIndex:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cwb/cwbTabActivity;->bHasWarn:Z

    .line 26
    new-instance v0, Lorg/cwb/cwb_warntask;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_warntask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cwb/cwbTabActivity;->handler:Lorg/cwb/cwb_warntask;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwbTabActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, Lorg/cwb/cwbTabActivity;->bHasWarn:Z

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwbTabActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lorg/cwb/cwbTabActivity;->bHasWarn:Z

    return v0
.end method

.method static synthetic access$2(Lorg/cwb/cwbTabActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 296
    invoke-direct {p0}, Lorg/cwb/cwbTabActivity;->resetTabIndicatorIcon()V

    return-void
.end method

.method private resetTabIndicatorIcon()V
    .registers 10

    .prologue
    const v8, 0x1020006

    .line 297
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    .line 300
    .local v5, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 301
    .local v0, tab1:Landroid/widget/ImageView;
    const v6, 0x7f0200b8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 305
    .local v1, tab2:Landroid/widget/ImageView;
    const v6, 0x7f0200ba

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 309
    .local v2, tab3:Landroid/widget/ImageView;
    const v6, 0x7f0200b6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 313
    .local v3, tab4:Landroid/widget/ImageView;
    const v6, 0x7f0200bc

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 317
    .local v4, tab5:Landroid/widget/ImageView;
    const v6, 0x7f0200b2

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    return-void
.end method

.method private setupBroadCast()V
    .registers 3

    .prologue
    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "cwb.SET_WARNICON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v1, "cwb.REMOVE_SELF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    new-instance v1, Lorg/cwb/cwbTabActivity$changeActivityReceiver;

    invoke-direct {v1, p0}, Lorg/cwb/cwbTabActivity$changeActivityReceiver;-><init>(Lorg/cwb/cwbTabActivity;)V

    iput-object v1, p0, Lorg/cwb/cwbTabActivity;->cwbReceiver:Lorg/cwb/cwbTabActivity$changeActivityReceiver;

    .line 340
    iget-object v1, p0, Lorg/cwb/cwbTabActivity;->cwbReceiver:Lorg/cwb/cwbTabActivity$changeActivityReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/cwb/cwbTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    return-void
.end method

.method private setupDialog()V
    .registers 4

    .prologue
    .line 322
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cwb/cwbTabActivity;->builder:Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v0, p0, Lorg/cwb/cwbTabActivity;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 324
    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 325
    const v1, 0x7f09003d

    new-instance v2, Lorg/cwb/cwbTabActivity$2;

    invoke-direct {v2, p0}, Lorg/cwb/cwbTabActivity$2;-><init>(Lorg/cwb/cwbTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    return-void
.end method

.method private setupViews()V
    .registers 8

    .prologue
    .line 214
    sput-object p0, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 215
    const-string v3, "location"

    invoke-virtual {p0, v3}, Lorg/cwb/cwbTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    sput-object v3, Lorg/cwb/cwb_constants;->mLocationManager:Landroid/location/LocationManager;

    .line 216
    const v3, 0x7f08002a

    invoke-virtual {p0, v3}, Lorg/cwb/cwbTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 217
    .local v0, helpIcon:Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v3, 0x7f080029

    invoke-virtual {p0, v3}, Lorg/cwb/cwbTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 219
    .local v2, warnIcon:Landroid/widget/ImageView;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 228
    .local v1, tabHost:Landroid/widget/TabHost;
    const-string v3, "cwbforcast"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 229
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 230
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 229
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 231
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/cwb/cwb_forecast_2012Mar_group;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 228
    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 234
    const-string v3, "cwbnow"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 235
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 236
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 235
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 237
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/cwb/cwb_main_group;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 234
    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 241
    const-string v3, "cwblife"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 242
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 243
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 242
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 244
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/cwb/cwb_fish_group;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 241
    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 247
    const-string v3, "cwbother"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 248
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 249
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 248
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 250
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/cwb/cwb_graphic_group;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 247
    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 253
    const-string v3, "cwbmore"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 254
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 255
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 254
    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 256
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/cwb/cwb_more_group;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 253
    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 259
    new-instance v3, Lorg/cwb/cwbTabActivity$1;

    invoke-direct {v3, p0, v1}, Lorg/cwb/cwbTabActivity$1;-><init>(Lorg/cwb/cwbTabActivity;Landroid/widget/TabHost;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 289
    invoke-direct {p0}, Lorg/cwb/cwbTabActivity;->setupDialog()V

    .line 290
    invoke-direct {p0}, Lorg/cwb/cwbTabActivity;->setupBroadCast()V

    .line 292
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_110

    .line 413
    :goto_c
    return-void

    .line 349
    :pswitch_d
    iget-object v2, p0, Lorg/cwb/cwbTabActivity;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_c

    .line 353
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_warningActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0}, Lorg/cwb/cwbTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 359
    .local v1, tabHost:Landroid/widget/TabHost;
    sget v2, Lorg/cwb/cwbTabActivity;->cwbWarnLastIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4b

    .line 360
    sget v2, Lorg/cwb/cwbTabActivity;->cwbWarnLastIndex:I

    packed-switch v2, :pswitch_data_118

    .line 379
    :cond_4b
    :goto_4b
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    packed-switch v2, :pswitch_data_126

    .line 407
    :goto_52
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    sput v2, Lorg/cwb/cwbTabActivity;->cwbWarnLastIndex:I

    .line 408
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v0}, Lorg/cwb/cwbTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 363
    :pswitch_61
    sget-object v3, Lorg/cwb/cwb_main_group;->Group:Lorg/cwb/cwb_main_group;

    sget-object v2, Lorg/cwb/cwb_main_group;->Group:Lorg/cwb/cwb_main_group;

    invoke-virtual {v2}, Lorg/cwb/cwb_main_group;->getViewHistory()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lorg/cwb/cwb_main_group;->setContentView(Landroid/view/View;)V

    goto :goto_4b

    .line 366
    :pswitch_73
    sget-object v3, Lorg/cwb/cwb_forecast_2012Mar_group;->Group:Lorg/cwb/cwb_forecast_2012Mar_group;

    sget-object v2, Lorg/cwb/cwb_forecast_2012Mar_group;->Group:Lorg/cwb/cwb_forecast_2012Mar_group;

    invoke-virtual {v2}, Lorg/cwb/cwb_forecast_2012Mar_group;->getViewHistory()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lorg/cwb/cwb_forecast_2012Mar_group;->setContentView(Landroid/view/View;)V

    goto :goto_4b

    .line 369
    :pswitch_85
    sget-object v3, Lorg/cwb/cwb_fish_group;->Group:Lorg/cwb/cwb_fish_group;

    sget-object v2, Lorg/cwb/cwb_fish_group;->Group:Lorg/cwb/cwb_fish_group;

    invoke-virtual {v2}, Lorg/cwb/cwb_fish_group;->getViewHistory()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lorg/cwb/cwb_fish_group;->setContentView(Landroid/view/View;)V

    goto :goto_4b

    .line 372
    :pswitch_97
    sget-object v3, Lorg/cwb/cwb_graphic_group;->Group:Lorg/cwb/cwb_graphic_group;

    sget-object v2, Lorg/cwb/cwb_graphic_group;->Group:Lorg/cwb/cwb_graphic_group;

    invoke-virtual {v2}, Lorg/cwb/cwb_graphic_group;->getViewHistory()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lorg/cwb/cwb_graphic_group;->setContentView(Landroid/view/View;)V

    goto :goto_4b

    .line 375
    :pswitch_a9
    sget-object v3, Lorg/cwb/cwb_more_group;->Group:Lorg/cwb/cwb_more_group;

    sget-object v2, Lorg/cwb/cwb_more_group;->Group:Lorg/cwb/cwb_more_group;

    invoke-virtual {v2}, Lorg/cwb/cwb_more_group;->getViewHistory()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lorg/cwb/cwb_more_group;->setContentView(Landroid/view/View;)V

    goto :goto_4b

    .line 382
    :pswitch_bb
    const-string v2, "group_index"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v2, "current_tab"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_52

    .line 387
    :pswitch_cb
    const-string v2, "group_index"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v2, "current_tab"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_52

    .line 392
    :pswitch_dc
    const-string v2, "group_index"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v2, "current_tab"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_52

    .line 397
    :pswitch_ed
    const-string v2, "group_index"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v2, "current_tab"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_52

    .line 402
    :pswitch_fe
    const-string v2, "group_index"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v2, "current_tab"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_52

    .line 347
    nop

    :pswitch_data_110
    .packed-switch 0x7f080029
        :pswitch_13
        :pswitch_d
    .end packed-switch

    .line 360
    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_73
        :pswitch_61
        :pswitch_85
        :pswitch_97
        :pswitch_a9
    .end packed-switch

    .line 379
    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_bb
        :pswitch_dc
        :pswitch_ed
        :pswitch_fe
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0, v2}, Lorg/cwb/cwbTabActivity;->requestWindowFeature(I)Z

    .line 34
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lorg/cwb/cwbTabActivity;->setContentView(I)V

    .line 37
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lorg/cwb/cwbTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "CWB TAG"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/cwb/cwbTabActivity;->wl:Landroid/os/PowerManager$WakeLock;

    .line 39
    iget-object v1, p0, Lorg/cwb/cwbTabActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 42
    invoke-direct {p0}, Lorg/cwb/cwbTabActivity;->setupViews()V

    .line 43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 418
    iget-object v1, p0, Lorg/cwb/cwbTabActivity;->handler:Lorg/cwb/cwb_warntask;

    invoke-virtual {v1}, Lorg/cwb/cwb_warntask;->removeSelf()V

    .line 419
    iget-object v1, p0, Lorg/cwb/cwbTabActivity;->cwbReceiver:Lorg/cwb/cwbTabActivity$changeActivityReceiver;

    invoke-virtual {p0, v1}, Lorg/cwb/cwbTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v0}, Lorg/cwb/cwbTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 428
    iget-object v1, p0, Lorg/cwb/cwbTabActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 430
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 431
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 74
    :goto_7
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 69
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cwb.PERIOD_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lorg/cwb/cwbTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7

    .line 66
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 51
    iget-object v0, p0, Lorg/cwb/cwbTabActivity;->handler:Lorg/cwb/cwb_warntask;

    invoke-virtual {v0}, Lorg/cwb/cwb_warntask;->setupWarnNotifyTaskNow()V

    .line 52
    return-void
.end method
