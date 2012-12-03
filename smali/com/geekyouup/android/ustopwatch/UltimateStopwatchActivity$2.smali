.class Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UltimateStopwatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

.field private final synthetic val$newMode:I


# direct methods
.method constructor <init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    iput p2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->val$newMode:I

    .line 183
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;)Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 187
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;
    invoke-static {v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$3(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    move-result-object v1

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->val$newMode:I

    invoke-virtual {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->setMode(I)V

    .line 188
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;
    invoke-static {v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$3(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rotationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 189
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 191
    .local v0, oa2:Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2$1;

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;->val$newMode:I

    invoke-direct {v1, p0, v2}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2$1;-><init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 201
    return-void

    .line 188
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xb4t 0xc2t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
