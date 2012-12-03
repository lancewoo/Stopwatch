.class public Lcom/example/android/actionbarcompat/ActionBarHelperICS;
.super Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;
.source "ActionBarHelperICS.java"


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;-><init>(Landroid/app/Activity;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarHelperICS;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
