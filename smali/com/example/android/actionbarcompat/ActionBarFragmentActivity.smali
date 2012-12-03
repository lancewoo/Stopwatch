.class public abstract Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActionBarFragmentActivity.java"


# instance fields
.field final mActionBarHelper:Lcom/example/android/actionbarcompat/ActionBarHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 35
    invoke-static {p0}, Lcom/example/android/actionbarcompat/ActionBarHelper;->createInstance(Landroid/app/Activity;)Lcom/example/android/actionbarcompat/ActionBarHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->mActionBarHelper:Lcom/example/android/actionbarcompat/ActionBarHelper;

    .line 34
    return-void
.end method


# virtual methods
.method protected getActionBarHelper()Lcom/example/android/actionbarcompat/ActionBarHelper;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->mActionBarHelper:Lcom/example/android/actionbarcompat/ActionBarHelper;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->mActionBarHelper:Lcom/example/android/actionbarcompat/ActionBarHelper;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/android/actionbarcompat/ActionBarHelper;->getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->mActionBarHelper:Lcom/example/android/actionbarcompat/ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelper;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->mActionBarHelper:Lcom/example/android/actionbarcompat/ActionBarHelper;

    invoke-virtual {v1, p1}, Lcom/example/android/actionbarcompat/ActionBarHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 75
    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->mActionBarHelper:Lcom/example/android/actionbarcompat/ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "title"
    .parameter "color"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->mActionBarHelper:Lcom/example/android/actionbarcompat/ActionBarHelper;

    invoke-virtual {v0, p1, p2}, Lcom/example/android/actionbarcompat/ActionBarHelper;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 82
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 83
    return-void
.end method
