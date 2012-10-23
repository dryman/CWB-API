.class public Lorg/cwb/cwb_more;
.super Landroid/app/Activity;
.source "cwb_more.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_more$MoreAdapter;,
        Lorg/cwb/cwb_more$graphicAdapter;
    }
.end annotation


# static fields
.field private static temp_keep:I

.field private static temp_setting:I

.field private static wind_keep:I

.field private static wind_setting:I


# instance fields
.field private LayoutListener:Landroid/view/View$OnClickListener;

.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private layout:Landroid/widget/LinearLayout;

.field private list:Landroid/widget/ListView;

.field private locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pref:Landroid/content/SharedPreferences;

.field private tempDisplay:Landroid/widget/TextView;

.field private windDisplay:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput v0, Lorg/cwb/cwb_more;->temp_setting:I

    .line 33
    sput v0, Lorg/cwb/cwb_more;->temp_keep:I

    .line 34
    sput v0, Lorg/cwb/cwb_more;->wind_setting:I

    .line 35
    sput v0, Lorg/cwb/cwb_more;->wind_keep:I

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_more;->TAG:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    .line 31
    iput-object v1, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    .line 36
    iput-object v1, p0, Lorg/cwb/cwb_more;->tempDisplay:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lorg/cwb/cwb_more;->windDisplay:Landroid/widget/TextView;

    .line 38
    iput-object v1, p0, Lorg/cwb/cwb_more;->list:Landroid/widget/ListView;

    .line 39
    iput-object v1, p0, Lorg/cwb/cwb_more;->context:Landroid/content/Context;

    .line 40
    iput-object v1, p0, Lorg/cwb/cwb_more;->layout:Landroid/widget/LinearLayout;

    .line 353
    new-instance v0, Lorg/cwb/cwb_more$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_more$1;-><init>(Lorg/cwb/cwb_more;)V

    iput-object v0, p0, Lorg/cwb/cwb_more;->LayoutListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method private DeleteLocation(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "del"

    .prologue
    const/4 v5, 0x0

    .line 414
    iget-object v2, p0, Lorg/cwb/cwb_more;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "del="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v2, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    if-eqz v2, :cond_83

    .line 416
    iget-object v2, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 417
    const-string v0, ""

    .line 418
    .local v0, loc:Ljava/lang/String;
    iget-object v2, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_58

    .line 422
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_3e
    iget-object v2, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "favor_station_list"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    iget-object v2, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 426
    .end local v0           #loc:Ljava/lang/String;
    :goto_57
    return-object v2

    .line 418
    .restart local v0       #loc:Ljava/lang/String;
    :cond_58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    .local v1, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 426
    .end local v0           #loc:Ljava/lang/String;
    .end local v1           #str:Ljava/lang/String;
    :cond_83
    const/4 v2, 0x0

    goto :goto_57
.end method

.method private GetLocations()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    .line 405
    iget-object v2, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    const-string v3, "favor_station_list"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, loc:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    .line 411
    :goto_1f
    return-object v2

    .line 407
    :cond_20
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_27
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_30

    .line 411
    iget-object v2, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    goto :goto_1f

    .line 409
    :cond_30
    iget-object v3, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27
.end method

.method private InitialFavorite()V
    .registers 4

    .prologue
    .line 309
    new-instance v0, Lorg/cwb/cwb_more$MoreAdapter;

    iget-object v1, p0, Lorg/cwb/cwb_more;->context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/cwb/cwb_more;->GetLocations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/cwb/cwb_more$MoreAdapter;-><init>(Lorg/cwb/cwb_more;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 310
    .local v0, theListAdapter:Lorg/cwb/cwb_more$MoreAdapter;
    iget-object v1, p0, Lorg/cwb/cwb_more;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-object v1, p0, Lorg/cwb/cwb_more;->list:Landroid/widget/ListView;

    new-instance v2, Lorg/cwb/cwb_more$8;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_more$8;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 331
    return-void
.end method

.method private InitialTemp()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 334
    iget-object v0, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    const-string v1, "temp_unit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/cwb/cwb_more;->temp_setting:I

    .line 335
    sget v0, Lorg/cwb/cwb_more;->temp_setting:I

    if-ne v0, v2, :cond_21

    .line 336
    iget-object v0, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "temp_unit"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    sput v3, Lorg/cwb/cwb_more;->temp_setting:I

    .line 339
    :cond_21
    sget v0, Lorg/cwb/cwb_more;->temp_setting:I

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/cwb/cwb_more;->tempDisplay:Landroid/widget/TextView;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :goto_2d
    return-void

    .line 340
    :cond_2e
    iget-object v0, p0, Lorg/cwb/cwb_more;->tempDisplay:Landroid/widget/TextView;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2d
.end method

.method private InitialWind()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 344
    iget-object v0, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    const-string v1, "wind_value"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/cwb/cwb_more;->wind_setting:I

    .line 345
    sget v0, Lorg/cwb/cwb_more;->wind_setting:I

    if-ne v0, v2, :cond_21

    .line 346
    iget-object v0, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wind_value"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    sput v3, Lorg/cwb/cwb_more;->wind_setting:I

    .line 349
    :cond_21
    sget v0, Lorg/cwb/cwb_more;->wind_setting:I

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/cwb/cwb_more;->windDisplay:Landroid/widget/TextView;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 351
    :goto_2d
    return-void

    .line 350
    :cond_2e
    iget-object v0, p0, Lorg/cwb/cwb_more;->windDisplay:Landroid/widget/TextView;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2d
.end method

.method private LayoutHandler(I)V
    .registers 7
    .parameter "id"

    .prologue
    const v4, 0x7f090065

    .line 360
    sparse-switch p1, :sswitch_data_70

    .line 401
    :goto_6
    return-void

    .line 363
    :sswitch_7
    sget v0, Lorg/cwb/cwb_more;->temp_setting:I

    sput v0, Lorg/cwb/cwb_more;->temp_keep:I

    .line 364
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_more;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 365
    const/high16 v1, 0x7f07

    sget v2, Lorg/cwb/cwb_more;->temp_setting:I

    new-instance v3, Lorg/cwb/cwb_more$9;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_more$9;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v4}, Lorg/cwb/cwb_more;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/cwb/cwb_more$10;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_more$10;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6

    .line 382
    :sswitch_3b
    sget v0, Lorg/cwb/cwb_more;->wind_setting:I

    sput v0, Lorg/cwb/cwb_more;->wind_keep:I

    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090035

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_more;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 384
    const v1, 0x7f070001

    sget v2, Lorg/cwb/cwb_more;->wind_setting:I

    new-instance v3, Lorg/cwb/cwb_more$11;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_more$11;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {p0, v4}, Lorg/cwb/cwb_more;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/cwb/cwb_more$12;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_more$12;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6

    .line 360
    :sswitch_data_70
    .sparse-switch
        0x7f080194 -> :sswitch_7
        0x7f080198 -> :sswitch_3b
    .end sparse-switch
.end method

.method static synthetic access$0(Lorg/cwb/cwb_more;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lorg/cwb/cwb_more;->LayoutHandler(I)V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_more;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lorg/cwb/cwb_more;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$10(Lorg/cwb/cwb_more;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$11()I
    .registers 1

    .prologue
    .line 32
    sget v0, Lorg/cwb/cwb_more;->temp_setting:I

    return v0
.end method

.method static synthetic access$12(Lorg/cwb/cwb_more;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cwb/cwb_more;->tempDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(I)V
    .registers 1
    .parameter

    .prologue
    .line 35
    sput p0, Lorg/cwb/cwb_more;->wind_keep:I

    return-void
.end method

.method static synthetic access$14()I
    .registers 1

    .prologue
    .line 35
    sget v0, Lorg/cwb/cwb_more;->wind_keep:I

    return v0
.end method

.method static synthetic access$15(I)V
    .registers 1
    .parameter

    .prologue
    .line 34
    sput p0, Lorg/cwb/cwb_more;->wind_setting:I

    return-void
.end method

.method static synthetic access$16()I
    .registers 1

    .prologue
    .line 34
    sget v0, Lorg/cwb/cwb_more;->wind_setting:I

    return v0
.end method

.method static synthetic access$17(Lorg/cwb/cwb_more;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lorg/cwb/cwb_more;->windDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_more;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lorg/cwb/cwb_more;->DeleteLocation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_more;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lorg/cwb/cwb_more;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lorg/cwb/cwb_more;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lorg/cwb/cwb_more;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cwb/cwb_more;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lorg/cwb/cwb_more;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cwb/cwb_more;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(I)V
    .registers 1
    .parameter

    .prologue
    .line 33
    sput p0, Lorg/cwb/cwb_more;->temp_keep:I

    return-void
.end method

.method static synthetic access$8()I
    .registers 1

    .prologue
    .line 33
    sget v0, Lorg/cwb/cwb_more;->temp_keep:I

    return v0
.end method

.method static synthetic access$9(I)V
    .registers 1
    .parameter

    .prologue
    .line 32
    sput p0, Lorg/cwb/cwb_more;->temp_setting:I

    return-void
.end method

.method public static getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "temp"

    .prologue
    const/4 v4, 0x0

    .line 444
    const-string v3, "cwb_preference"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 445
    .local v1, pre:Landroid/content/SharedPreferences;
    const-string v3, "temp_unit"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 446
    .local v2, unit:I
    if-nez v2, :cond_10

    .line 452
    .end local p1
    :goto_f
    return-object p1

    .line 448
    .restart local p1
    :cond_10
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 449
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.0"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, df:Ljava/text/DecimalFormat;
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4022

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4014

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4040

    add-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 452
    .end local v0           #df:Ljava/text/DecimalFormat;
    :cond_35
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f
.end method

.method public static isC(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 437
    const-string v3, "cwb_preference"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 438
    .local v0, pre:Landroid/content/SharedPreferences;
    const-string v3, "temp_unit"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 439
    .local v1, unit:I
    if-nez v1, :cond_10

    const/4 v2, 0x1

    .line 440
    :cond_10
    return v2
.end method

.method public static isWindScale(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 430
    const-string v3, "cwb_preference"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 431
    .local v0, pre:Landroid/content/SharedPreferences;
    const-string v3, "wind_value"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 432
    .local v1, unit:I
    if-nez v1, :cond_10

    const/4 v2, 0x1

    .line 433
    :cond_10
    return v2
.end method

.method private setDataButtonAction()V
    .registers 16

    .prologue
    .line 66
    const v14, 0x7f080192

    invoke-virtual {p0, v14}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 67
    .local v3, iconDesc:Landroid/widget/RelativeLayout;
    new-instance v14, Lorg/cwb/cwb_more$2;

    invoke-direct {v14, p0}, Lorg/cwb/cwb_more$2;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v3, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v14, 0x7f080143

    invoke-virtual {p0, v14}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 83
    .local v4, newfishLayout:Landroid/widget/LinearLayout;
    new-instance v14, Lorg/cwb/cwb_more$3;

    invoke-direct {v14, p0}, Lorg/cwb/cwb_more$3;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const/4 v14, 0x3

    new-array v13, v14, [I

    fill-array-data v13, :array_ba

    .line 98
    .local v13, satteliteName:[I
    const/4 v14, 0x3

    new-array v11, v14, [I

    fill-array-data v11, :array_c4

    .line 100
    .local v11, satteliteImage:[I
    const v14, 0x7f080146

    invoke-virtual {p0, v14}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 101
    .local v12, satteliteList:Landroid/widget/ListView;
    new-instance v14, Lorg/cwb/cwb_more$graphicAdapter;

    invoke-direct {v14, p0, p0, v13, v11}, Lorg/cwb/cwb_more$graphicAdapter;-><init>(Lorg/cwb/cwb_more;Landroid/content/Context;[I[I)V

    invoke-virtual {v12, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    new-instance v14, Lorg/cwb/cwb_more$4;

    invoke-direct {v14, p0}, Lorg/cwb/cwb_more$4;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v12, v14}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    const/4 v14, 0x3

    new-array v9, v14, [I

    fill-array-data v9, :array_ce

    .line 129
    .local v9, raindetectionName:[I
    const/4 v14, 0x3

    new-array v8, v14, [I

    fill-array-data v8, :array_d8

    .line 131
    .local v8, raindetectionImage:[I
    const v14, 0x7f080148

    invoke-virtual {p0, v14}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 132
    .local v10, raindetectionlist:Landroid/widget/ListView;
    new-instance v14, Lorg/cwb/cwb_more$graphicAdapter;

    invoke-direct {v14, p0, p0, v9, v8}, Lorg/cwb/cwb_more$graphicAdapter;-><init>(Lorg/cwb/cwb_more;Landroid/content/Context;[I[I)V

    invoke-virtual {v10, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    new-instance v14, Lorg/cwb/cwb_more$5;

    invoke-direct {v14, p0}, Lorg/cwb/cwb_more$5;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v10, v14}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    const/4 v14, 0x3

    new-array v6, v14, [I

    fill-array-data v6, :array_e2

    .line 160
    .local v6, radarName:[I
    const/4 v14, 0x3

    new-array v5, v14, [I

    fill-array-data v5, :array_ec

    .line 162
    .local v5, radarImage:[I
    const v14, 0x7f08014a

    invoke-virtual {p0, v14}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 163
    .local v7, radarlist:Landroid/widget/ListView;
    new-instance v14, Lorg/cwb/cwb_more$graphicAdapter;

    invoke-direct {v14, p0, p0, v6, v5}, Lorg/cwb/cwb_more$graphicAdapter;-><init>(Lorg/cwb/cwb_more;Landroid/content/Context;[I[I)V

    invoke-virtual {v7, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    new-instance v14, Lorg/cwb/cwb_more$6;

    invoke-direct {v14, p0}, Lorg/cwb/cwb_more$6;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v7, v14}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    const/16 v14, 0xa

    new-array v1, v14, [I

    fill-array-data v1, :array_f6

    .line 194
    .local v1, analysisName:[I
    const/16 v14, 0xa

    new-array v0, v14, [I

    fill-array-data v0, :array_10e

    .line 199
    .local v0, analysisImage:[I
    const v14, 0x7f08014c

    invoke-virtual {p0, v14}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 200
    .local v2, analysislist:Landroid/widget/ListView;
    new-instance v14, Lorg/cwb/cwb_more$graphicAdapter;

    invoke-direct {v14, p0, p0, v1, v0}, Lorg/cwb/cwb_more$graphicAdapter;-><init>(Lorg/cwb/cwb_more;Landroid/content/Context;[I[I)V

    invoke-virtual {v2, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    new-instance v14, Lorg/cwb/cwb_more$7;

    invoke-direct {v14, p0}, Lorg/cwb/cwb_more$7;-><init>(Lorg/cwb/cwb_more;)V

    invoke-virtual {v2, v14}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    return-void

    .line 97
    nop

    :array_ba
    .array-data 0x4
        0x1ct 0x0t 0x9t 0x7ft
        0x1dt 0x0t 0x9t 0x7ft
        0x1et 0x0t 0x9t 0x7ft
    .end array-data

    .line 98
    :array_c4
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
    .end array-data

    .line 128
    :array_ce
    .array-data 0x4
        0x20t 0x0t 0x9t 0x7ft
        0x21t 0x0t 0x9t 0x7ft
        0x22t 0x0t 0x9t 0x7ft
    .end array-data

    .line 129
    :array_d8
    .array-data 0x4
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data

    .line 159
    :array_e2
    .array-data 0x4
        0x24t 0x0t 0x9t 0x7ft
        0x25t 0x0t 0x9t 0x7ft
        0x26t 0x0t 0x9t 0x7ft
    .end array-data

    .line 160
    :array_ec
    .array-data 0x4
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
    .end array-data

    .line 190
    :array_f6
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

    .line 194
    :array_10e
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
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iput-object p0, p0, Lorg/cwb/cwb_more;->context:Landroid/content/Context;

    .line 46
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_more;->setContentView(I)V

    .line 47
    const v2, 0x7f080194

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 48
    .local v0, tempLayout:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lorg/cwb/cwb_more;->LayoutListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v2, 0x7f080198

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 50
    .local v1, windLayout:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lorg/cwb/cwb_more;->LayoutListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v2, 0x7f080196

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/cwb/cwb_more;->tempDisplay:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f08019a

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/cwb/cwb_more;->windDisplay:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f080190

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lorg/cwb/cwb_more;->list:Landroid/widget/ListView;

    .line 54
    iget-object v2, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    if-nez v2, :cond_55

    const-string v2, "cwb_preference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/cwb/cwb_more;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;

    .line 55
    :cond_55
    const v2, 0x7f08018f

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_more;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lorg/cwb/cwb_more;->layout:Landroid/widget/LinearLayout;

    .line 56
    invoke-direct {p0}, Lorg/cwb/cwb_more;->InitialTemp()V

    .line 57
    invoke-direct {p0}, Lorg/cwb/cwb_more;->InitialWind()V

    .line 58
    invoke-direct {p0}, Lorg/cwb/cwb_more;->InitialFavorite()V

    .line 60
    invoke-direct {p0}, Lorg/cwb/cwb_more;->setDataButtonAction()V

    .line 61
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 304
    new-instance v0, Lorg/cwb/cwb_more$MoreAdapter;

    iget-object v1, p0, Lorg/cwb/cwb_more;->context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/cwb/cwb_more;->GetLocations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/cwb/cwb_more$MoreAdapter;-><init>(Lorg/cwb/cwb_more;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 305
    .local v0, theListAdapter:Lorg/cwb/cwb_more$MoreAdapter;
    iget-object v1, p0, Lorg/cwb/cwb_more;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    return-void
.end method
