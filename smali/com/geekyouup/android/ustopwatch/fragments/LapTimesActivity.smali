.class public Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;
.super Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;
.source "LapTimesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;->setContentView(I)V

    .line 18
    sget-boolean v0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->IS_HONEYCOMB_OR_ABOVE:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 23
    :cond_0
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 31
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 32
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 33
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f070020

    if-ne v1, v2, :cond_1

    .line 39
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getInstance()Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->reset(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    .line 42
    .local v0, ltf:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->reset()V

    .line 48
    .end local v0           #ltf:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 43
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;->finish()V

    goto :goto_0
.end method
