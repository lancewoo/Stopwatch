.class Lcom/geekyouup/android/ustopwatch/TimeUtils$6;
.super Ljava/lang/Object;
.source "TimeUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geekyouup/android/ustopwatch/TimeUtils;->createTimeSelectDialogLayout(Landroid/content/Context;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mMinsText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/TimeUtils$6;->val$mMinsText:Landroid/widget/TextView;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 138
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->access$4()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->access$1(I)V

    .line 139
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/TimeUtils$6;->val$mMinsText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->access$4()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
