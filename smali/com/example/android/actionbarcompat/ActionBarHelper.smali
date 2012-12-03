.class public abstract Lcom/example/android/actionbarcompat/ActionBarHelper;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/example/android/actionbarcompat/ActionBarHelper;->mActivity:Landroid/app/Activity;

    .line 54
    return-void
.end method

.method public static createInstance(Landroid/app/Activity;)Lcom/example/android/actionbarcompat/ActionBarHelper;
    .locals 2
    .parameter "activity"

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Lcom/example/android/actionbarcompat/ActionBarHelperICS;

    invoke-direct {v0, p0}, Lcom/example/android/actionbarcompat/ActionBarHelperICS;-><init>(Landroid/app/Activity;)V

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 46
    new-instance v0, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;

    invoke-direct {v0, p0}, Lcom/example/android/actionbarcompat/ActionBarHelperHoneycomb;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/example/android/actionbarcompat/ActionBarHelperBase;

    invoke-direct {v0, p0}, Lcom/example/android/actionbarcompat/ActionBarHelperBase;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;
    .locals 0
    .parameter "superMenuInflater"

    .prologue
    .line 95
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 66
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "title"
    .parameter "color"

    .prologue
    .line 81
    return-void
.end method

.method public abstract setRefreshActionItemState(Z)V
.end method
