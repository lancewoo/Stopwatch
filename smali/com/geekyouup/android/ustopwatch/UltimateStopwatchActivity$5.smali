.class Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$5;
.super Ljava/lang/Object;
.source "UltimateStopwatchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->requestPreAPI11TimeDialog()V
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
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$5;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$5;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    const/4 v1, 0x0

    #setter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z
    invoke-static {v0, v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$4(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;Z)V

    .line 311
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->getDlgHours()I

    move-result v0

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$5(I)V

    .line 312
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->getDlgMins()I

    move-result v0

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$6(I)V

    .line 313
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->getDlgSecs()I

    move-result v0

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$7(I)V

    .line 314
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$5;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;
    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$8(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    move-result-object v0

    invoke-static {}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$9()I

    move-result v1

    .line 315
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$10()I

    move-result v2

    invoke-static {}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$11()I

    move-result v3

    .line 314
    invoke-virtual {v0, v1, v2, v3}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->setTime(III)V

    .line 316
    return-void
.end method
