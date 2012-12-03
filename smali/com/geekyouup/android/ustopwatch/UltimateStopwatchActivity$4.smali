.class Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$4;
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


# direct methods
.method constructor <init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$4;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$4;->this$0:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    const/4 v1, 0x0

    #setter for: Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z
    invoke-static {v0, v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->access$4(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;Z)V

    .line 282
    return-void
.end method
