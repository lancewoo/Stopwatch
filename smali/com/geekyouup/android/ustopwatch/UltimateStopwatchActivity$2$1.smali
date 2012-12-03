.class Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UltimateStopwatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;

.field private final synthetic val$newMode:I


# direct methods
.method constructor <init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2$1;->this$1:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;

    iput p2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2$1;->val$newMode:I

    .line 191
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 195
    iget v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2$1;->val$newMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2$1;->this$1:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;
    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->access$0(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;)Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->requestTimeDialog()V

    .line 198
    :cond_0
    return-void
.end method
