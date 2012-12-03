.class Lcom/example/android/actionbarcompat/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/actionbarcompat/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/actionbarcompat/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/android/actionbarcompat/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/actionbarcompat/MainActivity$1;->this$0:Lcom/example/android/actionbarcompat/MainActivity;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/example/android/actionbarcompat/MainActivity$1;->this$0:Lcom/example/android/actionbarcompat/MainActivity;

    #getter for: Lcom/example/android/actionbarcompat/MainActivity;->mAlternateTitle:Z
    invoke-static {v0}, Lcom/example/android/actionbarcompat/MainActivity;->access$0(Lcom/example/android/actionbarcompat/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/example/android/actionbarcompat/MainActivity$1;->this$0:Lcom/example/android/actionbarcompat/MainActivity;

    sget v1, Lcom/example/android/actionbarcompat/R$string;->app_name:I

    invoke-virtual {v0, v1}, Lcom/example/android/actionbarcompat/MainActivity;->setTitle(I)V

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/example/android/actionbarcompat/MainActivity$1;->this$0:Lcom/example/android/actionbarcompat/MainActivity;

    iget-object v0, p0, Lcom/example/android/actionbarcompat/MainActivity$1;->this$0:Lcom/example/android/actionbarcompat/MainActivity;

    #getter for: Lcom/example/android/actionbarcompat/MainActivity;->mAlternateTitle:Z
    invoke-static {v0}, Lcom/example/android/actionbarcompat/MainActivity;->access$0(Lcom/example/android/actionbarcompat/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    #setter for: Lcom/example/android/actionbarcompat/MainActivity;->mAlternateTitle:Z
    invoke-static {v1, v0}, Lcom/example/android/actionbarcompat/MainActivity;->access$1(Lcom/example/android/actionbarcompat/MainActivity;Z)V

    .line 42
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/example/android/actionbarcompat/MainActivity$1;->this$0:Lcom/example/android/actionbarcompat/MainActivity;

    sget v1, Lcom/example/android/actionbarcompat/R$string;->alternate_title:I

    invoke-virtual {v0, v1}, Lcom/example/android/actionbarcompat/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
