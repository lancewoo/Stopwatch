.class public Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;
.super Landroid/support/v4/app/Fragment;
.source "StopwatchFragment.java"


# static fields
.field public static final MODE_COUNTDOWN:I = 0x1

.field public static final MODE_STOPWATCH:I = 0x0

.field private static final PREFS_NAME:Ljava/lang/String; = "USW_SWFRAG_PREFS"


# instance fields
.field private mApp:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

.field private mHandler:Landroid/os/Handler;

.field private mResetButton:Landroid/widget/ImageView;

.field private mStopwatchView:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;

.field private mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, mode:I
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 34
    const-string v1, "USW"

    const-string v2, "StopwatchFragment: onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, swView:Landroid/view/View;
    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mStopwatchView:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;

    .line 38
    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mResetButton:Landroid/widget/ImageView;

    .line 39
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mResetButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment$1;

    invoke-direct {v2, p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment$1;-><init>(Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mStopwatchView:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->getThread()Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    move-result-object v1

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    .line 47
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 81
    const-string v0, "USW"

    const-string v1, "StopwatchFragment: onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 53
    const-string v2, "USW"

    const-string v3, "onPause StopwatchFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "USW_SWFRAG_PREFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v2, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->saveState(Landroid/content/SharedPreferences$Editor;)V

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 70
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mStopwatchView:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->createNewThread()Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    move-result-object v1

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    .line 71
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mApp:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mApp:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    invoke-virtual {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setApplication(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setHandler(Landroid/os/Handler;)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "USW_SWFRAG_PREFS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "USW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resume settings has state set to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mStopwatchView:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;

    invoke-virtual {v1, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->restoreState(Landroid/content/SharedPreferences;)V

    .line 76
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 63
    const-string v0, "USW"

    const-string v1, "onStop StopwatchFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->reset()V

    .line 93
    return-void
.end method

.method public setApplication(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mApp:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    .line 118
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v0, p1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setApplication(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mHandler:Landroid/os/Handler;

    .line 124
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v0, p1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setHandler(Landroid/os/Handler;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setIsStopwatchMode(Z)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTime(III)V
    .locals 1
    .parameter "hour"
    .parameter "minute"
    .parameter "seconds"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setTime(III)V

    .line 113
    return-void
.end method

.method public startStop()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->mWatchThread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->startStop()V

    .line 88
    return-void
.end method
