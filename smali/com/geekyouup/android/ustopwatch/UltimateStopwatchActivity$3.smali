.class Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;
.super Ljava/lang/Object;
.source "UltimateStopwatchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->requestAPI11TimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

.field private final synthetic val$npHours:Landroid/widget/NumberPicker;

.field private final synthetic val$npMins:Landroid/widget/NumberPicker;

.field private final synthetic val$npSecs:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    iput-object p2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->val$npHours:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->val$npMins:Landroid/widget/NumberPicker;

    iput-object p4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->val$npSecs:Landroid/widget/NumberPicker;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    const/4 v1, 0x0

    #setter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z
    invoke-static {v0, v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$4(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;Z)V

    .line 271
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->val$npHours:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$5(I)V

    .line 272
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->val$npMins:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$6(I)V

    .line 273
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->val$npSecs:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$7(I)V

    .line 274
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    #getter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;
    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$8(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    move-result-object v0

    invoke-static {}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$9()I

    move-result v1

    .line 275
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$10()I

    move-result v2

    invoke-static {}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$11()I

    move-result v3

    .line 274
    invoke-virtual {v0, v1, v2, v3}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->setTime(III)V

    .line 276
    return-void
.end method
