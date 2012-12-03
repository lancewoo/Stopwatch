.class Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment$1;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment$1;->this$0:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment$1;->this$0:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    invoke-virtual {v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->reset()V

    .line 43
    return-void
.end method
