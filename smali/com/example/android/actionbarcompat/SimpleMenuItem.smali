.class public Lcom/example/android/actionbarcompat/SimpleMenuItem;
.super Ljava/lang/Object;
.source "SimpleMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private mEnabled:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mMenu:Lcom/example/android/actionbarcompat/SimpleMenu;

.field private final mOrder:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/example/android/actionbarcompat/SimpleMenu;IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconResId:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mEnabled:Z

    .line 46
    iput-object p1, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mMenu:Lcom/example/android/actionbarcompat/SimpleMenu;

    .line 47
    iput p2, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mId:I

    .line 48
    iput p3, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mOrder:I

    .line 49
    iput-object p4, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 50
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconResId:I

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mMenu:Lcom/example/android/actionbarcompat/SimpleMenu;

    invoke-virtual {v0}, Lcom/example/android/actionbarcompat/SimpleMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mOrder:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0
    .parameter "actionProvider"

    .prologue
    .line 129
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0
    .parameter "i"

    .prologue
    .line 259
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0
    .parameter "view"

    .prologue
    .line 254
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter "c"

    .prologue
    .line 185
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "b"

    .prologue
    .line 195
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "b"

    .prologue
    .line 205
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "enabled"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mEnabled:Z

    .line 108
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "iconResId"

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    iput p1, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconResId:I

    .line 91
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .parameter "icon"

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconResId:I

    .line 84
    iput-object p1, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 160
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter "c"

    .prologue
    .line 175
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "onActionExpandListener"

    .prologue
    .line 155
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "onMenuItemClickListener"

    .prologue
    .line 235
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .parameter "c"
    .parameter "c1"

    .prologue
    .line 170
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 245
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mMenu:Lcom/example/android/actionbarcompat/SimpleMenu;

    invoke-virtual {v0}, Lcom/example/android/actionbarcompat/SimpleMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/android/actionbarcompat/SimpleMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 62
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/example/android/actionbarcompat/SimpleMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 75
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "b"

    .prologue
    .line 215
    return-object p0
.end method
