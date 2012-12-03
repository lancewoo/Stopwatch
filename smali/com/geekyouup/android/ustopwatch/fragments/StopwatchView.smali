.class public Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;
.super Landroid/view/SurfaceView;
.source "StopwatchView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRestoreState:Landroid/content/SharedPreferences;

.field private sHolder:Landroid/view/SurfaceHolder;

.field private thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 527
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 529
    const-string v0, "USW"

    const-string v1, "New StopwatchView instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->mContext:Landroid/content/Context;

    .line 534
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->sHolder:Landroid/view/SurfaceHolder;

    .line 535
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->sHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 538
    invoke-virtual {p0, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->setFocusableInTouchMode(Z)V

    .line 539
    invoke-virtual {p0, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->setFocusable(Z)V

    .line 540
    return-void
.end method


# virtual methods
.method public createNewThread()Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    if-nez v0, :cond_0

    new-instance v0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->sHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;-><init>(Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;Landroid/view/SurfaceHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 554
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    return-object v0
.end method

.method public getThread()Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 564
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v1, p1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->doKeypress(I)Z

    move-result v0

    .line 565
    .local v0, consumed:Z
    if-nez v0, :cond_0

    .line 566
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 568
    .end local v0           #consumed:Z
    :cond_0
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v0, p1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->doTrackBall(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 620
    const-string v0, "USW"

    const-string v1, "Restore state received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->mRestoreState:Landroid/content/SharedPreferences;

    .line 622
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v0, p3, p4}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setSurfaceSize(II)V

    .line 574
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 583
    const-string v1, "USW"

    const-string v2, "Surface Created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->createNewThread()Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setRunning(Z)V

    .line 587
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->start()V

    .line 589
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->mRestoreState:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->mRestoreState:Landroid/content/SharedPreferences;

    #calls: Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->restoreState(Landroid/content/SharedPreferences;)V
    invoke-static {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->access$0(Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "USW"

    const-string v2, "StopwatchView error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 603
    const-string v1, "USW"

    const-string v2, "Surface DESTORYED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, 0x1

    .line 608
    .local v0, retry:Z
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setRunning(Z)V

    .line 609
    :goto_0
    if-nez v0, :cond_0

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    .line 617
    return-void

    .line 611
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;->thread:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v1

    goto :goto_0
.end method
