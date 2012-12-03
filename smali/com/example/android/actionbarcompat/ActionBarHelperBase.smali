.class public Lcom/example/android/actionbarcompat/ActionBarHelperBase;
.super Lcom/example/android/actionbarcompat/ActionBarHelper;
.source "ActionBarHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;
    }
.end annotation


# static fields
.field private static final MENU_ATTR_ID:Ljava/lang/String; = "id"

.field private static final MENU_ATTR_SHOW_AS_ACTION:Ljava/lang/String; = "showAsAction"

.field private static final MENU_RES_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field protected mActionItemIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActionItemIds:Ljava/util/Set;

    .line 55
    return-void
.end method

.method private addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 14
    .parameter "item"

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 174
    .local v7, itemId:I
    invoke-direct {p0}, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v0

    .line 175
    .local v0, actionBar:Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 176
    const/4 v1, 0x0

    .line 257
    :cond_0
    :goto_0
    return-object v1

    .line 179
    :cond_1
    const/4 v1, 0x0

    .line 181
    .local v1, actionButton:Landroid/view/View;
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 185
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x0

    .line 186
    const v10, 0x102002c

    if-ne v7, v10, :cond_4

    .line 187
    sget v10, Lcom/example/android/actionbarcompat/R$attr;->actionbarCompatItemHomeStyle:I

    .line 185
    :goto_1
    invoke-direct {v4, v11, v12, v10}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    .local v4, imageButton:Landroid/widget/ImageButton;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    .line 190
    iget-object v10, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 191
    const v10, 0x102002c

    if-ne v7, v10, :cond_5

    .line 192
    sget v10, Lcom/example/android/actionbarcompat/R$dimen;->actionbar_compat_button_home_width:I

    .line 190
    :goto_2
    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    .line 194
    const/4 v12, -0x1

    invoke-direct {v11, v10, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 189
    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    sget v10, Lcom/example/android/actionbarcompat/R$id;->menu_refresh:I

    if-ne v7, v10, :cond_2

    .line 196
    sget v10, Lcom/example/android/actionbarcompat/R$id;->actionbar_compat_item_refresh:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setId(I)V

    .line 198
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v10, Lcom/example/android/actionbarcompat/ActionBarHelperBase$1;

    invoke-direct {v10, p0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelperBase$1;-><init>(Lcom/example/android/actionbarcompat/ActionBarHelperBase;Landroid/view/MenuItem;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    move-object v1, v4

    .line 232
    .end local v4           #imageButton:Landroid/widget/ImageButton;
    :cond_3
    :goto_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    sget v11, Lcom/example/android/actionbarcompat/R$id;->menu_refresh:I

    if-ne v10, v11, :cond_0

    .line 235
    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v10, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v11, 0x0

    .line 236
    sget v12, Lcom/example/android/actionbarcompat/R$attr;->actionbarCompatProgressIndicatorStyle:I

    .line 235
    invoke-direct {v5, v10, v11, v12}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 238
    .local v5, indicator:Landroid/widget/ProgressBar;
    iget-object v10, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 239
    sget v11, Lcom/example/android/actionbarcompat/R$dimen;->actionbar_compat_button_width:I

    .line 238
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 240
    .local v3, buttonWidth:I
    iget-object v10, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 241
    sget v11, Lcom/example/android/actionbarcompat/R$dimen;->actionbar_compat_height:I

    .line 240
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 242
    .local v2, buttonHeight:I
    div-int/lit8 v8, v3, 0x2

    .line 244
    .local v8, progressIndicatorWidth:I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v6, indicatorLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sub-int v10, v3, v8

    div-int/lit8 v10, v10, 0x2

    .line 248
    sub-int v11, v2, v8

    div-int/lit8 v11, v11, 0x2

    .line 249
    sub-int v12, v3, v8

    div-int/lit8 v12, v12, 0x2

    .line 250
    const/4 v13, 0x0

    .line 246
    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    sget v10, Lcom/example/android/actionbarcompat/R$id;->actionbar_compat_item_refresh_progress:I

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setId(I)V

    .line 254
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 188
    .end local v2           #buttonHeight:I
    .end local v3           #buttonWidth:I
    .end local v5           #indicator:Landroid/widget/ProgressBar;
    .end local v6           #indicatorLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #progressIndicatorWidth:I
    :cond_4
    sget v10, Lcom/example/android/actionbarcompat/R$attr;->actionbarCompatItemStyle:I

    goto/16 :goto_1

    .line 193
    .restart local v4       #imageButton:Landroid/widget/ImageButton;
    :cond_5
    sget v10, Lcom/example/android/actionbarcompat/R$dimen;->actionbar_compat_button_width:I

    goto/16 :goto_2

    .line 209
    .end local v4           #imageButton:Landroid/widget/ImageButton;
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 211
    new-instance v9, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x0

    .line 212
    const v10, 0x102002c

    if-ne v7, v10, :cond_7

    .line 213
    sget v10, Lcom/example/android/actionbarcompat/R$attr;->actionbarCompatItemHomeStyle:I

    .line 211
    :goto_4
    invoke-direct {v9, v11, v12, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    .local v9, tvButton:Landroid/widget/TextView;
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 217
    const/4 v11, -0x2

    .line 218
    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 216
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v10, Lcom/example/android/actionbarcompat/ActionBarHelperBase$2;

    invoke-direct {v10, p0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelperBase$2;-><init>(Lcom/example/android/actionbarcompat/ActionBarHelperBase;Landroid/view/MenuItem;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    move-object v1, v9

    goto/16 :goto_3

    .line 214
    .end local v9           #tvButton:Landroid/widget/TextView;
    :cond_7
    sget v10, Lcom/example/android/actionbarcompat/R$attr;->actionbarCompatTextItemStyle:I

    goto :goto_4
.end method

.method private getActionBarCompat()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/example/android/actionbarcompat/R$id;->actionbar_compat:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private setupActionBar()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 85
    invoke-direct {p0}, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v0

    .line 86
    .local v0, actionBarCompat:Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    const/4 v5, -0x1

    .line 90
    invoke-direct {v2, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v2, springLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 95
    new-instance v3, Lcom/example/android/actionbarcompat/SimpleMenu;

    iget-object v5, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Lcom/example/android/actionbarcompat/SimpleMenu;-><init>(Landroid/content/Context;)V

    .line 96
    .local v3, tempMenu:Lcom/example/android/actionbarcompat/SimpleMenu;
    new-instance v1, Lcom/example/android/actionbarcompat/SimpleMenuItem;

    .line 97
    const v5, 0x102002c

    iget-object v6, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v7, Lcom/example/android/actionbarcompat/R$string;->app_name:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-direct {v1, v3, v5, v8, v6}, Lcom/example/android/actionbarcompat/SimpleMenuItem;-><init>(Lcom/example/android/actionbarcompat/SimpleMenu;IILjava/lang/CharSequence;)V

    .line 98
    .local v1, homeItem:Lcom/example/android/actionbarcompat/SimpleMenuItem;
    sget v5, Lcom/example/android/actionbarcompat/R$drawable;->ic_home:I

    invoke-virtual {v1, v5}, Lcom/example/android/actionbarcompat/SimpleMenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 99
    invoke-direct {p0, v1}, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)Landroid/view/View;

    .line 102
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    sget v7, Lcom/example/android/actionbarcompat/R$attr;->actionbarCompatTitleStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    .local v4, titleText:Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v5, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;
    .locals 2
    .parameter "superMenuInflater"

    .prologue
    .line 154
    new-instance v0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;

    iget-object v1, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;-><init>(Lcom/example/android/actionbarcompat/ActionBarHelperBase;Landroid/content/Context;Landroid/view/MenuInflater;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActionItemIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    const/4 v1, 0x1

    return v1

    .line 131
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 132
    .local v0, id:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 66
    iget-object v3, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x7

    .line 67
    sget v5, Lcom/example/android/actionbarcompat/R$layout;->actionbar_compat:I

    .line 66
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 68
    invoke-direct {p0}, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->setupActionBar()V

    .line 70
    new-instance v2, Lcom/example/android/actionbarcompat/SimpleMenu;

    iget-object v3, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/example/android/actionbarcompat/SimpleMenu;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, menu:Lcom/example/android/actionbarcompat/SimpleMenu;
    iget-object v3, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 72
    iget-object v3, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/example/android/actionbarcompat/SimpleMenu;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 79
    return-void

    .line 74
    :cond_0
    invoke-virtual {v2, v0}, Lcom/example/android/actionbarcompat/SimpleMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 75
    .local v1, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActionItemIds:Ljava/util/Set;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-direct {p0, v1}, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)Landroid/view/View;

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "title"
    .parameter "color"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/example/android/actionbarcompat/R$id;->actionbar_compat_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, titleView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setRefreshActionItemState(Z)V
    .locals 6
    .parameter "refreshing"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 111
    iget-object v2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/example/android/actionbarcompat/R$id;->actionbar_compat_item_refresh:I

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, refreshButton:Landroid/view/View;
    iget-object v2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    .line 113
    sget v5, Lcom/example/android/actionbarcompat/R$id;->actionbar_compat_item_refresh_progress:I

    .line 112
    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, refreshIndicator:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 116
    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_0
    if-eqz v1, :cond_1

    .line 119
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 116
    goto :goto_0

    :cond_3
    move v4, v3

    .line 119
    goto :goto_1
.end method
