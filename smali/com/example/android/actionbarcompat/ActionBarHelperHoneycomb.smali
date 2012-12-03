.class public Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;
.super Lcom/example/android/actionbarcompat/ActionBarHelper;
.source "ActionBarHelperHoneycomb.java"


# instance fields
.field private mOptionsMenu:Landroid/view/Menu;

.field private mRefreshIndeterminateProgressView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->mRefreshIndeterminateProgressView:Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method protected getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->mOptionsMenu:Landroid/view/Menu;

    .line 43
    invoke-super {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setRefreshActionItemState(Z)V
    .locals 5
    .parameter "refreshing"

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->mOptionsMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lcom/example/android/actionbarcompat/R$id;->menu_refresh:I

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 55
    .local v1, refreshItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 56
    if-eqz p1, :cond_3

    .line 57
    iget-object v2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->mRefreshIndeterminateProgressView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    .line 60
    const-string v3, "layout_inflater"

    .line 59
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v2, Lcom/example/android/actionbarcompat/R$layout;->actionbar_indeterminate_progress:I

    .line 61
    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->mRefreshIndeterminateProgressView:Landroid/view/View;

    .line 65
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;->mRefreshIndeterminateProgressView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0

    .line 67
    :cond_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method
