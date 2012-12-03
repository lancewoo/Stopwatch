.class public Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;
.super Landroid/support/v4/app/ListFragment;
.source "LapTimesFragment.java"

# interfaces
.implements Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;


# static fields
.field private static final KEY_CURRENT_VIEW:Ljava/lang/String; = "current_view"

.field private static final PREFS_NAME_LAPTIMESFRAG:Ljava/lang/String; = "usw_prefs_laptimesfrag"


# instance fields
.field private mAdapter:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;

.field private mLapTimeRecorder:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

.field private mLapTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimes:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public lapTimesUpdated()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimeRecorder:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getTimes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->notifyDataSetChanged()V

    .line 114
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mAdapter:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;

    invoke-virtual {v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getInstance()Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimeRecorder:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    .line 33
    const-string v0, "USW"

    const-string v1, "LaptimesFragment.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 38
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, v:Landroid/view/View;
    const v1, 0x7f070015

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mViewFlipper:Landroid/widget/ViewFlipper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    const-string v1, "USW"

    const-string v2, "LaptimesFragment.onCreateView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-object v0

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 61
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "usw_prefs_laptimesfrag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, settings:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_0

    const-string v2, "current_view"

    iget-object v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v2, "USW"

    const-string v3, "LaptimesFragment.onPause()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 77
    const-string v1, "USW"

    const-string v2, "LaptimesFragment.onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "usw_prefs_laptimesfrag"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, settings:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimeRecorder:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    invoke-virtual {v2}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getTimes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mAdapter:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->notifyDataSetChanged()V

    .line 86
    const-string v1, "current_view"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->setMode(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 50
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 51
    new-instance v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;

    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimes:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mAdapter:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;

    .line 52
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mAdapter:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    const-string v0, "USW"

    const-string v1, "LaptimesFragment.onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mLapTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mAdapter:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;

    invoke-virtual {v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 107
    :cond_0
    return-void
.end method
