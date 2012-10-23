.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_addFavorite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->showAddSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 224
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    .line 225
    const-string v8, "favoriteList"

    invoke-virtual {v7, v8, v10}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 226
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 227
    .local v5, se:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;
    invoke-static {v7}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$13(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d1

    .line 228
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedCityName:Ljava/lang/String;
    invoke-static {v9}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$14(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedTownName:Ljava/lang/String;
    invoke-static {v9}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$15(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedID:Ljava/lang/String;
    invoke-static {v9}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$16(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #setter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$17(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    .line 263
    :cond_4e
    :goto_4e
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;
    invoke-static {v8}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$13(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    #setter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$18(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;[Ljava/lang/String;)V

    .line 264
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;
    invoke-static {v7}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lt v7, v11, :cond_9a

    .line 265
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoListToken:[Ljava/lang/String;
    invoke-static {v7}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$0(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, data:[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v2, v7

    sput-object v7, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v2, v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    .line 268
    sput-boolean v11, Lorg/cwb/cwb_constants;->bNeedChangeDefaultWeatherBackground:Z

    .line 270
    .end local v2           #data:[Ljava/lang/String;
    :cond_9a
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->adapter:Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;
    invoke-static {v7}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$19(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 271
    const-string v7, "favoCity"

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;
    invoke-static {v8}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$13(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 274
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;
    invoke-static {v7}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$13(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_175

    .line 275
    sput-boolean v10, Lorg/cwb/cwb_constants;->canFlip:Z

    .line 279
    :goto_bb
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->contentView:Landroid/view/View;
    invoke-static {v7}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$20(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->contentView:Landroid/view/View;
    invoke-static {v8}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$20(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 280
    :goto_d0
    return-void

    .line 231
    :cond_d1
    const/4 v0, 0x0

    .line 232
    .local v0, bContains:Z
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;
    invoke-static {v7}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$13(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, favoListToken:[Ljava/lang/String;
    array-length v7, v3

    const/16 v8, 0xa

    if-lt v7, v8, :cond_106

    .line 236
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const-string v7, "\u6700\u591a\u53ea\u80fd\u670910\u500b\u5730\u9ede"

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 239
    const-string v8, "OK"

    new-instance v9, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6$1;

    invoke-direct {v9, p0}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 244
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_d0

    .line 248
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :cond_106
    const/4 v4, 0x0

    .local v4, i:I
    :goto_107
    array-length v7, v3

    if-lt v4, v7, :cond_154

    .line 256
    :goto_10a
    if-nez v0, :cond_4e

    .line 257
    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;
    invoke-static {v7}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$13(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedCityName:Ljava/lang/String;
    invoke-static {v9}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$14(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedTownName:Ljava/lang/String;
    invoke-static {v9}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$15(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedID:Ljava/lang/String;
    invoke-static {v9}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$16(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #setter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->favoList:Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$17(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 249
    :cond_154
    aget-object v7, v3, v4

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedCityName:Ljava/lang/String;
    invoke-static {v8}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$14(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_172

    .line 250
    aget-object v7, v3, v4

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$6;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->selectedTownName:Ljava/lang/String;
    invoke-static {v8}, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;->access$15(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_172

    .line 251
    const/4 v0, 0x1

    .line 252
    goto :goto_10a

    .line 248
    :cond_172
    add-int/lit8 v4, v4, 0x1

    goto :goto_107

    .line 277
    .end local v0           #bContains:Z
    .end local v3           #favoListToken:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_175
    sput-boolean v11, Lorg/cwb/cwb_constants;->canFlip:Z

    goto/16 :goto_bb
.end method
