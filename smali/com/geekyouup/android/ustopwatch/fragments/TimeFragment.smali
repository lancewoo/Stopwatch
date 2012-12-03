.class public Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;
.super Landroid/support/v4/app/Fragment;
.source "TimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCounter:Landroid/widget/TextView;

.field private mCurrentTimeMillis:D

.field private mLapTimer:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

.field private mMode:I

.field private mSaveText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCurrentTimeMillis:D

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mMode:I

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 50
    iget v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mLapTimer:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mLapTimer:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    iget-wide v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCurrentTimeMillis:D

    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->recordLapTime(DLandroid/content/Context;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 25
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, timeView:Landroid/view/View;
    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCounter:Landroid/widget/TextView;

    .line 27
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCounter:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_0
    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mSaveText:Landroid/widget/TextView;

    .line 31
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getInstance()Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mLapTimer:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    .line 33
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-object v0
.end method

.method public resetTime()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCounter:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->createTimeString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 58
    iput p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mMode:I

    .line 59
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mSaveText:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setTime(D)V
    .locals 2
    .parameter "time"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCurrentTimeMillis:D

    .line 40
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->mCounter:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->createTimeString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    return-void
.end method
