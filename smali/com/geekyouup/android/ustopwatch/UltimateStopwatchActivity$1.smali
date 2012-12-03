.class Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;
.super Landroid/os/Handler;
.source "UltimateStopwatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;


# direct methods
.method constructor <init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_usw_counter"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    invoke-virtual {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->requestTimeDialog()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;
    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$0(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_update_counter"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 96
    const-string v2, "msg_new_time_double"

    .line 95
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    #setter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCurrentTimeMillis:D
    invoke-static {v0, v1, v2}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$1(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;D)V

    .line 97
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;
    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$0(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;
    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$0(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCurrentTimeMillis:D
    invoke-static {v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$2(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->setTime(D)V

    goto :goto_0
.end method
