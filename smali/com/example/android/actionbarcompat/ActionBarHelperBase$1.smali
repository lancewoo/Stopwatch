.class Lcom/example/android/actionbarcompat/ActionBarHelperBase$1;
.super Ljava/lang/Object;
.source "ActionBarHelperBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/actionbarcompat/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/actionbarcompat/ActionBarHelperBase;

.field private final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/example/android/actionbarcompat/ActionBarHelperBase;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$1;->this$0:Lcom/example/android/actionbarcompat/ActionBarHelperBase;

    iput-object p2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$1;->val$item:Landroid/view/MenuItem;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$1;->this$0:Lcom/example/android/actionbarcompat/ActionBarHelperBase;

    iget-object v0, v0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$1;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 204
    return-void
.end method
